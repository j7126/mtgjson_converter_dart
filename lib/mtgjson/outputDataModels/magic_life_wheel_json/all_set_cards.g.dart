// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_set_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MagicLifeWheelJsonAllSetCards _$MagicLifeWheelJsonAllSetCardsFromJson(
        Map<String, dynamic> json) =>
    MagicLifeWheelJsonAllSetCards(
      (json['data'] as List<dynamic>)
          .map((e) =>
              MagicLifeWheelJsonCardSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MagicLifeWheelJsonAllSetCardsToJson(
        MagicLifeWheelJsonAllSetCards instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
