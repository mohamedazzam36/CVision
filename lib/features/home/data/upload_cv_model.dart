class UploadCvModel
{
  bool success;
  DataModel? data;

  UploadCvModel(
      this.success,
      this.data
      );

  factory UploadCvModel.fromJson(Map<String, dynamic> json)
  {
    return UploadCvModel(
      json['success'],
      json['data'] != null ? DataModel.fromJson(json['data'] as Map<String, dynamic>) : null,
    );
  }
}


class DataModel
{
  final String id;
  final String fileName;
  final String originalName;
  final String filePath;
  final String uploadedAt;

  DataModel(
      this.id,
      this.fileName,
      this.originalName,
      this.filePath,
      this.uploadedAt,
      );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      json['id'],
      json['fileName'],
      json['originalName'],
      json['filePath'],
      json['uploadedAt'],
    );
  }
}