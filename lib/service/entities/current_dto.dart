import 'package:technical_interview/service/entities/condition_dto.dart';

class CurrentDTO {
  CurrentDTO({
    this.conditionDTO,
    this.lastUpdated,
  });

  String lastUpdated;
  ConditionDTO conditionDTO;

  factory CurrentDTO.fromJson(Map<String, dynamic> json) {
    return CurrentDTO(
      conditionDTO: ConditionDTO.fromJson(json['condition']),
      lastUpdated: json['last_updated'],
    );
  }
}
