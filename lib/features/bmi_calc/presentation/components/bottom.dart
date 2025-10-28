import 'package:bmi/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key, required this.title, this.onTap,});
  final String title;
  final Function()? onTap;
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: Text(
        widget.title,
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
    );
  }
}
