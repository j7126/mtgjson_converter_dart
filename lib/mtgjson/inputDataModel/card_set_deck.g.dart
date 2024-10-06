// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_set_deck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardSetDeck _$CardSetDeckFromJson(Map<String, dynamic> json) => CardSetDeck(
      count: (json['count'] as num).toInt(),
      isFoil: json['isFoil'] as bool?,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$CardSetDeckToJson(CardSetDeck instance) =>
    <String, dynamic>{
      'count': instance.count,
      'isFoil': instance.isFoil,
      'uuid': instance.uuid,
    };
