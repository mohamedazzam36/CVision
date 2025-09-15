import 'package:equatable/equatable.dart';

class ProcessingMetadata extends Equatable {
  final String? cvId;
  final String? userId;
  final int? totalVerifiedSkills;
  final int? cvLength;
  final String? extractionQuality;
  final List<dynamic>? sectionsAvailable;
  final int? totalLines;

  const ProcessingMetadata({
    this.cvId,
    this.userId,
    this.totalVerifiedSkills,
    this.cvLength,
    this.extractionQuality,
    this.sectionsAvailable,
    this.totalLines,
  });

  factory ProcessingMetadata.fromJson(Map<String, dynamic> json) {
    return ProcessingMetadata(
      cvId: json['cv_id'] as String?,
      userId: json['user_id'] as String?,
      totalVerifiedSkills: json['total_verified_skills'] as int?,
      cvLength: json['cv_length'] as int?,
      extractionQuality: json['extraction_quality'] as String?,
      sectionsAvailable: json['sections_available'],
      totalLines: json['total_lines'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
    'cv_id': cvId,
    'user_id': userId,
    'total_verified_skills': totalVerifiedSkills,
    'cv_length': cvLength,
    'extraction_quality': extractionQuality,
    'sections_available': sectionsAvailable,
    'total_lines': totalLines,
  };

  @override
  List<Object?> get props {
    return [
      cvId,
      userId,
      totalVerifiedSkills,
      cvLength,
      extractionQuality,
      sectionsAvailable,
      totalLines,
    ];
  }
}
