import 'package:flutter/foundation.dart';
import 'package:technical_interview/service/entities/forecast_day_dto.dart';

class ForecastDTO {
  List<ForecastDayDTO> forecastDay;

  ForecastDTO({
    @required this.forecastDay,
  });

  factory ForecastDTO.fromJson(Map<String, dynamic> json) {
    return ForecastDTO(
      forecastDay: ForecastDTO.fromJson(json['forecastDay']).forecastDay,
    );
  }
}
