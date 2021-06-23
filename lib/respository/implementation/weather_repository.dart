import 'package:flutter/foundation.dart';
import 'package:technical_interview/respository/i_weather_repository.dart';
import 'package:technical_interview/service/api_request.dart';
import 'package:technical_interview/service/entities/forecast_response_dto.dart';

class WeatherRepository implements IWeatherRepository {
  WeatherRepository({
    @required ApiRequest apiRequest,
  })  : _apiRequest = apiRequest,
        assert(apiRequest != null);

  final ApiRequest _apiRequest;

  @override
  Future<ForecastResponseDto> getWeather(String city) async {
    try {
      final response = await _apiRequest.getWeather(city);
      return response;
    } catch (e) {
      throw Error();
    }
  }
}
