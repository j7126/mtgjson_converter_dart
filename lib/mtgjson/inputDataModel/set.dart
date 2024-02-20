import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_set.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/card_token.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/deck_set.dart';

part 'set.g.dart';

@JsonSerializable(explicitToJson: true)
class MtgSet {
  MtgSet({
    required this.baseSetSize,
    this.block,
    required this.cards,
    this.cardsphereSetId,
    required this.code,
    required this.decks,
    this.isForeignOnly,
    required this.isFoilOnly,
    this.isNonFoilOnly,
    required this.isOnlineOnly,
    this.isPaperOnly,
    this.isPartialPreview,
    required this.keyruneCode,
    this.languages,
    this.mcmId,
    this.mcmIdExtras,
    this.mcmName,
    this.mtgoCode,
    required this.name,
    this.parentCode,
    required this.releaseDate,
    this.tcgplayerGroupId,
    required this.tokens,
    this.tokenSetCode,
    required this.totalSetSize,
    required this.type,
  });

  int baseSetSize;
  String? block;
  List<CardSet> cards;
  int? cardsphereSetId;
  String code;
  List<DeckSet>? decks;
  bool? isForeignOnly;
  bool isFoilOnly;
  bool? isNonFoilOnly;
  bool isOnlineOnly;
  bool? isPaperOnly;
  bool? isPartialPreview;
  String keyruneCode;
  List<String>? languages;
  int? mcmId;
  int? mcmIdExtras;
  String? mcmName;
  String? mtgoCode;
  String name;
  String? parentCode;
  String releaseDate;
  int? tcgplayerGroupId;
  List<CardToken> tokens;
  String? tokenSetCode;
  int totalSetSize;
  String type;

  factory MtgSet.fromJson(Map<String, dynamic> json) => _$MtgSetFromJson(json);

  Map<String, dynamic> toJson() => _$MtgSetToJson(this);
}
