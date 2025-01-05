import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/imageassets.dart';
import 'package:ecommerce/view/screens/auth/customTextSingUp.dart';
import 'package:ecommerce/view/screens/auth/custom_Buttom_Auth.dart';
import 'package:ecommerce/view/widget/auth/costumetitle.dart';
import 'package:ecommerce/view/widget/auth/cotum_Text_form.dart';
import 'package:ecommerce/view/widget/auth/cutomeImage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Costumetitle(
            nameTextSpecial: 'Login',
            themeData: Theme.of(context).textTheme.bodyLarge!),
        backgroundColor: const Color(0xffA3D3FF),
      ),
      body: Container(
        color: Color(0xffFFFFFF),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Costumetitle(
                nameTextSpecial: 'Welcome Back',
                themeData: Theme.of(context).textTheme.headlineMedium!),
            Cutomeimage(),
            Costumetitle(
                nameTextSpecial: 'Login with Your Email And Passowrd',
                themeData: Theme.of(context).textTheme.bodyLarge!),
            const SizedBox(
              height: 30,
            ),
            CotumTextForm(
              mycontroller: controllerImp.email,
              hinttext: 'Enter Your Email',
              lable: 'Email',
              iconData: Icons.email_outlined,
            ),
            SizedBox(
              height: 30,
            ),
            CotumTextForm(
              mycontroller: controllerImp.password,
              hinttext: 'Enter Your Passowrd',
              lable: 'Passord',
              iconData: Icons.lock,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(Imageassets.imagShop),
            CustomButtomAuth(
              text: 'Login',
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Customtextsingup(
                textone: 'Don\'t Have an acount?',
                texttow: '    Sing Up',
                onTap: () {
                  controllerImp.gotoSinup();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
