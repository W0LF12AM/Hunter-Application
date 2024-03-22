import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  MyTextfield({
    super.key,
    required this.hintText,
    required this.icon,
    required this.icons,
    required this.textcontroller
  });

  final TextEditingController? textcontroller;
  final String hintText;
  final Widget? icon;
  final Widget? icons;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: icon,
          suffixIcon: icons,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          hintText: hintText),
    );
  }
}
