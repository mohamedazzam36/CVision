import 'package:equatable/equatable.dart';

import 'data.dart';

class UploadCvModel extends Equatable {
  final String? status;
  final int? statusCode;
  final String? message;
  final Data? data;
  final DateTime? timestamp;
  final String? path;

  const UploadCvModel({
    this.status,
    this.statusCode,
    this.message,
    this.data,
    this.timestamp,
    this.path,
  });

  factory UploadCvModel.fromJson(Map<String, dynamic> json) => UploadCvModel(
    status: json['status'] as String?,
    statusCode: json['statusCode'] as int?,
    message: json['message'] as String?,
    data: json['data'] == null ? null : Data.fromJson(json['data'] as Map<String, dynamic>),
    timestamp: json['timestamp'] == null ? null : DateTime.parse(json['timestamp'] as String),
    path: json['path'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'statusCode': statusCode,
    'message': message,
    'data': data?.toJson(),
    'timestamp': timestamp?.toIso8601String(),
    'path': path,
  };

  @override
  List<Object?> get props {
    return [
      status,
      statusCode,
      message,
      data,
      timestamp,
      path,
    ];
  }
}
