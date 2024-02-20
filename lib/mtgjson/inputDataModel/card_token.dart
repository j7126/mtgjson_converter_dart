import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/related_cards.dart';
import 'identifiers.dart';

part 'card_token.g.dart';

@JsonSerializable(explicitToJson: true)
class CardToken {
  CardToken({
    this.artist,
    this.artistIds,
    this.asciiName,
    required this.availability,
    this.boosterTypes,
    required this.borderColor,
    this.cardParts,
    required this.colorIdentity,
    this.colorIndicator,
    required this.colors,
    this.faceName,
    this.faceFlavorName,
    required this.finishes,
    this.flavorText,
    this.frameEffects,
    required this.frameVersion,
    required this.hasFoil,
    required this.hasNonFoil,
    required this.identifiers,
    this.isFullArt,
    this.isFunny,
    this.isOnlineOnly,
    this.isPromo,
    this.isReprint,
    this.isTextless,
    this.keywords,
    required this.language,
    required this.layout,
    this.loyalty,
    required this.name,
    required this.number,
    this.orientation,
    this.originalText,
    this.originalType,
    this.otherFaceIds,
    this.power,
    this.promoTypes,
    this.relatedCards,
    this.reverseRelated,
    this.securityStamp,
    required this.setCode,
    this.side,
    this.signature,
    this.sourceProducts,
    this.subsets,
    required this.subtypes,
    required this.supertypes,
    this.text,
    this.toughness,
    required this.type,
    required this.types,
    required this.uuid,
    this.watermark,
  });

  String? artist;
  List<String>? artistIds;
  String? asciiName;
  List<String> availability;
  List<String>? boosterTypes;
  String borderColor;
  List<String>? cardParts;
  List<String> colorIdentity;
  List<String>? colorIndicator;
  List<String> colors;
  String? faceName;
  String? faceFlavorName;
  List<String> finishes;
  String? flavorText;
  List<String>? frameEffects;
  String frameVersion;
  bool hasFoil;
  bool hasNonFoil;
  Identifiers identifiers;
  bool? isFullArt;
  bool? isFunny;
  bool? isOnlineOnly;
  bool? isPromo;
  bool? isReprint;
  bool? isTextless;
  List<String>? keywords;
  String language;
  String layout;
  String? loyalty;
  String name;
  String number;
  String? orientation;
  String? originalText;
  String? originalType;
  List<String>? otherFaceIds;
  String? power;
  List<String>? promoTypes;
  RelatedCards? relatedCards;
  List<String>? reverseRelated;
  String? securityStamp;
  String setCode;
  String? side;
  String? signature;
  List<String>? sourceProducts;
  List<String>? subsets;
  List<String> subtypes;
  List<String> supertypes;
  String? text;
  String? toughness;
  String type;
  List<String> types;
  String uuid;
  String? watermark;

  factory CardToken.fromJson(Map<String, dynamic> json) => _$CardTokenFromJson(json);

  Map<String, dynamic> toJson() => _$CardTokenToJson(this);
}
