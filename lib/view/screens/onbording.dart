import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:ecommerce/view/widget/onbording/coustombuttom.dart';
import 'package:ecommerce/view/widget/onbording/cutomSliderOnbording.dart';
import 'package:ecommerce/view/widget/onbording/dotController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnbordingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(flex: 3, child: Cutomslideronbording()),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Dotcontroller(),
                  Spacer(
                    flex: 2,
                  ),
                  CoustombuttomOnbording()
                ],
              ))
        ],
      ),
    ));
  }
}
