import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/data/respoitory/bm_calc_repository.dart';
import 'package:bmi/features/bmi_calc/domain/use_cases/calculater_use_case.dart';

import 'package:bmi/features/bmi_calc/presentation/components/bottom.dart';
import 'package:bmi/features/bmi_calc/presentation/components/custom_calc_card.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/data_bmi_screen.dart';

import 'package:flutter/material.dart';

class CalcBmiScreen extends StatefulWidget {
  const CalcBmiScreen({
    super.key,
    required this.hight,
    required this.weight,
    required this.name,
    required this.age,
  });
  final String hight;
  final String weight;
  final String name;
  final String age;

  @override
  State<CalcBmiScreen> createState() => _CalcBmiScreenState();
}

class _CalcBmiScreenState extends State<CalcBmiScreen> {
  var useCase = CalculaterUseCase(
    baseBmiCalcRepository: BmiCalcRepositoryImplementation(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: useCase.calcBmi(hight: widget.hight, weight: widget.weight),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (asyncSnapshot.hasData) {
            var data = asyncSnapshot.data;
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  CustomCalcCard(
                    height: 298,
                    color: AppColors.purple,
                    title: widget.name,
                    age: "A ${widget.age} years old male.",
                    bmi: data!.data.bmi.toString().substring(0,5),
                    hight: data.data.height,
                    weight: data.data.weight,
                  ),
                  SizedBox(height: 20),
                  CustomCalcCard(
                    height: 330,
                    color: AppColors.logoColor,
                    title: "Under Weight",
                    age: data.data.risk,
                    des:
data.data.recommendation                  ),
                  SizedBox(height: 12),
                  Bottom(
                    title: "Calculate BMI Again",
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DataBmiScreen()));
                    },
                  ),
                ],
              ),
            );
          }
          return Center(child: Text("done"));
        },
      ),
    );
  }
}
