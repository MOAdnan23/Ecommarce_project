import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:ecommerce/data/datasorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Cutomslideronbording extends GetView<OnbordingControllerImp> {
  const Cutomslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onbordingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(onbordingList[i].title!,
                    style: Theme.of(context).textTheme.headlineSmall),
                SizedBox(height: 80),
                Image.asset(
                  onbordingList[i].image!,
                  height: 230,
                  width: 200,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(onbordingList[i].body!,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge)),
              ],
            ));
  }
}
