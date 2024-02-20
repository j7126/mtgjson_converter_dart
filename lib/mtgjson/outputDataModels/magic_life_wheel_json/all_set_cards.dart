import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_life_wheel_json/card_set.dart';

part 'all_set_cards.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicLifeWheelJsonAllSetCards {
  MagicLifeWheelJsonAllSetCards(this.data);

  List<MagicLifeWheelJsonCardSet> data;

  factory MagicLifeWheelJsonAllSetCards.fromJson(Map<String, dynamic> json) => _$MagicLifeWheelJsonAllSetCardsFromJson(json);

  Map<String, dynamic> toJson() => _$MagicLifeWheelJsonAllSetCardsToJson(this);
}
