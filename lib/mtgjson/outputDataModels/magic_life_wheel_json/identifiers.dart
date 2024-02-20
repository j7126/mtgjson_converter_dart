import 'package:json_annotation/json_annotation.dart';

part 'identifiers.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicLifeWheelJsonIdentifiers {
  MagicLifeWheelJsonIdentifiers({
    this.scryfallId,
    this.scryfallOracleId,
    this.scryfallIllustrationId,
  });

  String? scryfallId;
  String? scryfallOracleId;
  String? scryfallIllustrationId;

  factory MagicLifeWheelJsonIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$MagicLifeWheelJsonIdentifiersFromJson(json);

  Map<String, dynamic> toJson() => _$MagicLifeWheelJsonIdentifiersToJson(this);
}
