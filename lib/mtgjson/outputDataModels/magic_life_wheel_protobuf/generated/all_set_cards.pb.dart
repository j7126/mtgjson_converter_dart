// This is a generated file - do not edit.
//
// Generated from all_set_cards.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'card_set.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MagicLifeWheelProtobufAllSetCards extends $pb.GeneratedMessage {
  factory MagicLifeWheelProtobufAllSetCards({
    $core.Iterable<$0.MagicLifeWheelProtobufCardSet>? data,
    $core.String? buildDate,
  }) {
    final result = create();
    if (data != null) result.data.addAll(data);
    if (buildDate != null) result.buildDate = buildDate;
    return result;
  }

  MagicLifeWheelProtobufAllSetCards._();

  factory MagicLifeWheelProtobufAllSetCards.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MagicLifeWheelProtobufAllSetCards.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MagicLifeWheelProtobufAllSetCards',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'mtgjson_converter_dart'),
      createEmptyInstance: create)
    ..pPM<$0.MagicLifeWheelProtobufCardSet>(1, _omitFieldNames ? '' : 'data',
        subBuilder: $0.MagicLifeWheelProtobufCardSet.create)
    ..aOS(2, _omitFieldNames ? '' : 'buildDate', protoName: 'buildDate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MagicLifeWheelProtobufAllSetCards clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MagicLifeWheelProtobufAllSetCards copyWith(
          void Function(MagicLifeWheelProtobufAllSetCards) updates) =>
      super.copyWith((message) =>
              updates(message as MagicLifeWheelProtobufAllSetCards))
          as MagicLifeWheelProtobufAllSetCards;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MagicLifeWheelProtobufAllSetCards create() =>
      MagicLifeWheelProtobufAllSetCards._();
  @$core.override
  MagicLifeWheelProtobufAllSetCards createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MagicLifeWheelProtobufAllSetCards getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MagicLifeWheelProtobufAllSetCards>(
          create);
  static MagicLifeWheelProtobufAllSetCards? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.MagicLifeWheelProtobufCardSet> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get buildDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildDate($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBuildDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildDate() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
