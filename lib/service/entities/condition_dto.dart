import 'package:flutter/foundation.dart';

class ConditionDTO {
  ConditionDTO({
    @required this.text,
    @required this.icon,
  });

  final String text;
  final String icon;

  factory ConditionDTO.fromJson(Map<String, dynamic> json) {
    return ConditionDTO(
      text: json['text'],
      icon: json['icon'],
    );
  }
}
