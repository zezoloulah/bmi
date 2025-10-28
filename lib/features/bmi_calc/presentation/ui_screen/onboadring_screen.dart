import 'package:bmi/core/theme/colors.dart';
import 'package:bmi/features/bmi_calc/presentation/components/onboarding_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.offWhite,
      appBar: AppBar(backgroundColor: AppColors.offWhite),
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            OnBoardingCard()
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 90,horizontal: 30),
            child: SvgPicture.asset("assets/image/first_img.svg"),
          ),
        ],
      ),
    );
  }
}

