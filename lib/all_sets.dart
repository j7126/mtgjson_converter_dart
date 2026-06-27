import 'dart:convert';
import 'dart:io';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set_list_all_sets.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_protobuf/magic_life_wheel_protobuf.dart' as magic_life_wheel_protobuf;

void info() {
  getAllSets();
}

SetListAllSets getAllSets() {
  var inputFile = File("./SetList.json");
  var jsonString = inputFile.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);
  var allSets = SetListAllSets.fromJson(json);
  print("Date: ${allSets.meta.date}");
  print("Version: ${allSets.meta.version}");
  return allSets;
}

void magicLifeWheelAllSets() {
  var allSets = getAllSets();
  magic_life_wheel_protobuf.magicLifeWheelSetList(allSets);
}
