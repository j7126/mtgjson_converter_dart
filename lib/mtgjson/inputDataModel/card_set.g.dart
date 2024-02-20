// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardSet _$CardSetFromJson(Map<String, dynamic> json) => CardSet(
      artist: json['artist'] as String?,
      artistIds: (json['artistIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      asciiName: json['asciiName'] as String?,
      attractionLights: (json['attractionLights'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      availability: (json['availability'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      boosterTypes: (json['boosterTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      borderColor: json['borderColor'] as String,
      cardParts: (json['cardParts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      colorIdentity: (json['colorIdentity'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      colorIndicator: (json['colorIndicator'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      convertedManaCost: (json['convertedManaCost'] as num).toDouble(),
      defense: json['defense'] as String?,
      duelDeck: json['duelDeck'] as String?,
      edhrecRank: json['edhrecRank'] as int?,
      edhrecSaltiness: (json['edhrecSaltiness'] as num?)?.toDouble(),
      faceConvertedManaCost:
          (json['faceConvertedManaCost'] as num?)?.toDouble(),
      faceFlavorName: json['faceFlavorName'] as String?,
      faceManaValue: (json['faceManaValue'] as num?)?.toDouble(),
      faceName: json['faceName'] as String?,
      finishes:
          (json['finishes'] as List<dynamic>).map((e) => e as String).toList(),
      flavorName: json['flavorName'] as String?,
      flavorText: json['flavorText'] as String?,
      frameEffects: (json['frameEffects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      frameVersion: json['frameVersion'] as String,
      hand: json['hand'] as String?,
      hasAlternativeDeckLimit: json['hasAlternativeDeckLimit'] as bool?,
      hasContentWarning: json['hasContentWarning'] as bool?,
      hasFoil: json['hasFoil'] as bool,
      hasNonFoil: json['hasNonFoil'] as bool,
      identifiers:
          Identifiers.fromJson(json['identifiers'] as Map<String, dynamic>),
      isAlternative: json['isAlternative'] as bool?,
      isFullArt: json['isFullArt'] as bool?,
      isFunny: json['isFunny'] as bool?,
      isOnlineOnly: json['isOnlineOnly'] as bool?,
      isOversized: json['isOversized'] as bool?,
      isPromo: json['isPromo'] as bool?,
      isRebalanced: json['isRebalanced'] as bool?,
      isReprint: json['isReprint'] as bool?,
      isReserved: json['isReserved'] as bool?,
      isStarter: json['isStarter'] as bool?,
      isStorySpotlight: json['isStorySpotlight'] as bool?,
      isTextless: json['isTextless'] as bool?,
      isTimeshifted: json['isTimeshifted'] as bool?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String,
      layout: json['layout'] as String,
      leadershipSkills: json['leadershipSkills'] == null
          ? null
          : LeadershipSkills.fromJson(
              json['leadershipSkills'] as Map<String, dynamic>),
      legalities:
          Legalities.fromJson(json['legalities'] as Map<String, dynamic>),
      life: json['life'] as String?,
      loyalty: json['loyalty'] as String?,
      manaCost: json['manaCost'] as String?,
      manaValue: (json['manaValue'] as num).toDouble(),
      name: json['name'] as String,
      number: json['number'] as String,
      originalPrintings: (json['originalPrintings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalReleaseDate: json['originalReleaseDate'] as String?,
      originalText: json['originalText'] as String?,
      originalType: json['originalType'] as String?,
      otherFaceIds: (json['otherFaceIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      power: json['power'] as String?,
      printings: (json['printings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      promoTypes: (json['promoTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rarity: json['rarity'] as String,
      relatedCards: json['relatedCards'] == null
          ? null
          : RelatedCards.fromJson(json['relatedCards'] as Map<String, dynamic>),
      rebalancedPrintings: (json['rebalancedPrintings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rulings: (json['rulings'] as List<dynamic>?)
          ?.map((e) => Rulings.fromJson(e as Map<String, dynamic>))
          .toList(),
      securityStamp: json['securityStamp'] as String?,
      setCode: json['setCode'] as String,
      side: json['side'] as String?,
      signature: json['signature'] as String?,
      subsets:
          (json['subsets'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subtypes:
          (json['subtypes'] as List<dynamic>).map((e) => e as String).toList(),
      supertypes: (json['supertypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      text: json['text'] as String?,
      toughness: json['toughness'] as String?,
      type: json['type'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      uuid: json['uuid'] as String,
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      watermark: json['watermark'] as String?,
    );

Map<String, dynamic> _$CardSetToJson(CardSet instance) => <String, dynamic>{
      'artist': instance.artist,
      'artistIds': instance.artistIds,
      'asciiName': instance.asciiName,
      'attractionLights': instance.attractionLights,
      'availability': instance.availability,
      'boosterTypes': instance.boosterTypes,
      'borderColor': instance.borderColor,
      'cardParts': instance.cardParts,
      'colorIdentity': instance.colorIdentity,
      'colorIndicator': instance.colorIndicator,
      'colors': instance.colors,
      'convertedManaCost': instance.convertedManaCost,
      'defense': instance.defense,
      'duelDeck': instance.duelDeck,
      'edhrecRank': instance.edhrecRank,
      'edhrecSaltiness': instance.edhrecSaltiness,
      'faceConvertedManaCost': instance.faceConvertedManaCost,
      'faceFlavorName': instance.faceFlavorName,
      'faceManaValue': instance.faceManaValue,
      'faceName': instance.faceName,
      'finishes': instance.finishes,
      'flavorName': instance.flavorName,
      'flavorText': instance.flavorText,
      'frameEffects': instance.frameEffects,
      'frameVersion': instance.frameVersion,
      'hand': instance.hand,
      'hasAlternativeDeckLimit': instance.hasAlternativeDeckLimit,
      'hasContentWarning': instance.hasContentWarning,
      'hasFoil': instance.hasFoil,
      'hasNonFoil': instance.hasNonFoil,
      'identifiers': instance.identifiers.toJson(),
      'isAlternative': instance.isAlternative,
      'isFullArt': instance.isFullArt,
      'isFunny': instance.isFunny,
      'isOnlineOnly': instance.isOnlineOnly,
      'isOversized': instance.isOversized,
      'isPromo': instance.isPromo,
      'isRebalanced': instance.isRebalanced,
      'isReprint': instance.isReprint,
      'isReserved': instance.isReserved,
      'isStarter': instance.isStarter,
      'isStorySpotlight': instance.isStorySpotlight,
      'isTextless': instance.isTextless,
      'isTimeshifted': instance.isTimeshifted,
      'keywords': instance.keywords,
      'language': instance.language,
      'layout': instance.layout,
      'leadershipSkills': instance.leadershipSkills?.toJson(),
      'legalities': instance.legalities.toJson(),
      'life': instance.life,
      'loyalty': instance.loyalty,
      'manaCost': instance.manaCost,
      'manaValue': instance.manaValue,
      'name': instance.name,
      'number': instance.number,
      'originalPrintings': instance.originalPrintings,
      'originalReleaseDate': instance.originalReleaseDate,
      'originalText': instance.originalText,
      'originalType': instance.originalType,
      'otherFaceIds': instance.otherFaceIds,
      'power': instance.power,
      'printings': instance.printings,
      'promoTypes': instance.promoTypes,
      'rarity': instance.rarity,
      'relatedCards': instance.relatedCards?.toJson(),
      'rebalancedPrintings': instance.rebalancedPrintings,
      'rulings': instance.rulings?.map((e) => e.toJson()).toList(),
      'securityStamp': instance.securityStamp,
      'setCode': instance.setCode,
      'side': instance.side,
      'signature': instance.signature,
      'subsets': instance.subsets,
      'subtypes': instance.subtypes,
      'supertypes': instance.supertypes,
      'text': instance.text,
      'toughness': instance.toughness,
      'type': instance.type,
      'types': instance.types,
      'uuid': instance.uuid,
      'variations': instance.variations,
      'watermark': instance.watermark,
    };
