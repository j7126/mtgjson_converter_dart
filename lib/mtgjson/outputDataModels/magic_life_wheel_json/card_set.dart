import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/leadership_skills.dart';
import 'package:string_normalizer/string_normalizer.dart';
import 'identifiers.dart';

part 'card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicLifeWheelJsonCardSet {
  MagicLifeWheelJsonCardSet({
    required this.name,
    required this.uuid,
    required this.setCode,
    required this.artist,
    required this.identifiers,
    required this.types,
    required this.subtypes,
    required this.supertypes,
    this.leadershipSkills,
    this.keywords,
    this.text,
    this.flavorName,
  }) {
    cardSearchString = filterStringForSearch(name);
    cardSearchStringWords = cardSearchString.split(' ');
    if (flavorName != null) {
      cardSearchStringAlt = filterStringForSearch(flavorName!);
      cardSearchStringWordsAlt = cardSearchStringAlt!.split(' ');
    }
  }

  String name;
  String uuid;
  String setCode;
  String? artist;
  MagicLifeWheelJsonIdentifiers identifiers;
  List<String> types;
  List<String> subtypes;
  List<String> supertypes;
  LeadershipSkills? leadershipSkills;
  List<String>? keywords;
  String? text;
  String? flavorName;

  late String cardSearchString;
  late List<String> cardSearchStringWords;
  String? cardSearchStringAlt;
  List<String>? cardSearchStringWordsAlt;

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
