import 'package:ecommerce/core/constant/routess.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/subscribe-3534409_1920.jpg')),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: Center(
                child: Lottie.asset(
                    'assets/images/6793c5a5-0795-4193-92a3-5f3f6dd10316.json',
                    height: 100,
                    width: 80),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16)),
                    height: 60,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.SingUp);
                      },
                      child: Center(
                          child: Text('Sing Up',
                              style: Theme.of(context).textTheme.bodyLarge)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16)),
                    height: 60,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.Login);
                      },
                      child: Center(
                          child: Text('Login',
                              style: Theme.of(context).textTheme.bodyLarge)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
