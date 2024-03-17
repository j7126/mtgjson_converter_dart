// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchable_card_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchableJsonCardSet _$SearchableJsonCardSetFromJson(
        Map<String, dynamic> json) =>
    SearchableJsonCardSet(
      name: json['name'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      subtypes:
          (json['subtypes'] as List<dynamic>).map((e) => e as String).toList(),
      supertypes: (json['supertypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      leadershipSkills: json['leadershipSkills'] == null
          ? null
          : LeadershipSkills.fromJson(
              json['leadershipSkills'] as Map<String, dynamic>),
    )
      ..cardSearchString = json['cardSearchString'] as String
      ..cardSearchStringWords = (json['cardSearchStringWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList();

Map<String, dynamic> _$SearchableJsonCardSetToJson(
        SearchableJsonCardSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'types': instance.types,
      'subtypes': instance.subtypes,
      'supertypes': instance.supertypes,
      'leadershipSkills': instance.leadershipSkills?.toJson(),
      'cardSearchString': instance.cardSearchString,
      'cardSearchStringWords': instance.cardSearchStringWords,
    };
