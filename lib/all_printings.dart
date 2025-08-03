import 'dart:convert';
import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/magic_life_wheel_protobuf.dart' as magic_life_wheel_protobuf;
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/magic_deck_manager.dart' as magic_deck_manager;

void info() {
  getAllSets();
}

AllSets getAllSets() {
  var inputFile = File("./AllPrintings.json");
  var jsonString = inputFile.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);
  var allSets = AllSets.fromJson(json);
  print("Date: ${allSets.meta.date}");
  print("Version: ${allSets.meta.version}");
  return allSets;
}

void magicLifeWheelAllCards() {
  var allSets = getAllSets();
  magic_life_wheel_protobuf.magicLifeWheelAllCards(allSets);
}

void magicDeckManagerAllCards() {
  var allSets = getAllSets();
  magic_deck_manager.magicDeckManagerAllCards(allSets);
}
