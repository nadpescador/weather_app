class Urls {
  static var http_protocol = "http:";

  static apiRequest(String cityName) =>
      'http://api.weatherapi.com/v1/forecast.json?key=dc9ffce7650b4352926221056211905&q=$cityName';
}
