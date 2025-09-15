import 'package:equatable/equatable.dart';

class MarketRequirements extends Equatable {
  final List<dynamic>? technical;
  final List<dynamic>? soft;

  const MarketRequirements({this.technical, this.soft});

  factory MarketRequirements.fromJson(Map<String, dynamic> json) {
    return MarketRequirements(
      technical: json['technical'],
      soft: json['soft'],
    );
  }

  Map<String, dynamic> toJson() => {
    'technical': technical,
    'soft': soft,
  };

  @override
  List<Object?> get props => [technical, soft];
}
