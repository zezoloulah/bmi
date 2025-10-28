import 'package:bmi/features/bmi_calc/data/models/bmi_model.dart';
import 'package:bmi/features/bmi_calc/domain/respoitory/base_bmi_calc_repository.dart';
import 'package:dio/dio.dart';

class BmiCalcRepositoryImplementation extends BaseBmiCalcRepository {
  @override
  Future<BmiResponseModel> calcBmi({
    required String hight,
    required String weight,
    String? unit = "metric",
  }) async {
    print("zezo");
    final dio = Dio();
    try {
      var res = await dio.get(
        "https://api.apiverve.com/v1/bmicalculator?weight=$weight&height=$hight&unit=$unit",
        options: Options(
          headers: {
            "X-API-Key": "ca574273-1e75-4127-924a-d6c26e01a334",
            "Accept": "application/json",
          },
        ),
      );
      print(res.data);
      var data = BmiResponseModel.fromJson(res.data);
      print('=================================================>$data');
      return data;
    } catch (e) {
      print(
        '=================================================>${e.toString()}',
      );
      throw e;
    }
  }

  //   Future<BmiResponseModel> calcBmi({
  //   required String height,
  //   required String weight,
  //   String? unit = "metric",
  // }) async {

  // }
}
