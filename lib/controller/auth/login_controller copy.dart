import 'package:ecommerce/core/constant/routess.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SigUpcontroller extends GetxController {
  SingUp();
  gotoSingIn();
}

class SigUpcontrollerImp extends SigUpcontroller {
  late TextEditingController phone;
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;

  @override
  gotoSingIn() {
    Get.offNamed(AppRoutes.Login);
  }

  @override
  void onInit() {
    phone = TextEditingController();
    userName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  SingUp() {}
}
