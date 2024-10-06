// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MtgSet _$MtgSetFromJson(Map<String, dynamic> json) => MtgSet(
      baseSetSize: (json['baseSetSize'] as num).toInt(),
      block: json['block'] as String?,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardsphereSetId: (json['cardsphereSetId'] as num?)?.toInt(),
      code: json['code'] as String,
      decks: (json['decks'] as List<dynamic>?)
          ?.map((e) => DeckSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      isForeignOnly: json['isForeignOnly'] as bool?,
      isFoilOnly: json['isFoilOnly'] as bool,
      isNonFoilOnly: json['isNonFoilOnly'] as bool?,
      isOnlineOnly: json['isOnlineOnly'] as bool,
      isPaperOnly: json['isPaperOnly'] as bool?,
      isPartialPreview: json['isPartialPreview'] as bool?,
      keyruneCode: json['keyruneCode'] as String,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mcmId: (json['mcmId'] as num?)?.toInt(),
      mcmIdExtras: (json['mcmIdExtras'] as num?)?.toInt(),
      mcmName: json['mcmName'] as String?,
      mtgoCode: json['mtgoCode'] as String?,
      name: json['name'] as String,
      parentCode: json['parentCode'] as String?,
      releaseDate: json['releaseDate'] as String,
      tcgplayerGroupId: (json['tcgplayerGroupId'] as num?)?.toInt(),
      tokens: (json['tokens'] as List<dynamic>)
          .map((e) => CardToken.fromJson(e as Map<String, dynamic>))
          .toList(),
      tokenSetCode: json['tokenSetCode'] as String?,
      totalSetSize: (json['totalSetSize'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$MtgSetToJson(MtgSet instance) => <String, dynamic>{
      'baseSetSize': instance.baseSetSize,
      'block': instance.block,
      'cards': instance.cards.map((e) => e.toJson()).toList(),
      'cardsphereSetId': instance.cardsphereSetId,
      'code': instance.code,
      'decks': instance.decks?.map((e) => e.toJson()).toList(),
      'isForeignOnly': instance.isForeignOnly,
      'isFoilOnly': instance.isFoilOnly,
      'isNonFoilOnly': instance.isNonFoilOnly,
      'isOnlineOnly': instance.isOnlineOnly,
      'isPaperOnly': instance.isPaperOnly,
      'isPartialPreview': instance.isPartialPreview,
      'keyruneCode': instance.keyruneCode,
      'languages': instance.languages,
      'mcmId': instance.mcmId,
      'mcmIdExtras': instance.mcmIdExtras,
      'mcmName': instance.mcmName,
      'mtgoCode': instance.mtgoCode,
      'name': instance.name,
      'parentCode': instance.parentCode,
      'releaseDate': instance.releaseDate,
      'tcgplayerGroupId': instance.tcgplayerGroupId,
      'tokens': instance.tokens.map((e) => e.toJson()).toList(),
      'tokenSetCode': instance.tokenSetCode,
      'totalSetSize': instance.totalSetSize,
      'type': instance.type,
    };
