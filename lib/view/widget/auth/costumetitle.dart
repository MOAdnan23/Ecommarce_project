import 'package:flutter/material.dart';
import 'package:path/path.dart';

class Costumetitle extends StatelessWidget {
  const Costumetitle({required this.nameTextSpecial, required this.themeData});
  final String nameTextSpecial;
  final TextStyle themeData;
  @override
  Widget build(BuildContext context) {
    return Text(
      nameTextSpecial,
      textAlign: TextAlign.center,
      style: themeData,
    );
  }
}
