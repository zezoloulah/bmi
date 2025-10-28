// data/models/bmi_response_model.dart

import 'package:bmi/features/bmi_calc/domain/entits/bmi_entitis.dart';



class BmiResponseModel extends BmiResponseEntity {
  BmiResponseModel({
    required super.status,
    super.error,
    required BmiDataModel super.data,
  });

  factory BmiResponseModel.fromJson(Map<String, dynamic> json) {
    return BmiResponseModel(
      status: json['status'],
      error: json['error'],
      data: BmiDataModel.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'error': error,
      'data': (data as BmiDataModel).toJson(),
    };
  }
}

class BmiDataModel extends BmiDataEntity {
  BmiDataModel({
    required super.height,
    required super.weight,
    required super.bmi,
    required super.risk,
    required super.summary,
    required super.recommendation,
  });

  factory BmiDataModel.fromJson(Map<String, dynamic> json) {
    return BmiDataModel(
      height: json['height'],
      weight: json['weight'],
      bmi: (json['bmi'] as num).toDouble(),
      risk: json['risk'],
      summary: json['summary'],
      recommendation: json['recommendation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'weight': weight,
      'bmi': bmi,
      'risk': risk,
      'summary': summary,
      'recommendation': recommendation,
    };
  }
}
