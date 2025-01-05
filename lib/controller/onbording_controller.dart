import 'package:ecommerce/core/constant/routess.dart';
import 'package:ecommerce/data/datasorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnbordingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnbordingControllerImp extends OnbordingController {
  late PageController pageController;
  int currentPge = 0;
  @override
  next() {
    currentPge++;
    if (currentPge > onbordingList.length - 1) {
      Get.offAllNamed(AppRoutes.WelcomePage);
    } else {
      pageController.animateToPage(currentPge,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPge = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
