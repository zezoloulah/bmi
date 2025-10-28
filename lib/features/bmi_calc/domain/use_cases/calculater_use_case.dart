// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi/features/bmi_calc/domain/entits/bmi_entitis.dart';
import 'package:bmi/features/bmi_calc/domain/respoitory/base_bmi_calc_repository.dart';

class CalculaterUseCase {
  BaseBmiCalcRepository baseBmiCalcRepository;
  CalculaterUseCase({required this.baseBmiCalcRepository});
  Future<BmiResponseEntity> calcBmi({
    required String hight,
    required String weight,
    String? unit = "metric",
  }) {
    return baseBmiCalcRepository.calcBmi(hight: hight, weight: weight);
  }
}
