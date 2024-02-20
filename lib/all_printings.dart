import 'dart:convert';
import 'dart:io';

import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/all_set_cards.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/identifiers.dart';

void info() {
  var file = File("./AllPrintings.json");
  var jsonString = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);
  var allSetCards = AllSets.fromJson(json);
  print("Date: ${allSetCards.meta.date}");
  print("Version: ${allSetCards.meta.version}");
}

void magicLifeWheelAllCards() {
  var inputFile = File("./AllPrintings.json");
  var jsonString = inputFile.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);
  var allSets = AllSets.fromJson(json);
  print("Date: ${allSets.meta.date}");
  print("Version: ${allSets.meta.version}");

  var outputFile = File("./all_cards.json");

  List<CardSet> cards = [];
  for (var set in allSets.data.values) {
    for (var card in set.cards) {
      if (card.isOnlineOnly != true && card.language == "English") {
        cards.add(card);
      }
    }
  }

  var outputDataModel = MagicLifeWheelJsonAllSetCards(cards
      .map((e) => MagicLifeWheelJsonCardSet(
            artist: e.artist,
            identifiers: MagicLifeWheelJsonIdentifiers(
              scryfallId: e.identifiers.scryfallId,
              scryfallOracleId: e.identifiers.scryfallOracleId,
              scryfallIllustrationId: e.identifiers.scryfallIllustrationId,
            ),
            name: e.name,
            setCode: e.setCode,
            uuid: e.uuid,
          ))
      .toList());

  var result = jsonEncode(outputDataModel);
  outputFile.writeAsStringSync(result);
}
