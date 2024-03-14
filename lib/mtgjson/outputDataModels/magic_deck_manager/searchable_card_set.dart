import 'package:json_annotation/json_annotation.dart';
import 'package:string_normalizer/string_normalizer.dart';

part 'searchable_card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchableJsonCardSet {
  SearchableJsonCardSet({
    required this.name,
  }) {
    cardSearchString = filterStringForSearch(name);
    cardSearchStringWords = cardSearchString.split(' ');
  }

  String name;

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
