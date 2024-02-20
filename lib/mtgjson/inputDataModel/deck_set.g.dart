// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeckSet _$DeckSetFromJson(Map<String, dynamic> json) => DeckSet(
      code: json['code'] as String,
      commander: (json['commander'] as List<dynamic>)
          .map((e) => CardSetDeck.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainBoard: (json['mainBoard'] as List<dynamic>)
          .map((e) => CardSetDeck.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      releaseDate: json['releaseDate'] as String?,
      sealedProductUuids: (json['sealedProductUuids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sideBoard: (json['sideBoard'] as List<dynamic>)
          .map((e) => CardSetDeck.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$DeckSetToJson(DeckSet instance) => <String, dynamic>{
      'code': instance.code,
      'commander': instance.commander.map((e) => e.toJson()).toList(),
      'mainBoard': instance.mainBoard.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'releaseDate': instance.releaseDate,
      'sealedProductUuids': instance.sealedProductUuids,
      'sideBoard': instance.sideBoard.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };
