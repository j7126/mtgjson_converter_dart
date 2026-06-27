// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_list_all_sets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetListAllSets _$SetListAllSetsFromJson(Map<String, dynamic> json) =>
    SetListAllSets(
      JsonMeta.fromJson(json['meta'] as Map<String, dynamic>),
      (json['data'] as List<dynamic>)
          .map((e) => SetListSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SetListAllSetsToJson(SetListAllSets instance) =>
    <String, dynamic>{
      'meta': instance.meta.toJson(),
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
