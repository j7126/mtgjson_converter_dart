import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/set.dart';

part 'set.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicDeckManagerSet {
  MagicDeckManagerSet({
    required this.baseSetSize,
    required this.code,
    required this.isFoilOnly,
    required this.keyruneCode,
    required this.name,
    required this.releaseDate,
    required this.totalSetSize,
    required this.type,
  });

  int baseSetSize;
  String code;
  bool isFoilOnly;
  String keyruneCode;
  String name;
  String releaseDate;
  int totalSetSize;
  String type;

    factory MagicDeckManagerSet.fromMtgSet(MtgSet set) {
    return MagicDeckManagerSet(
      baseSetSize: set.baseSetSize,
      code: set.code,
      isFoilOnly: set.isFoilOnly,
      keyruneCode: set.keyruneCode,
      name: set.name,
      releaseDate: set.releaseDate,
      totalSetSize: set.totalSetSize,
      type: set.type,
    );
  }

  factory MagicDeckManagerSet.fromJson(Map<String, dynamic> json) => _$MagicDeckManagerSetFromJson(json);

  Map<String, dynamic> toJson() => _$MagicDeckManagerSetToJson(this);
}
