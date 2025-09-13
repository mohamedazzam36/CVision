import 'package:equatable/equatable.dart';

class Strength extends Equatable {
  final String? skill;
  final int? masteryLevel;

  const Strength({this.skill, this.masteryLevel});

  factory Strength.fromJson(Map<String, dynamic> json) => Strength(
    skill: json['skill'] as String?,
    masteryLevel: json['mastery_level'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'skill': skill,
    'mastery_level': masteryLevel,
  };

  @override
  List<Object?> get props => [skill, masteryLevel];
}
