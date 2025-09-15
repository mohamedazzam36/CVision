import 'package:equatable/equatable.dart';

import 'extracted_skills.dart';
import 'market_analysis.dart';

class SkillsData extends Equatable {
  final String? analysisId;
  final String? status;
  final MarketAnalysis? marketAnalysis;
  final ExtractedSkills? extractedSkills;

  const SkillsData({
    this.analysisId,
    this.status,
    this.marketAnalysis,
    this.extractedSkills,
  });

  factory SkillsData.fromJson(Map<String, dynamic> json) => SkillsData(
    analysisId: json['analysisId'] as String?,
    status: json['status'] as String?,
    marketAnalysis: json['marketAnalysis'] == null
        ? null
        : MarketAnalysis.fromJson(json['marketAnalysis'] as Map<String, dynamic>),
    extractedSkills: json['extractedSkills'] == null
        ? null
        : ExtractedSkills.fromJson(json['extractedSkills'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'analysisId': analysisId,
    'status': status,
    'marketAnalysis': marketAnalysis?.toJson(),
    'extractedSkills': extractedSkills?.toJson(),
  };

  @override
  List<Object?> get props {
    return [
      analysisId,
      status,
      marketAnalysis,
      extractedSkills,
    ];
  }
}
