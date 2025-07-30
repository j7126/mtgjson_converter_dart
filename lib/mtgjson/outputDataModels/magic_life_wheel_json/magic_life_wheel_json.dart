import 'dart:convert';
import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/leadership_skills.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/all_set_cards.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/identifiers.dart';

void magicLifeWheelAllCards(AllSets allSets) {
  var outputFile = File("./all_cards.json");

  List<CardSet> cards = [];
  for (var set in allSets.data.values) {
    for (var card in set.cards) {
      if (card.isOnlineOnly != true && card.language == "English") {
        cards.add(card);
      }
    }
  }

  var outputDataModel = MagicLifeWheelJsonAllSetCards(cards.map((e) {
    e.leadershipSkills = LeadershipSkills(
      brawl: e.leadershipSkills?.brawl ?? false,
      commander: (e.leadershipSkills?.commander ?? false) ||
          (e.supertypes.contains("Legendary") &&
              (e.subtypes.contains("Spacecraft") || e.subtypes.contains("Vehicle")) &&
              e.toughness != null &&
              e.power != null &&
              (e.side == null || e.side == "a")),
      oathbreaker: e.leadershipSkills?.oathbreaker ?? false,
    );
    if (e.leadershipSkills != null &&
        !e.leadershipSkills!.brawl &&
        !e.leadershipSkills!.commander &&
        !e.leadershipSkills!.oathbreaker) {
      e.leadershipSkills = null;
    }
    return MagicLifeWheelJsonCardSet(
      artist: e.artist,
      identifiers: MagicLifeWheelJsonIdentifiers(
        scryfallId: e.identifiers.scryfallId,
        scryfallOracleId: e.identifiers.scryfallOracleId,
        scryfallIllustrationId: e.identifiers.scryfallIllustrationId,
      ),
      name: e.name,
      setCode: e.setCode,
      uuid: e.uuid,
      types: e.types,
      subtypes: e.subtypes,
      leadershipSkills: e.leadershipSkills,
      keywords: e.keywords,
      text: e.types.contains("Plane") ? e.text : null,
      flavorName: e.flavorName,
      isFunny: e.isFunny == true ? true : null,
    );
  }).toList());

  var result = jsonEncode(outputDataModel);
  outputFile.writeAsStringSync(result);
}
