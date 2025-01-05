import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  CustomButtomAuth({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blueAccent,
        padding: EdgeInsets.all(8),
        onPressed: () {},
        textColor: Colors.white,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
