import 'package:flutter/material.dart';
import 'package:winstappa/Screens/Login/loginscreen.dart';
import 'package:winstappa/Widgets/uiwdea.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiWdea.CustomImage(imgurl: "Logo.png"),
            SizedBox(
              height: 10,
            ),
            UiWdea.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textInputtype: TextInputType.emailAddress),
            SizedBox(
              height: 10,
            ),
            UiWdea.CustomTextField(
                controller: passwordController,
                text: "password",
                tohide: true,
                textInputtype: TextInputType.text),
            SizedBox(
              height: 10,
            ),
            UiWdea.CustomTextField(
                controller: usernameController,
                text: "username",
                tohide: false,
                textInputtype: TextInputType.name),
            SizedBox(
              height: 30,
            ),
            UiWdea.CustomButton(callback: () {}, buttonname: "Sign Up"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alerady have an Acount",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                UiWdea.CustomTextButton(
                    text: "sign in",
                    callback: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
