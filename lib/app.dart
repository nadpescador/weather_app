import 'package:flutter/material.dart';
import 'package:technical_interview/presentation/home_page/home_page.dart';
import 'package:technical_interview/service/api_request.dart';

class App extends StatelessWidget {
  App({
    @required this.apiRequest,
  });

  final ApiRequest apiRequest;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        apiRequest: apiRequest,
      ),
    );
  }
}
