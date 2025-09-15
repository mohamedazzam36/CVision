class AnalysisData {
  final String analysisId, cvId, status, message;

  AnalysisData({
    required this.analysisId,
    required this.cvId,
    required this.status,
    required this.message,
  });

  factory AnalysisData.fromJson(json) {
    return AnalysisData(
      analysisId: json['analysisId'],
      cvId: json['cvId'],
      status: json['status'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'analysisId': analysisId,
      'cvId': cvId,
      'status': status,
      'message': message,
    };
  }
}
