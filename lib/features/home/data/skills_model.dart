class SkillModel {
  final String status;
  final String message;
  final DataModel data;

  SkillModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory SkillModel.fromJson(Map<String, dynamic> json) {
    return SkillModel(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      data: DataModel.fromJson(json['data'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'data': data.toJson(),
    };
  }
}

class DataModel {
  final DetailedDataModel detailedDataModel;

  DataModel({
    required this.detailedDataModel,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      detailedDataModel:
      DetailedDataModel.fromJson(json['detailedDataModel'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'detailedDataModel': detailedDataModel.toJson(),
    };
  }
}

class DetailedDataModel {
  final String analysisId;
  final String status;
  final MarketAnalysis marketAnalysis;

  DetailedDataModel({
    required this.analysisId,
    required this.status,
    required this.marketAnalysis,
  });

  factory DetailedDataModel.fromJson(Map<String, dynamic> json) {
    return DetailedDataModel(
      analysisId: json['analysisId'] ?? '',
      status: json['status'] ?? '',
      marketAnalysis: MarketAnalysis.fromJson(json['marketAnalysis'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'analysisId': analysisId,
      'status': status,
      'marketAnalysis': marketAnalysis.toJson(),
    };
  }
}

class MarketAnalysis {
  final String careerTrack;
  final MarketRequirements marketRequirements;
  final SkillAnalysis skillAnalysis;
  final double readinessScore;
  final ProcessingMetadata processingMetadata;

  MarketAnalysis({
    required this.careerTrack,
    required this.marketRequirements,
    required this.skillAnalysis,
    required this.readinessScore,
    required this.processingMetadata,
  });

  factory MarketAnalysis.fromJson(Map<String, dynamic> json) {
    return MarketAnalysis(
      careerTrack: json['career_track'] ?? '',
      marketRequirements: MarketRequirements.fromJson(json['market_requirements']),
      skillAnalysis: SkillAnalysis.fromJson(json['skill_analysis']),
      readinessScore: (json['readiness_score'] as num?)?.toDouble() ?? 0.0,
      processingMetadata: ProcessingMetadata.fromJson(json['processing_metadata']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'career_track': careerTrack,
      'market_requirements': marketRequirements.toJson(),
      'skill_analysis': skillAnalysis.toJson(),
      'readiness_score': readinessScore,
      'processing_metadata': processingMetadata.toJson(),
    };
  }
}

class MarketRequirements {
  final List<String> technical;
  final List<String> soft;

  MarketRequirements({
    required this.technical,
    required this.soft,
  });

  factory MarketRequirements.fromJson(Map<String, dynamic> json) {
    return MarketRequirements(
      technical: List<String>.from(json['technical'] ?? []),
      soft: List<String>.from(json['soft'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'technical': technical,
      'soft': soft,
    };
  }
}

class SkillAnalysis {
  final List<SkillStrength> strengths;
  final List<String> gaps;

  SkillAnalysis({
    required this.strengths,
    required this.gaps,
  });

  factory SkillAnalysis.fromJson(Map<String, dynamic> json) {
    return SkillAnalysis(
      strengths: (json['strengths'] as List<dynamic>?)
          ?.map((e) => SkillStrength.fromJson(e))
          .toList() ??
          [],
      gaps: List<String>.from(json['gaps'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'strengths': strengths.map((e) => e.toJson()).toList(),
      'gaps': gaps,
    };
  }
}

class SkillStrength {
  final String skill;
  final int masteryLevel;

  SkillStrength({
    required this.skill,
    required this.masteryLevel,
  });

  factory SkillStrength.fromJson(Map<String, dynamic> json) {
    return SkillStrength(
      skill: json['skill'] ?? '',
      masteryLevel: json['mastery_level'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'skill': skill,
      'mastery_level': masteryLevel,
    };
  }
}

class ProcessingMetadata {
  final String cvId;
  final String userId;
  final int totalVerifiedSkills;
  final int cvLength;
  final String extractionQuality;
  final List<String> sectionsAvailable;
  final int totalLines;

  ProcessingMetadata({
    required this.cvId,
    required this.userId,
    required this.totalVerifiedSkills,
    required this.cvLength,
    required this.extractionQuality,
    required this.sectionsAvailable,
    required this.totalLines,
  });

  factory ProcessingMetadata.fromJson(Map<String, dynamic> json) {
    return ProcessingMetadata(
      cvId: json['cv_id'] ?? '',
      userId: json['user_id'] ?? '',
      totalVerifiedSkills: json['total_verified_skills'] ?? 0,
      cvLength: json['cv_length'] ?? 0,
      extractionQuality: json['extraction_quality'] ?? '',
      sectionsAvailable: List<String>.from(json['sections_available'] ?? []),
      totalLines: json['total_lines'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cv_id': cvId,
      'user_id': userId,
      'total_verified_skills': totalVerifiedSkills,
      'cv_length': cvLength,
      'extraction_quality': extractionQuality,
      'sections_available': sectionsAvailable,
      'total_lines': totalLines,
    };
  }
}
