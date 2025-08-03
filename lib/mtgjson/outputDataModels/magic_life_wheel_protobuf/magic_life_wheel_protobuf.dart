import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/all_set_cards.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/card_set_searchable.dart';

void magicLifeWheelAllCards(AllSets allSets) {
  var outputFileJson = File("./all_cards.json");
  var outputFileBinary = File("./all_cards.bin");

  List<CardSet> cards = [];
  for (var set in allSets.data.values) {
    for (var card in set.cards) {
      if (card.isOnlineOnly != true && card.language == "English") {
        cards.add(card);
      }
    }
  }

  var outputDataModel = MagicLifeWheelProtobufAllSetCards(
    data: cards.map(MagicLifeWheelProtobufCardSetSearchable.build).toList(),
  );

  outputFileJson.writeAsStringSync(outputDataModel.writeToJson());
  outputFileBinary.writeAsBytes(outputDataModel.writeToBuffer());
}
