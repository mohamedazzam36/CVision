class FailureUploadCvModel
{
  bool success;
  ErrorModel? error;

  FailureUploadCvModel(
      this.success,
      this.error
      );

  factory FailureUploadCvModel.fromJson(Map<String, dynamic> json)
  {
    return FailureUploadCvModel(
      json['success'],
      json['error'] != null ? ErrorModel.fromJson(json['error'] as Map<String, dynamic>) : null,
    );
  }
}


class ErrorModel
{
  final String message;
  final String code;
  final int statusCode;

  ErrorModel(
      this.message,
      this.code,
      this.statusCode,
      );

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      json['message'],
      json['code'],
      json['statusCode'],
    );
  }
}