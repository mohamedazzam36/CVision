import 'package:equatable/equatable.dart';

import 'market_requirements.dart';
import 'processing_metadata.dart';
import 'skill_analysis.dart';

class MarketAnalysis extends Equatable {
  final String? careerTrack;
  final MarketRequirements? marketRequirements;
  final SkillAnalysis? skillAnalysis;
  final int? readinessScore;
  final ProcessingMetadata? processingMetadata;

  const MarketAnalysis({
    this.careerTrack,
    this.marketRequirements,
    this.skillAnalysis,
    this.readinessScore,
    this.processingMetadata,
  });

  factory MarketAnalysis.fromJson(Map<String, dynamic> json) {
    return MarketAnalysis(
      careerTrack: json['career_track'] as String?,
      marketRequirements: json['market_requirements'] == null
          ? null
          : MarketRequirements.fromJson(json['market_requirements'] as Map<String, dynamic>),
      skillAnalysis: json['skill_analysis'] == null
          ? null
          : SkillAnalysis.fromJson(json['skill_analysis'] as Map<String, dynamic>),
      readinessScore: json['readiness_score'] as int?,
      processingMetadata: json['processing_metadata'] == null
          ? null
          : ProcessingMetadata.fromJson(json['processing_metadata'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'career_track': careerTrack,
    'market_requirements': marketRequirements?.toJson(),
    'skill_analysis': skillAnalysis?.toJson(),
    'readiness_score': readinessScore,
    'processing_metadata': processingMetadata?.toJson(),
  };

  @override
  List<Object?> get props {
    return [
      careerTrack,
      marketRequirements,
      skillAnalysis,
      readinessScore,
      processingMetadata,
    ];
  }
}
