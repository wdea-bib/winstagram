// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:winstappa/Screens/SingUp/signupscreen.dart';
import 'package:winstappa/Widgets/UiWdea.dart';

import '../bottomnav/bottomnav.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiWdea.CustomImage(imgurl: "Logo.png"),
            const SizedBox(
              height: 20.0,
            ),
            UiWdea.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textInputtype: TextInputType.emailAddress),
            const SizedBox(
              height: 15,
            ),
            UiWdea.CustomTextField(
                controller: passwordController,
                text: "password",
                tohide: true,
                textInputtype: TextInputType.text),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: UiWdea.CustomTextButton(
                    text: "Forget password",
                    callback: () {},
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            UiWdea.CustomButton(
                callback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavScreen(),
                      ));
                },
                buttonname: 'Log in'),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiWdea.CustomImage(imgurl: "Shape.png"),
                UiWdea.CustomTextButton(
                  text: "Log in with Facebook",
                  callback: () {},
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'OR',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Do't have an acount?",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                UiWdea.CustomTextButton(
                  text: "Sing Up",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
