import 'package:technical_interview/service/entities/forecast_response_dto.dart';

abstract class IWeatherRepository {
  Future<ForecastResponseDto> getWeather(String city);
}
