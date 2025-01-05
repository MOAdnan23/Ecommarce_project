import 'package:ecommerce/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class Cutomeimage extends StatelessWidget {
  const Cutomeimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: 100,
      child: Image.asset(
        Imageassets.imageLogin,
        width: 100,
        height: 100,
      ),
    );
  }
}
