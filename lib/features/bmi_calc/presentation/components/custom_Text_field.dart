// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.type,
    this.textalign = false,
  }) : super(key: key);
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? type;
  bool textalign;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v)=>"fill form",
      textAlign: textalign ? TextAlign.center : TextAlign.start,
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Color.fromARGB(255, 236, 236, 241),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
