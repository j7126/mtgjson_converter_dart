import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/leadership_skills.dart';
import 'package:string_normalizer/string_normalizer.dart';

part 'searchable_card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchableJsonCardSet {
  SearchableJsonCardSet({
    required this.name,
    required this.types,
    required this.subtypes,
    required this.supertypes,
    required this.colorIdentity,
    this.leadershipSkills,
    this.keywords,
  }) {
    cardSearchString = filterStringForSearch(name);
    cardSearchStringWords = cardSearchString.split(' ');
  }

  String name;
  List<String> types;
  List<String> subtypes;
  List<String> supertypes;
  List<String> colorIdentity;
  LeadershipSkills? leadershipSkills;
  List<String>? keywords;

  late String cardSearchString;
  late List<String> cardSearchStringWords;

  factory SearchableJsonCardSet.fromJson(Map<String, dynamic> json) => _$SearchableJsonCardSetFromJson(json);

  Map<String, dynamic> toJson() => _$SearchableJsonCardSetToJson(this);

  static RegExp cardSearchStringFilterEmptyRegex = RegExp('[\']');
  static RegExp cardSearchStringFilterSpaceRegex = RegExp('[-,. ]+');

  static String filterStringForSearch(String str) {
    str = str.toLowerCase().normalize();
    str = str.replaceAll(cardSearchStringFilterEmptyRegex, '');
    str = str.replaceAll(cardSearchStringFilterSpaceRegex, ' ');
    return str;
  }
}
