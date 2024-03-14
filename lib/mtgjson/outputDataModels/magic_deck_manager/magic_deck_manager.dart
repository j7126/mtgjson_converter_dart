import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/searchable_all_set_cards.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/searchable_card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/set.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void magicDeckManagerAllCards(AllSets allSets) async {
  if (!(Platform.isAndroid || Platform.isIOS || Platform.isMacOS)) {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  // searchable json
  var outputSearchableFile = File("./cards_searchable.json");

  List<CardSet> cards = [];
  for (var set in allSets.data.values) {
    for (var card in set.cards) {
      if (card.isOnlineOnly != true && card.language == "English") {
        cards.add(card);
      }
    }
  }

  var cardNames = groupBy<CardSet, String>(cards, (card) => card.name).entries.map((e) => e.key);

  var outputDataModel = SearchableJsonAllSetCards(cardNames
      .map((e) => SearchableJsonCardSet(
            name: e,
          ))
      .toList());

  var result = jsonEncode(outputDataModel);
  outputSearchableFile.writeAsStringSync(result);

  // sqlite
  // delete db file if it exists
  var dbfilename = join(Directory.current.path, "cards.sqlite");
  var dbfile = File(dbfilename);
  if (await dbfile.exists()) {
    await dbfile.delete();
  }

  var db = await openDatabase(
    dbfilename,
    onCreate: (db, version) async {
      await db.execute(
        """CREATE TABLE set_cards(
          uuid TEXT PRIMARY KEY,
          name TEXT,
          borderColor TEXT,
          colorIdentity TEXT,
          colors TEXT,
          finishes TEXT,
          frameVersion TEXT,
          language TEXT,
          layout TEXT,
          manaValue DOUBLE,
          manaCost TEXT,
          rarity TEXT,
          setCode TEXT,
          subtypes TEXT,
          supertypes TEXT,
          type TEXT,
          types TEXT,
          text TEXT,
          power TEXT,
          toughness TEXT
        )""",
      );
      await db.execute(
        """CREATE TABLE identifiers(
          uuid TEXT PRIMARY KEY,
          scryfallId TEXT,
          scryfallOracleId TEXT,
          scryfallIllustrationId TEXT
        )""",
      );
      await db.execute(
        """CREATE TABLE sets(
          baseSetSize INTEGER,
          code TEXT,
          isFoilOnly INTEGER,
          keyruneCode TEXT,
          name TEXT,
          releaseDate TEXT,
          totalSetSize INTEGER,
          type TEXT
        )""",
      );
    },
    version: 1,
  );

  var batch = db.batch();

  for (var c in cards) {
    var card = MagicDeckManagerCardSet.fromCardSet(c);
    var cardData = card.toJson();

    cardData.remove("identifiers");

    cardData["colorIdentity"] = card.colorIdentity.join(", ");
    cardData["colors"] = card.colors.join(", ");
    cardData["finishes"] = card.finishes.join(", ");
    cardData["subtypes"] = card.subtypes.join(", ");
    cardData["supertypes"] = card.supertypes.join(", ");
    cardData["types"] = card.types.join(", ");

    batch.insert("set_cards", cardData);
    batch.insert("identifiers", {
      "uuid": card.uuid,
      "scryfallId": card.identifiers.scryfallId,
      "scryfallOracleId": card.identifiers.scryfallOracleId,
      "scryfallIllustrationId": card.identifiers.scryfallIllustrationId,
    });
  }

  for (var set in allSets.data.values) {
    if (!set.isOnlineOnly && !(set.isForeignOnly ?? false)) {
      batch.insert("sets", MagicDeckManagerSet.fromMtgSet(set).toJson());
    }
  }

  await batch.commit();

  await db.close();
}
