class BmiResponseEntity {
  final String status;
  final String? error;
  final BmiDataEntity data;

  BmiResponseEntity({
    required this.status,
    required this.error,
    required this.data,
  });
  factory BmiResponseEntity.fromjson(Map<String, dynamic> json) {
    return BmiResponseEntity(
      status: json["status"],
      error: json["error"],
      data: BmiDataEntity.fromJson(json["data"]),
    );
  }
}

class BmiDataEntity {
  final String height;
  final String weight;
  final double bmi;
  final String risk;
  final String summary;
  final String recommendation;

  BmiDataEntity({
    required this.height,
    required this.weight,
    required this.bmi,
    required this.risk,
    required this.summary,
    required this.recommendation,
  });
  factory BmiDataEntity.fromJson(Map<String, dynamic> json) {
    return BmiDataEntity(
      height: json["height"],
      weight: json["weight"],
      bmi: (json["bmi"] as num).toDouble(),
      risk: json["risk"],
      summary: json["summary"],
      recommendation: json["height"],
    );
  }
}
