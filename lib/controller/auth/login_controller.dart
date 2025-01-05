import 'package:ecommerce/core/constant/routess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  gotoSinup();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {}

  @override
  gotoSinup() {
    Get.toNamed(AppRoutes.SingUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
