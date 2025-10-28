import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/data/respoitory/bm_calc_repository.dart';
import 'package:bmi/features/bmi_calc/domain/use_cases/calculater_use_case.dart';
import 'package:bmi/features/bmi_calc/presentation/components/bottom.dart';
import 'package:bmi/features/bmi_calc/presentation/components/custom_Text_field.dart';
import 'package:bmi/features/bmi_calc/presentation/components/custom_gender.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/calc_bmi_screen.dart';
import 'package:flutter/material.dart';

class DataBmiScreen extends StatefulWidget {
  const DataBmiScreen({super.key});

  @override
  State<DataBmiScreen> createState() => _DataBmiScreenState();
}

class _DataBmiScreenState extends State<DataBmiScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDayController = TextEditingController();
  TextEditingController hightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  bool? flag;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "BMI",
                        style: TextStyle(
                          fontSize: 40,
                          color: AppColors.logoColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Name"),
                    SizedBox(height: 10),
                    CustomTextField(controller: nameController),
                    SizedBox(height: 10),
                    Text("Birth Day"),
                    SizedBox(height: 10),
                    CustomTextField(controller: birthDayController),
                    SizedBox(height: 40),
                    Text("Choose Gender"),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomGender(
                          title: "Male",
                          image: "assets/image/male.svg",
                          isSelected: flag == true,
                          onTap: () {
                            flag = true;
                            setState(() {});
                          },
                        ),
                        CustomGender(
                          title: "Female",
                          image: "assets/image/female.svg",
                          isSelected: flag == false,
                          onTap: () {
                            flag = false;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Your Height(cm)"),
                    SizedBox(height: 20),
                    CustomTextField(
                      controller: hightController,
                      prefixIcon: IconButton(
                        onPressed: () {
                          hightController.text =
                              (int.parse(hightController.text) + 1).toString();
                              setState(() {
                                
                              });
                        },
                        icon: Icon(Icons.add),
                      ),
                      suffixIcon: IconButton(
                        onPressed:  () {
                          hightController.text =
                              (int.parse(hightController.text) - 1).toString();
                              setState(() {
                                
                              });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      textalign: true,
                    ),
                    SizedBox(height: 20),
                    Text("Your wight(cm)"),
                    SizedBox(height: 20),
                    CustomTextField(
                      textalign: true,
                      controller: weightController,
                      prefixIcon: IconButton(
                        onPressed:  () {
                          weightController.text =
                              (int.parse(weightController.text) + 1).toString();
                              setState(() {
                                
                              });
                        },
                        icon: Icon(Icons.add),
                      ),
                      suffixIcon: IconButton(
                        onPressed:  () {
                          weightController.text =
                              (int.parse(weightController.text) - 1).toString();
                              setState(() {
                                
                              });
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Bottom(
                        title: "Calculate BMI",
                        onTap: () {
                          return Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => CalcBmiScreen(
                                    hight: hightController.text,
                                    weight: weightController.text,
                                    name: nameController.text,
                                    age: birthDayController.text,
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
