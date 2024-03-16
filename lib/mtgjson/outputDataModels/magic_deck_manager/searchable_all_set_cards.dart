import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/json_meta.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/searchable_card_set.dart';

part 'searchable_all_set_cards.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchableJsonAllSetCards {
  SearchableJsonAllSetCards(this.data, this.meta);

  List<SearchableJsonCardSet> data;
  
  JsonMeta meta;

  factory SearchableJsonAllSetCards.fromJson(Map<String, dynamic> json) => _$SearchableJsonAllSetCardsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchableJsonAllSetCardsToJson(this);
}
