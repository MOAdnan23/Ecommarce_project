import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPrefrencess;
  Future<MyServices> init() async {
    sharedPrefrencess = await SharedPreferences.getInstance();
    return this;
  }

  initialServices() async {
    await Get.putAsync(() => MyServices().init());
  }
}
