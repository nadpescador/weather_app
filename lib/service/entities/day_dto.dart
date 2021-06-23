import 'package:flutter/foundation.dart';
import 'package:technical_interview/service/entities/condition_dto.dart';

class DayDTO {
  DayDTO({
    @required this.maxTemp,
    @required this.minTemp,
    @required this.condition,
  });

  final double maxTemp;
  final double minTemp;
  final ConditionDTO condition;

  factory DayDTO.fromJson(Map<String, dynamic> json) {
    return DayDTO(
      condition: ConditionDTO.fromJson(json['condition']),
      maxTemp: json['maxtemp_c'],
      minTemp: json['mintemp_c'],
    );
  }
}
