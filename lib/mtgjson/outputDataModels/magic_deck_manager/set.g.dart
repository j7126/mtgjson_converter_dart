// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MagicDeckManagerSet _$MagicDeckManagerSetFromJson(Map<String, dynamic> json) =>
    MagicDeckManagerSet(
      baseSetSize: (json['baseSetSize'] as num).toInt(),
      code: json['code'] as String,
      isFoilOnly: json['isFoilOnly'] as bool,
      keyruneCode: json['keyruneCode'] as String,
      name: json['name'] as String,
      releaseDate: json['releaseDate'] as String,
      totalSetSize: (json['totalSetSize'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$MagicDeckManagerSetToJson(
        MagicDeckManagerSet instance) =>
    <String, dynamic>{
      'baseSetSize': instance.baseSetSize,
      'code': instance.code,
      'isFoilOnly': instance.isFoilOnly,
      'keyruneCode': instance.keyruneCode,
      'name': instance.name,
      'releaseDate': instance.releaseDate,
      'totalSetSize': instance.totalSetSize,
      'type': instance.type,
    };
