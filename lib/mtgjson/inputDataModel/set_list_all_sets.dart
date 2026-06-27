import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/json_meta.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set_list_set.dart';

part 'set_list_all_sets.g.dart';

@JsonSerializable(explicitToJson: true)
class SetListAllSets {
  SetListAllSets(
    this.meta,
    this.data,
  );

  JsonMeta meta;
  List<SetListSet> data;

  factory SetListAllSets.fromJson(Map<String, dynamic> json) => _$SetListAllSetsFromJson(json);
}
