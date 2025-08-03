// This is a generated file - do not edit.
//
// Generated from all_set_cards.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'card_set.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class MagicLifeWheelProtobufAllSetCards extends $pb.GeneratedMessage {
  factory MagicLifeWheelProtobufAllSetCards({
    $core.Iterable<$0.MagicLifeWheelProtobufCardSet>? data,
  }) {
    final result = create();
    if (data != null) result.data.addAll(data);
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
    ..pc<$0.MagicLifeWheelProtobufCardSet>(
        1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM,
        subBuilder: $0.MagicLifeWheelProtobufCardSet.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MagicLifeWheelProtobufAllSetCards clone() =>
      MagicLifeWheelProtobufAllSetCards()..mergeFromMessage(this);
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
  static $pb.PbList<MagicLifeWheelProtobufAllSetCards> createRepeated() =>
      $pb.PbList<MagicLifeWheelProtobufAllSetCards>();
  @$core.pragma('dart2js:noInline')
  static MagicLifeWheelProtobufAllSetCards getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MagicLifeWheelProtobufAllSetCards>(
          create);
  static MagicLifeWheelProtobufAllSetCards? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.MagicLifeWheelProtobufCardSet> get data => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
