import 'package:json_annotation/json_annotation.dart';

part 'identifiers.g.dart';

@JsonSerializable(explicitToJson: true)
class MagicDeckManagerJsonIdentifiers {
  MagicDeckManagerJsonIdentifiers({
    this.scryfallId,
    this.scryfallOracleId,
    this.scryfallIllustrationId,
  });

  String? scryfallId;
  String? scryfallOracleId;
  String? scryfallIllustrationId;

  factory MagicDeckManagerJsonIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$MagicDeckManagerJsonIdentifiersFromJson(json);

  Map<String, dynamic> toJson() => _$MagicDeckManagerJsonIdentifiersToJson(this);
}
