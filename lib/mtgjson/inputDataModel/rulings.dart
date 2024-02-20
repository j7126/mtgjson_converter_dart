import 'package:json_annotation/json_annotation.dart';

part 'rulings.g.dart';

@JsonSerializable(explicitToJson: true)
class Rulings {
  Rulings({
    required this.date,
    required this.text,
  });

  String date;
  String text;

  factory Rulings.fromJson(Map<String, dynamic> json) => _$RulingsFromJson(json);

  Map<String, dynamic> toJson() => _$RulingsToJson(this);
}
