// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MagicLifeWheelJsonCardSet _$MagicLifeWheelJsonCardSetFromJson(
        Map<String, dynamic> json) =>
    MagicLifeWheelJsonCardSet(
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      setCode: json['setCode'] as String,
      identifiers: MagicLifeWheelJsonIdentifiers.fromJson(
          json['identifiers'] as Map<String, dynamic>),
      artist: json['artist'] as String?,
      subtypes:
          (json['subtypes'] as List<dynamic>).map((e) => e as String).toList(),
      supertypes: (json['supertypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      leadershipSkills: json['leadershipSkills'] == null
          ? null
          : LeadershipSkills.fromJson(
              json['leadershipSkills'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    )
      ..cardSearchString = json['cardSearchString'] as String
      ..cardSearchStringWords = (json['cardSearchStringWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList();

Map<String, dynamic> _$MagicLifeWheelJsonCardSetToJson(
        MagicLifeWheelJsonCardSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'setCode': instance.setCode,
      'artist': instance.artist,
      'identifiers': instance.identifiers.toJson(),
      'subtypes': instance.subtypes,
      'supertypes': instance.supertypes,
      'leadershipSkills': instance.leadershipSkills?.toJson(),
      'keywords': instance.keywords,
      'cardSearchString': instance.cardSearchString,
      'cardSearchStringWords': instance.cardSearchStringWords,
    };
