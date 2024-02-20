import 'dart:convert';
import 'dart:io';

import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/all_sets.dart';

void allPrintings() {
  var file = File("./AllPrintings.json");
  var jsonString = file.readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);
  var allSetCards = AllSets.fromJson(json);
  print(allSetCards.meta.date);
}
