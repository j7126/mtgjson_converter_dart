import 'package:json_annotation/json_annotation.dart';

part 'identifiers.g.dart';

@JsonSerializable(explicitToJson: true)
class Identifiers {
  Identifiers({
    this.cardKingdomEtchedId,
    this.cardKingdomFoilId,
    this.cardKingdomId,
    this.cardsphereId,
    this.mcmId,
    this.mcmMetaId,
    this.mtgArenaId,
    this.mtgjsonFoilVersionId,
    this.mtgjsonNonFoilVersionId,
    this.mtgjsonV4Id,
    this.mtgoFoilId,
    this.mtgoId,
    this.multiverseId,
    this.scryfallId,
    this.scryfallOracleId,
    this.scryfallIllustrationId,
    this.tcgplayerProductId,
    this.tcgplayerEtchedProductId,
  });

  String? cardKingdomEtchedId;
  String? cardKingdomFoilId;
  String? cardKingdomId;
  String? cardsphereId;
  String? mcmId;
  String? mcmMetaId;
  String? mtgArenaId;
  String? mtgjsonFoilVersionId;
  String? mtgjsonNonFoilVersionId;
  String? mtgjsonV4Id;
  String? mtgoFoilId;
  String? mtgoId;
  String? multiverseId;
  String? scryfallId;
  String? scryfallOracleId;
  String? scryfallIllustrationId;
  String? tcgplayerProductId;
  String? tcgplayerEtchedProductId;

  factory Identifiers.fromJson(Map<String, dynamic> json) => _$IdentifiersFromJson(json);

  Map<String, dynamic> toJson() => _$IdentifiersToJson(this);
}
