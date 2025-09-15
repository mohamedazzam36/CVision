import 'package:cvision/features/home/data/models/market_comparsion/skills_data/skills_data.dart';
import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? status;
  final int? statusCode;
  final String? message;
  final SkillsData? skillsData;
  final DateTime? timestamp;
  final String? path;

  const Data({
    this.status,
    this.statusCode,
    this.message,
    this.skillsData,
    this.timestamp,
    this.path,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    status: json['status'] as String?,
    statusCode: json['statusCode'] as int?,
    message: json['message'] as String?,
    skillsData: json['data'] == null
        ? null
        : SkillsData.fromJson(json['data'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null ? null : DateTime.parse(json['timestamp'] as String),
    path: json['path'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'statusCode': statusCode,
    'message': message,
    'data': skillsData?.toJson(),
    'timestamp': timestamp?.toIso8601String(),
    'path': path,
  };

  @override
  List<Object?> get props {
    return [
      status,
      statusCode,
      message,
      skillsData,
      timestamp,
      path,
    ];
  }
}
