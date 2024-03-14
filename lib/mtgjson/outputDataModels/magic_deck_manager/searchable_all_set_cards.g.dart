// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchable_all_set_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchableJsonAllSetCards _$SearchableJsonAllSetCardsFromJson(
        Map<String, dynamic> json) =>
    SearchableJsonAllSetCards(
      (json['data'] as List<dynamic>)
          .map((e) => SearchableJsonCardSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchableJsonAllSetCardsToJson(
        SearchableJsonAllSetCards instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
