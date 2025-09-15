import 'package:equatable/equatable.dart';

import 'strength.dart';

class SkillAnalysis extends Equatable {
  final List<Strength>? strengths;
  final List<dynamic>? gaps;

  const SkillAnalysis({this.strengths, this.gaps});

  factory SkillAnalysis.fromJson(Map<String, dynamic> json) => SkillAnalysis(
    strengths: (json['strengths'] as List<dynamic>?)
        ?.map((e) => Strength.fromJson(e as Map<String, dynamic>))
        .toList(),
    gaps: json['gaps'],
  );

  Map<String, dynamic> toJson() => {
    'strengths': strengths?.map((e) => e.toJson()).toList(),
    'gaps': gaps,
  };

  @override
  List<Object?> get props => [strengths, gaps];
}
