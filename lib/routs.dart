import 'package:ecommerce/core/constant/routess.dart';
import 'package:ecommerce/view/screens/auth/SinngUp_Page.dart';
import 'package:ecommerce/view/screens/auth/Welcome_Page.dart';
import 'package:ecommerce/view/screens/auth/login_Page.dart';
import 'package:ecommerce/view/screens/onbording.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.WelcomePage: (context) => WelcomePage(),
  AppRoutes.SingUp: (context) => SinngupPage(),
  AppRoutes.Login: (context) => LoginPage(),
  AppRoutes.Onbording: (context) => Onbording(),
};
