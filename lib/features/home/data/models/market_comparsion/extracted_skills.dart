import 'package:equatable/equatable.dart';

class ExtractedSkills extends Equatable {
  final List<String>? technicalSkills;
  final List<String>? softSkills;

  const ExtractedSkills({this.technicalSkills, this.softSkills});

  factory ExtractedSkills.fromJson(Map<String, dynamic> json) {
    return ExtractedSkills(
      technicalSkills: json['technical_skills'] as List<String>?,
      softSkills: json['soft_skills'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
    'technical_skills': technicalSkills,
    'soft_skills': softSkills,
  };

  @override
  List<Object?> get props => [technicalSkills, softSkills];
}
