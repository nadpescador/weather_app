import 'package:flutter/foundation.dart';

class LocationDTO {
  LocationDTO({
    @required this.name,
    @required this.country,
  });

  final String name;
  final String country;

  factory LocationDTO.fromJson(Map<String, dynamic> json) {
    return LocationDTO(
      name: json['name'],
      country: json['country'],
    );
  }
}
