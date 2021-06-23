import 'package:dio/dio.dart';
import 'package:technical_interview/resources/urls.dart';
import 'package:technical_interview/service/entities/forecast_response_dto.dart';

class ApiRequest {
  Future<ForecastResponseDto> getWeather(String cityName) async {
    Dio dio = Dio();

    final response = await dio.get(Urls.apiRequest(cityName));

    if (response.statusCode == 200) {
      return ForecastResponseDto.fromJson(response.data);
    }
  }
}
