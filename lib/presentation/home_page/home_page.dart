import 'package:flutter/material.dart';
import 'package:technical_interview/presentation/home_page/widgets/city_selection_widget.dart';
import 'package:technical_interview/resources/strings.dart';
import 'package:technical_interview/service/api_request.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.apiRequest,
  }) : super(key: key);
  final ApiRequest apiRequest;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(Strings.weather_appbar_title)),
        body: Center(
          child: Container(
            child: CitySelectionWidget(
              apiRequest: apiRequest,
            ),
          ),
        ),
      ),
    );
  }
}
