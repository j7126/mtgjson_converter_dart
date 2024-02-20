import 'package:json_annotation/json_annotation.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/leadership_skills.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/legalities.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/related_cards.dart';
import 'package:mtgjson_converter_dart/mtgjson/inputDataModel/rulings.dart';
import 'identifiers.dart';

part 'card_set.g.dart';

@JsonSerializable(explicitToJson: true)
class CardSet {
  CardSet({
    this.artist,
    this.artistIds,
    this.asciiName,
    this.attractionLights,
    required this.availability,
    this.boosterTypes,
    required this.borderColor,
    this.cardParts,
    required this.colorIdentity,
    this.colorIndicator,
    required this.colors,
    required this.convertedManaCost,
    this.defense,
    this.duelDeck,
    this.edhrecRank,
    this.edhrecSaltiness,
    this.faceConvertedManaCost,
    this.faceFlavorName,
    this.faceManaValue,
    this.faceName,
    required this.finishes,
    this.flavorName,
    this.flavorText,
    this.frameEffects,
    required this.frameVersion,
    this.hand,
    this.hasAlternativeDeckLimit,
    this.hasContentWarning,
    required this.hasFoil,
    required this.hasNonFoil,
    required this.identifiers,
    this.isAlternative,
    this.isFullArt,
    this.isFunny,
    this.isOnlineOnly,
    this.isOversized,
    this.isPromo,
    this.isRebalanced,
    this.isReprint,
    this.isReserved,
    this.isStarter,
    this.isStorySpotlight,
    this.isTextless,
    this.isTimeshifted,
    this.keywords,
    required this.language,
    required this.layout,
    this.leadershipSkills,
    required this.legalities,
    this.life,
    this.loyalty,
    this.manaCost,
    required this.manaValue,
    required this.name,
    required this.number,
    this.originalPrintings,
    this.originalReleaseDate,
    this.originalText,
    this.originalType,
    this.otherFaceIds,
    this.power,
    this.printings,
    this.promoTypes,
    required this.rarity,
    this.relatedCards,
    this.rebalancedPrintings,
    this.rulings,
    this.securityStamp,
    required this.setCode,
    this.side,
    this.signature,
    this.subsets,
    required this.subtypes,
    required this.supertypes,
    this.text,
    this.toughness,
    required this.type,
    required this.types,
    required this.uuid,
    this.variations,
    this.watermark,
  });

  String? artist;
  List<String>? artistIds;
  String? asciiName;
  List<int>? attractionLights;
  List<String> availability;
  List<String>? boosterTypes;
  String borderColor;
  List<String>? cardParts;
  List<String> colorIdentity;
  List<String>? colorIndicator;
  List<String> colors;
  double convertedManaCost;
  String? defense;
  String? duelDeck;
  int? edhrecRank;
  double? edhrecSaltiness;
  double? faceConvertedManaCost;
  String? faceFlavorName;
  double? faceManaValue;
  String? faceName;
  List<String> finishes;
  String? flavorName;
  String? flavorText;
  List<String>? frameEffects;
  String frameVersion;
  String? hand;
  bool? hasAlternativeDeckLimit;
  bool? hasContentWarning;
  bool hasFoil;
  bool hasNonFoil;
  Identifiers identifiers;
  bool? isAlternative;
  bool? isFullArt;
  bool? isFunny;
  bool? isOnlineOnly;
  bool? isOversized;
  bool? isPromo;
  bool? isRebalanced;
  bool? isReprint;
  bool? isReserved;
  bool? isStarter;
  bool? isStorySpotlight;
  bool? isTextless;
  bool? isTimeshifted;
  List<String>? keywords;
  String language;
  String layout;
  LeadershipSkills? leadershipSkills;
  Legalities legalities;
  String? life;
  String? loyalty;
  String? manaCost;
  double manaValue;
  String name;
  String number;
  List<String>? originalPrintings;
  String? originalReleaseDate;
  String? originalText;
  String? originalType;
  List<String>? otherFaceIds;
  String? power;
  List<String>? printings;
  List<String>? promoTypes;
  String rarity;
  RelatedCards? relatedCards;
  List<String>? rebalancedPrintings;
  List<Rulings>? rulings;
  String? securityStamp;
  String setCode;
  String? side;
  String? signature;
  List<String>? subsets;
  List<String> subtypes;
  List<String> supertypes;
  String? text;
  String? toughness;
  String type;
  List<String> types;
  String uuid;
  List<String>? variations;
  String? watermark;

  factory CardSet.fromJson(Map<String, dynamic> json) => _$CardSetFromJson(json);

  Map<String, dynamic> toJson() => _$CardSetToJson(this);
}
