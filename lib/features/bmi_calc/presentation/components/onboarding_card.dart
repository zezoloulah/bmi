import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/presentation/ui_screen/data_bmi_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      height: 400,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Know Your Body Better ,\nGet Your BMI Score in Less Than a Minute!',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40),
          Text(
            'It takes just 30 seconds – and your health is worth it!',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: AppColors.offWhite,
            ),
          ),
          SizedBox(height: 50),
          Container(color: AppColors.offWhite, height: 1, width: 400),
          SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DataBmiScreen();
                  },
                ),
              );
            },
            child: Text(
              'Get Start',
              style: TextStyle(
                color: AppColors.offWhite,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.darkPurple),
              fixedSize: WidgetStatePropertyAll(Size(400, 50)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
