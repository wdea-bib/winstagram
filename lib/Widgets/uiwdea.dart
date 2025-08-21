import 'package:flutter/material.dart';

class UiWdea {
  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
        onPressed: () {
          callback();
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Color(0XFF3797EF),
          ),
        ));
  }

  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool tohide,
      required TextInputType textInputtype}) {
    return Container(
      height: 44,
      width: 343,
      //ديكور حقل تسجيل الدخول
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          // keyboardType: textInputtype,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Color(0XFFFFFFFF)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF3797EF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        child: Center(
            child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        )),
      ),
    );
  }
}
