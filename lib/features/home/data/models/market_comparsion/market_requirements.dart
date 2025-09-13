import 'package:equatable/equatable.dart';

class MarketRequirements extends Equatable {
  final List<String>? technical;
  final List<String>? soft;

  const MarketRequirements({this.technical, this.soft});

  factory MarketRequirements.fromJson(Map<String, dynamic> json) {
    return MarketRequirements(
      technical: json['technical'] as List<String>?,
      soft: json['soft'] as List<String>?,
    );
  }

  Map<String, dynamic> toJson() => {
    'technical': technical,
    'soft': soft,
  };

  @override
  List<Object?> get props => [technical, soft];
}
