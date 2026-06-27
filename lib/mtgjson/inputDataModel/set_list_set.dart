import 'package:json_annotation/json_annotation.dart';

part 'set_list_set.g.dart';

@JsonSerializable(explicitToJson: true)
class SetListSet {
  SetListSet({
    required this.code,
    required this.name,
    required this.releaseDate,
  });

  String code;
  String name;
  String releaseDate;

  factory SetListSet.fromJson(Map<String, dynamic> json) => _$SetListSetFromJson(json);

  Map<String, dynamic> toJson() => _$SetListSetToJson(this);
}
