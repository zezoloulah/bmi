import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCalcCard extends StatelessWidget {
  const CustomCalcCard({
    super.key,
    required this.height,
    required this.color,
    required this.title,
    required this.age,
    this.des,
    this.bmi,  this.hight="",  this.weight="",
  });
  final double height;
  final Color color;
  final String title;
  final String age;
  final String? des;
  final String? bmi;
  final String hight;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    age,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 2),
                  des == null
                      ? Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60, top: 10),
                              child: Text(
                                bmi.toString(),
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                "BMI Calc",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "$hight ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Height",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 45,
                                  width: 1,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 20),
                                Column(
                                  children: [
                                    Text(
                                      "$weight ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Weight",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                      : Container(
                        height: 240,
                        width: 300,
                        child: SingleChildScrollView(
                          child: Text(
                            "$des",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
            des == null
                ? SvgPicture.asset("assets/image/body.svg")
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
