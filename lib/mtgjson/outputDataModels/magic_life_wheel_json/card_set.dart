import 'package:json_annotation/json_annotation.dart';
import 'package:string_normalizer/string_normalizer.dart';
import 'identifiers.dart';

part 'card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicLifeWheelJsonCardSet {
  MagicLifeWheelJsonCardSet({
    required this.name,
    required this.uuid,
    required this.setCode,
    required this.identifiers,
    required this.artist,
  }) {
    cardSearchString = filterStringForSearch(name);
    cardSearchStringWords = cardSearchString.split(' ');
  }

  String name;
  String uuid;
  String setCode;
  String? artist;
  MagicLifeWheelJsonIdentifiers identifiers;

  late String cardSearchString;
  late List<String> cardSearchStringWords;

  factory MagicLifeWheelJsonCardSet.fromJson(Map<String, dynamic> json) => _$MagicLifeWheelJsonCardSetFromJson(json);

  Map<String, dynamic> toJson() => _$MagicLifeWheelJsonCardSetToJson(this);

  static RegExp cardSearchStringFilterEmptyRegex = RegExp('[\']');
  static RegExp cardSearchStringFilterSpaceRegex = RegExp('[-,. ]+');

  static String filterStringForSearch(String str) {
    str = str.toLowerCase().normalize();
    str = str.replaceAll(cardSearchStringFilterEmptyRegex, '');
    str = str.replaceAll(cardSearchStringFilterSpaceRegex, ' ');
    return str;
  }
}
