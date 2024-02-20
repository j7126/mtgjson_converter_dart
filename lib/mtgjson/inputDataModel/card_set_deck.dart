import 'package:json_annotation/json_annotation.dart';

part 'card_set_deck.g.dart';

@JsonSerializable(explicitToJson: true)
class CardSetDeck {
  CardSetDeck({
    required this.count,
    this.isFoil,
    required this.uuid,
  });

  int count;
  bool? isFoil;
  String uuid;

  factory CardSetDeck.fromJson(Map<String, dynamic> json) => _$CardSetDeckFromJson(json);

  Map<String, dynamic> toJson() => _$CardSetDeckToJson(this);
}
