import 'package:bmi/features/bmi_calc/data/models/bmi_model.dart';

abstract class BaseBmiCalcRepository {
  Future<BmiResponseModel> calcBmi({
    required String hight,
    required String weight,
    String? unit = "metric",
  });
}
