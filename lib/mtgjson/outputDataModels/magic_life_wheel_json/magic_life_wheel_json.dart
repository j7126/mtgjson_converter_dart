import 'dart:convert';
import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
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
            types: e.types,
            subtypes: e.subtypes,
            supertypes: e.supertypes,
            leadershipSkills: e.leadershipSkills,
            keywords: e.keywords,
            text: e.types.contains("Plane") ? e.text : null,
          ))
      .toList());

  var result = jsonEncode(outputDataModel);
  outputFile.writeAsStringSync(result);
}
