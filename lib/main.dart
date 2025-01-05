import 'package:ecommerce/routs.dart';
import 'package:ecommerce/view/screens/onbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MyServices s = new MyServices();
  await s.initialServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'EmilysCandy',
        textTheme: TextTheme(
            headlineSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            headlineMedium:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            bodyLarge: TextStyle(
              height: 2,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            )),
      ),
      home: Onbording(),
      routes: routes,
    );
  }
}
