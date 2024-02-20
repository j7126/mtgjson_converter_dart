// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelatedCards _$RelatedCardsFromJson(Map<String, dynamic> json) => RelatedCards(
      (json['reverseRelated'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['spellbook'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RelatedCardsToJson(RelatedCards instance) =>
    <String, dynamic>{
      'reverseRelated': instance.reverseRelated,
      'spellbook': instance.spellbook,
    };
