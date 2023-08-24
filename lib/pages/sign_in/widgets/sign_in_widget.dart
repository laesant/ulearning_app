import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/values/colors.dart';

AppBar buildAppBar() => AppBar(
    bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1.0), child: Divider()),
    centerTitle: true,
    title: Text("Conecte-se",
        style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 18.sp,
            fontWeight: FontWeight.normal)));

/// We need context for accessing bloc
Widget buildThirdPartyLogin(BuildContext context) => Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    alignment: Alignment.center,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _reusableIcons('google.png', () {}),
      _reusableIcons('apple.png', () {}),
      _reusableIcons('facebook.png', () {})
    ]));

Widget _reusableIcons(String iconName, VoidCallback onTap) => GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
        radius: 20.w, child: Image.asset('assets/icons/$iconName')));

Widget reusableText(String text) => Padding(
    padding: EdgeInsets.only(bottom: 5.h),
    child: Text(text,
        style: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.normal,
            fontSize: 14.sp)));

Widget buildTextField(String hintText, IconData icon,
        {bool obscureText = false}) =>
    TextField(
        keyboardType: TextInputType.multiline,
        style: TextStyle(
            color: AppColors.primaryText,
            fontFamily: "Avenir",
            fontWeight: FontWeight.normal,
            fontSize: 12.sp),
        autocorrect: false,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: Icon(icon),
            border: OutlineInputBorder(
                borderSide: const BorderSide(width: 1.2),
                borderRadius: BorderRadius.circular(15))));

Widget forgotPassword() => TextButton(
    onPressed: () {},
    child: Text("Esqueceu sua senha?",
        style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.primaryText,
            decorationColor: AppColors.primaryText,
            decorationThickness: 2,
            decoration: TextDecoration.underline)));

Widget buildLogInAndRegButton(String buttonName, BuildContext context,
        {Color buttonColor = Colors.white, bool withEdge = true}) =>
    FilledButton(
        style: FilledButton.styleFrom(
            backgroundColor: buttonColor,
            elevation: 2,
            fixedSize: Size(325.w, 50.h),
            side: withEdge
                ? const BorderSide(
                    width: 1.2, color: AppColors.primaryFourElementText)
                : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Text(buttonName,
            style: TextStyle(
                color:
                    buttonColor == Colors.white ? Colors.black : Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.normal)));
