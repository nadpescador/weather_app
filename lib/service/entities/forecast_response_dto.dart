class ForecastResponseDto {
  Location location;
  Current current;

  ForecastResponseDto({this.location, this.current});

  ForecastResponseDto.fromJson(Map<String, dynamic> json) {
    location = Location.fromJson(json['location']);
    current = Current.fromJson(json['current']);
  }
}

class Location {
  String name;
  String country;

  Location({
    this.name,
    this.country,
  });

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
  }
}

class Current {
  String lastUpdated;
  double tempC;
  Condition condition;

  Current({
    this.lastUpdated,
    this.tempC,
    this.condition,
  });

  Current.fromJson(Map<String, dynamic> json) {
    lastUpdated = json['last_updated'];
    tempC = json['temp_c'];
    condition = new Condition.fromJson(json['condition']);
  }
}

class Condition {
  String text;
  String icon;
  int code;

  Condition({this.text, this.icon, this.code});

  Condition.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    icon = json['icon'];
    code = json['code'];
  }
}

class Day {
  double maxtempC;
  double mintempC;

  Condition condition;

  Day({
    this.maxtempC,
    this.mintempC,
    this.condition,
  });

  Day.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'];
    mintempC = json['mintemp_c'];
    condition = Condition.fromJson(json['condition']);
  }
}
