import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageWelcome extends StatelessWidget {
  const PageWelcome(
      {super.key,
      required this.index,
      required this.buttonName,
      required this.title,
      required this.subTitle,
      required this.imagePath});

  final int index;
  final String buttonName;
  final String title;
  final String subTitle;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 345.w, height: 345.w, child: Image.asset(imagePath)),
        Text(
          title,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22.sp,
              fontWeight: FontWeight.normal),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
            width: 325.w,
            height: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 100.h, left: 15.w, right: 15.w),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15.w),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: const Offset(0, 2))
                ]),
            child: Text(
              buttonName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.normal),
            ))
      ],
    );
  }
}
