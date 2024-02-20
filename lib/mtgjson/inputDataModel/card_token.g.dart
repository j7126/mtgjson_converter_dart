// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardToken _$CardTokenFromJson(Map<String, dynamic> json) => CardToken(
      artist: json['artist'] as String?,
      artistIds: (json['artistIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      asciiName: json['asciiName'] as String?,
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
      faceName: json['faceName'] as String?,
      faceFlavorName: json['faceFlavorName'] as String?,
      finishes:
          (json['finishes'] as List<dynamic>).map((e) => e as String).toList(),
      flavorText: json['flavorText'] as String?,
      frameEffects: (json['frameEffects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      frameVersion: json['frameVersion'] as String,
      hasFoil: json['hasFoil'] as bool,
      hasNonFoil: json['hasNonFoil'] as bool,
      identifiers:
          Identifiers.fromJson(json['identifiers'] as Map<String, dynamic>),
      isFullArt: json['isFullArt'] as bool?,
      isFunny: json['isFunny'] as bool?,
      isOnlineOnly: json['isOnlineOnly'] as bool?,
      isPromo: json['isPromo'] as bool?,
      isReprint: json['isReprint'] as bool?,
      isTextless: json['isTextless'] as bool?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      language: json['language'] as String,
      layout: json['layout'] as String,
      loyalty: json['loyalty'] as String?,
      name: json['name'] as String,
      number: json['number'] as String,
      orientation: json['orientation'] as String?,
      originalText: json['originalText'] as String?,
      originalType: json['originalType'] as String?,
      otherFaceIds: (json['otherFaceIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      power: json['power'] as String?,
      promoTypes: (json['promoTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      relatedCards: json['relatedCards'] == null
          ? null
          : RelatedCards.fromJson(json['relatedCards'] as Map<String, dynamic>),
      reverseRelated: (json['reverseRelated'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      securityStamp: json['securityStamp'] as String?,
      setCode: json['setCode'] as String,
      side: json['side'] as String?,
      signature: json['signature'] as String?,
      sourceProducts: (json['sourceProducts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      watermark: json['watermark'] as String?,
    );

Map<String, dynamic> _$CardTokenToJson(CardToken instance) => <String, dynamic>{
      'artist': instance.artist,
      'artistIds': instance.artistIds,
      'asciiName': instance.asciiName,
      'availability': instance.availability,
      'boosterTypes': instance.boosterTypes,
      'borderColor': instance.borderColor,
      'cardParts': instance.cardParts,
      'colorIdentity': instance.colorIdentity,
      'colorIndicator': instance.colorIndicator,
      'colors': instance.colors,
      'faceName': instance.faceName,
      'faceFlavorName': instance.faceFlavorName,
      'finishes': instance.finishes,
      'flavorText': instance.flavorText,
      'frameEffects': instance.frameEffects,
      'frameVersion': instance.frameVersion,
      'hasFoil': instance.hasFoil,
      'hasNonFoil': instance.hasNonFoil,
      'identifiers': instance.identifiers.toJson(),
      'isFullArt': instance.isFullArt,
      'isFunny': instance.isFunny,
      'isOnlineOnly': instance.isOnlineOnly,
      'isPromo': instance.isPromo,
      'isReprint': instance.isReprint,
      'isTextless': instance.isTextless,
      'keywords': instance.keywords,
      'language': instance.language,
      'layout': instance.layout,
      'loyalty': instance.loyalty,
      'name': instance.name,
      'number': instance.number,
      'orientation': instance.orientation,
      'originalText': instance.originalText,
      'originalType': instance.originalType,
      'otherFaceIds': instance.otherFaceIds,
      'power': instance.power,
      'promoTypes': instance.promoTypes,
      'relatedCards': instance.relatedCards?.toJson(),
      'reverseRelated': instance.reverseRelated,
      'securityStamp': instance.securityStamp,
      'setCode': instance.setCode,
      'side': instance.side,
      'signature': instance.signature,
      'sourceProducts': instance.sourceProducts,
      'subsets': instance.subsets,
      'subtypes': instance.subtypes,
      'supertypes': instance.supertypes,
      'text': instance.text,
      'toughness': instance.toughness,
      'type': instance.type,
      'types': instance.types,
      'uuid': instance.uuid,
      'watermark': instance.watermark,
    };
