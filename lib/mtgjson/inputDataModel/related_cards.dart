import 'package:json_annotation/json_annotation.dart';

part 'related_cards.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedCards {
  RelatedCards(
    this.reverseRelated,
    this.spellbook,
  );

  List<String>? reverseRelated;
  List<String>? spellbook;

  factory RelatedCards.fromJson(Map<String, dynamic> json) => _$RelatedCardsFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedCardsToJson(this);
}
