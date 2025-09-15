import 'package:equatable/equatable.dart';

class ExtractedSkills extends Equatable {
  final List<dynamic>? technicalSkills;
  final List<dynamic>? softSkills;

  const ExtractedSkills({this.technicalSkills, this.softSkills});

  factory ExtractedSkills.fromJson(Map<String, dynamic> json) {
    return ExtractedSkills(
      technicalSkills: json['technical_skills'],
      softSkills: json['soft_skills'],
    );
  }

  Map<String, dynamic> toJson() => {
    'technical_skills': technicalSkills,
    'soft_skills': softSkills,
  };

  @override
  List<Object?> get props => [technicalSkills, softSkills];
}
