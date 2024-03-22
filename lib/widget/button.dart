// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.tombol, required this.goto});

  final String tombol;
  void Function()? goto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goto,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        height: 50,
        width: 150,
        child: Center(
            child: Text(
          tombol,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        )),
      ),
    );
  }
}
