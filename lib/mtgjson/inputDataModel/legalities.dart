import 'package:json_annotation/json_annotation.dart';

part 'legalities.g.dart';

@JsonSerializable(explicitToJson: true)
class Legalities {
  Legalities({
    this.alchemy,
    this.brawl,
    this.commander,
    this.duel,
    this.explorer,
    this.future,
    this.gladiator,
    this.historic,
    this.historicbrawl,
    this.legacy,
    this.modern,
    this.oathbreaker,
    this.oldschool,
    this.pauper,
    this.paupercommander,
    this.penny,
    this.pioneer,
    this.predh,
    this.premodern,
    this.standard,
    this.vintage,
  });

  String? alchemy;
  String? brawl;
  String? commander;
  String? duel;
  String? explorer;
  String? future;
  String? gladiator;
  String? historic;
  String? historicbrawl;
  String? legacy;
  String? modern;
  String? oathbreaker;
  String? oldschool;
  String? pauper;
  String? paupercommander;
  String? penny;
  String? pioneer;
  String? predh;
  String? premodern;
  String? standard;
  String? vintage;

  factory Legalities.fromJson(Map<String, dynamic> json) => _$LegalitiesFromJson(json);

  Map<String, dynamic> toJson() => _$LegalitiesToJson(this);
}
