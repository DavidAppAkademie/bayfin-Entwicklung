// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RegistrationsText extends StatelessWidget {
  String text;
  String? hinttext;
  TextStyle? hintstyle;
  Color? color;

  RegistrationsText(
      {super.key,
      required this.text,
      this.hintstyle,
      this.hinttext,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.underline,
            decorationThickness: 1.35,
          ),
        ),
      ),
      TextFormField(
          decoration: InputDecoration(
        fillColor: const Color(0xffE6E9FF),
        contentPadding: const EdgeInsets.only(top: 0.0, left: 10, right: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        filled: true,
        hintText: hinttext,
        hintStyle: hintstyle,
      ))
    ]);
  }
}
