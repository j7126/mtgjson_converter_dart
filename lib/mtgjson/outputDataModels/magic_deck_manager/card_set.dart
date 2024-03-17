import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/outputDataModels/magic_deck_manager/identifiers.dart';

part 'card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicDeckManagerCardSet {
  MagicDeckManagerCardSet({
    required this.name,
    required this.identifiers,
    required this.borderColor,
    required this.colorIdentity,
    required this.colors,
    required this.finishes,
    required this.frameVersion,
    this.keywords,
    required this.language,
    required this.layout,
    this.loyalty,
    this.manaValue,
    this.manaCost,
    this.rarity,
    required this.setCode,
    required this.subtypes,
    required this.supertypes,
    required this.type,
    required this.types,
    this.text,
    this.power,
    this.toughness,
    required this.uuid,
  });

  String name;
  MagicDeckManagerJsonIdentifiers identifiers;
  String borderColor;
  List<String> colorIdentity;
  List<String> colors;
  List<String> finishes;
  String frameVersion;
  List<String>? keywords;
  String language;
  String layout;
  String? loyalty;
  double? manaValue;
  String? manaCost;
  String? rarity;
  String setCode;
  List<String> subtypes;
  List<String> supertypes;
  String type;
  List<String> types;
  String? text;
  String? power;
  String? toughness;
  String uuid;

  factory MagicDeckManagerCardSet.fromCardSet(CardSet cardSet) {
    return MagicDeckManagerCardSet(
      name: cardSet.name,
      identifiers: MagicDeckManagerJsonIdentifiers(
        scryfallId: cardSet.identifiers.scryfallId,
        scryfallIllustrationId: cardSet.identifiers.scryfallIllustrationId,
        scryfallOracleId: cardSet.identifiers.scryfallOracleId,
      ),
      borderColor: cardSet.borderColor,
      colorIdentity: cardSet.colorIdentity,
      colors: cardSet.colors,
      finishes: cardSet.finishes,
      frameVersion: cardSet.frameVersion,
      keywords: cardSet.keywords,
      language: cardSet.language,
      layout: cardSet.layout,
      loyalty: cardSet.loyalty,
      manaValue: cardSet.manaValue,
      manaCost: cardSet.manaCost,
      rarity: cardSet.rarity,
      setCode: cardSet.setCode,
      subtypes: cardSet.subtypes,
      supertypes: cardSet.supertypes,
      type: cardSet.type,
      types: cardSet.types,
      text: cardSet.text,
      power: cardSet.power,
      toughness: cardSet.toughness,
      uuid: cardSet.uuid,
    );
  }

  factory MagicDeckManagerCardSet.fromJson(Map<String, dynamic> json) => _$MagicDeckManagerCardSetFromJson(json);

  Map<String, dynamic> toJson() => _$MagicDeckManagerCardSetToJson(this);
}
