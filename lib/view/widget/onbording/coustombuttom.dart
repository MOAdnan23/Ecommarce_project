import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CoustombuttomOnbording extends GetView<OnbordingControllerImp> {
  const CoustombuttomOnbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      height: 40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 2),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: Colors.blueAccent,
        child: Text('continue'),
      ),
    );
  }
}
