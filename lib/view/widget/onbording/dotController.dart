import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:ecommerce/data/datasorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Dotcontroller extends StatelessWidget {
  const Dotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnbordingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onbordingList.length,
                    (Index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration: Duration(milliseconds: 900),
                        width: controller.currentPge == Index ? 20 : 5,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10),
                        )))
              ],
            ));
  }
}
