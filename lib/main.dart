import 'package:flutter/material.dart';
import 'package:technical_interview/app.dart';
import 'package:technical_interview/service/api_request.dart';

void main() {
  final ApiRequest apiRequest = ApiRequest();

  runApp(App(
    apiRequest: apiRequest,
  ));
}
