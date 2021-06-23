import 'package:flutter/foundation.dart';
import 'package:technical_interview/service/entities/condition_dto.dart';
import 'package:technical_interview/service/entities/day_dto.dart';

class ForecastDayDTO {
  ForecastDayDTO({
    @required this.condition,
    @required this.day,
  });

  ConditionDTO condition;
  DayDTO day;

  factory ForecastDayDTO.fromJson(Map<String, dynamic> json) {
    return ForecastDayDTO(
      condition: ConditionDTO.fromJson(json['condition']),
      day: DayDTO.fromJson(json['day']),
    );
  }
}
