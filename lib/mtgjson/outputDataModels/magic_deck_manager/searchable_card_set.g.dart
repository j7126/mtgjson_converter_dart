// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchable_card_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchableJsonCardSet _$SearchableJsonCardSetFromJson(
        Map<String, dynamic> json) =>
    SearchableJsonCardSet(
      name: json['name'] as String,
    )
      ..cardSearchString = json['cardSearchString'] as String
      ..cardSearchStringWords = (json['cardSearchStringWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList();

Map<String, dynamic> _$SearchableJsonCardSetToJson(
        SearchableJsonCardSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cardSearchString': instance.cardSearchString,
      'cardSearchStringWords': instance.cardSearchStringWords,
    };
