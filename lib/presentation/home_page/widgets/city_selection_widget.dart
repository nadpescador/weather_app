import 'package:flutter/material.dart';
import 'package:technical_interview/presentation/weather_page/weather_page.dart';
import 'package:technical_interview/resources/strings.dart';
import 'package:technical_interview/service/api_request.dart';

class CitySelectionWidget extends StatefulWidget {
  const CitySelectionWidget({
    Key key,
    @required this.apiRequest,
  }) : super(key: key);

  final ApiRequest apiRequest;

  @override
  _CitySelectionWidgetState createState() => _CitySelectionWidgetState();
}

class _CitySelectionWidgetState extends State<CitySelectionWidget> {
  TextEditingController cityFormController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Strings.city_selection_title),
        TextField(
          controller: cityFormController,
        ),
        TextButton(
          onPressed: () async {
            final forecast = await widget.apiRequest.getWeather(cityFormController.text);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherPage(
                  forecast: forecast,
                ),
              ),
            );
          },
          child: Text('Buscar clima'),
        ),
      ],
    );
  }
}
