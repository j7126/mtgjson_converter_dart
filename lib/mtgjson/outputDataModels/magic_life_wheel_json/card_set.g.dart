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
      artist: json['artist'] as String?,
      identifiers: MagicLifeWheelJsonIdentifiers.fromJson(
          json['identifiers'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      subtypes:
          (json['subtypes'] as List<dynamic>).map((e) => e as String).toList(),
      leadershipSkills: json['leadershipSkills'] == null
          ? null
          : LeadershipSkills.fromJson(
              json['leadershipSkills'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      text: json['text'] as String?,
      flavorName: json['flavorName'] as String?,
      isFunny: json['isFunny'] as bool?,
    )
      ..cardSearchString = json['cardSearchString'] as String
      ..cardSearchStringWords = (json['cardSearchStringWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList()
      ..cardSearchStringAlt = json['cardSearchStringAlt'] as String?
      ..cardSearchStringWordsAlt =
          (json['cardSearchStringWordsAlt'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList();

Map<String, dynamic> _$MagicLifeWheelJsonCardSetToJson(
        MagicLifeWheelJsonCardSet instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'setCode': instance.setCode,
      'artist': instance.artist,
      'identifiers': instance.identifiers.toJson(),
      'types': instance.types,
      'subtypes': instance.subtypes,
      'leadershipSkills': instance.leadershipSkills?.toJson(),
      'keywords': instance.keywords,
      'text': instance.text,
      'flavorName': instance.flavorName,
      'isFunny': instance.isFunny,
      'cardSearchString': instance.cardSearchString,
      'cardSearchStringWords': instance.cardSearchStringWords,
      'cardSearchStringAlt': instance.cardSearchStringAlt,
      'cardSearchStringWordsAlt': instance.cardSearchStringWordsAlt,
    };
