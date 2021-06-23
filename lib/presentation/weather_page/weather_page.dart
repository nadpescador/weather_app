import 'package:flutter/material.dart';
import 'package:technical_interview/resources/urls.dart';
import 'package:technical_interview/service/entities/forecast_response_dto.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({
    Key key,
    @required this.forecast,
  })  : assert(forecast != null),
        super(key: key);

  final ForecastResponseDto forecast;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(forecast.location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            Urls.http_protocol + forecast.current.condition.icon,
            scale: 0.8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                forecast.location.country + ", " + forecast.location.name,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Text(
            forecast.current.tempC.toString(),
            style: TextStyle(fontSize: 35),
          ),
        ],
      ),
    );
  }
}
