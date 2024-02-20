// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_sets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllSets _$AllSetsFromJson(Map<String, dynamic> json) => AllSets(
      JsonMeta.fromJson(json['meta'] as Map<String, dynamic>),
      (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, MtgSet.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AllSetsToJson(AllSets instance) => <String, dynamic>{
      'meta': instance.meta.toJson(),
      'data': instance.data.map((k, e) => MapEntry(k, e.toJson())),
    };
