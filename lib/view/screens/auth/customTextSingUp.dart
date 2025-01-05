import 'package:flutter/material.dart';

class Customtextsingup extends StatelessWidget {
  const Customtextsingup(
      {super.key, required this.textone, required this.texttow, this.onTap});
  final String textone;
  final String texttow;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(textone),
      InkWell(
        onTap: onTap,
        child: Text(
          texttow,
          style:
              TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}
