import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? ceklis = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
          activeColor: Colors.white,
          value: ceklis,
          onChanged: (status) {
            setState(() {
              ceklis = status;
            });
          }),
    );
  }
}
