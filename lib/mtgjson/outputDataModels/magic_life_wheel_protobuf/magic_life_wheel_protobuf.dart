import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set_list_all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/all_set_cards.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/card_set_searchable.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/set.pb.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/generated/sets.pb.dart';

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

void magicLifeWheelSetList(SetListAllSets allSets) {
  var outputFileJson = File("./set_list.json");
  var outputFileBinary = File("./set_list.bin");

  var outputDataModel = SetList(
    sets: allSets.data
        .map((e) => SetListSet(
              code: e.code,
              name: e.name,
              releaseDate: e.releaseDate,
            ))
        .toList(),
  );

  outputFileJson.writeAsStringSync(outputDataModel.writeToJson());
  outputFileBinary.writeAsBytes(outputDataModel.writeToBuffer());
}
