class UploadCvModel
{
  final String status;
  final DataModel? data;
  final String timestamp;
  final String path;

  UploadCvModel(
      this.status,
      this.data,
      this.timestamp,
      this.path,
      );

  factory UploadCvModel.fromJson(Map<String, dynamic> json)
  {
    return UploadCvModel(
      json['status'],
      json['data'] != null ? DataModel.fromJson(json['data'] as Map<String, dynamic>) : null,
      json['timestamp'],
      json['path'],
    );
  }
}


class DataModel
{
  final String status;
  final String message;
  final DetailedDataModel? data;


  DataModel(
      this.status,
      this.message,
      this.data
      );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      json['status'],
      json['message'],
      json['data'] != null ? DetailedDataModel.fromJson(json) : null,
    );
  }
}

class DetailedDataModel
{
  final String analysisId;
  final String cvId;
  final String status;
  final String message;

  DetailedDataModel(
      this.analysisId,
      this.cvId,
      this.status,
      this.message
      );

  factory DetailedDataModel.fromJson(Map<String, dynamic> json)
  {
    return DetailedDataModel(
      json['analysisId'],
      json['cvId'],
      json['status'],
      json['message'],
    );
  }
}