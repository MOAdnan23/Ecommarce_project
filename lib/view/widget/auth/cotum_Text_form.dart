import 'package:flutter/material.dart';

class CotumTextForm extends StatelessWidget {
  const CotumTextForm(
      {required this.hinttext,
      required this.lable,
      required this.iconData,
      required this.mycontroller});
  final String hinttext;
  final String lable;
  final IconData iconData;
  final TextEditingController mycontroller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Text(lable),
          hintText: hinttext,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
