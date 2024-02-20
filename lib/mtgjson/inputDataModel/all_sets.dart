import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/json_meta.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set.dart';

part 'all_sets.g.dart';

@JsonSerializable(explicitToJson: true)
class AllSets {
  AllSets(
    this.meta,
    this.data,
  );

  JsonMeta meta;
  Map<String, MtgSet> data;

  factory AllSets.fromJson(Map<String, dynamic> json) => _$AllSetsFromJson(json);
}
