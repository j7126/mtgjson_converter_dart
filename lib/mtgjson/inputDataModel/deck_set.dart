import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set_deck.dart';

part 'deck_set.g.dart';

@JsonSerializable(explicitToJson: true)
class DeckSet {
  DeckSet({
    required this.code,
    required this.commander,
    required this.mainBoard,
    required this.name,
    this.releaseDate,
    this.sealedProductUuids,
    required this.sideBoard,
    required this.type,
  });

  String code;
  List<CardSetDeck> commander;
  List<CardSetDeck> mainBoard;
  String name;
  String? releaseDate;
  List<String>? sealedProductUuids;
  List<CardSetDeck> sideBoard;
  String type;

  factory DeckSet.fromJson(Map<String, dynamic> json) => _$DeckSetFromJson(json);

  Map<String, dynamic> toJson() => _$DeckSetToJson(this);
}
