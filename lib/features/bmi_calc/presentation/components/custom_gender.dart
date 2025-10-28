

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGender extends StatelessWidget {
  CustomGender({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
    this.isSelected,
  });
  final String title;
  final String image;
  final Function()? onTap;
  bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:isSelected==true? Border.all(color: Colors.amber,width:3 ):null,
            ),
            child: SvgPicture.asset(image),
          ),
        ),
        Text(title),
      ],
    );
  }
}
