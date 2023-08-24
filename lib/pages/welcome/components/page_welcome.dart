import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PageWelcome extends StatelessWidget {
  const PageWelcome(
      {super.key,
      required this.index,
      required this.buttonName,
      required this.title,
      required this.subTitle,
      required this.imagePath,
      required this.pageController});

  final int index;
  final String buttonName;
  final String title;
  final String subTitle;
  final String imagePath;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 345.w,
            height: 345.w,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            )),
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
        SizedBox(height: 100.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: FilledButton(
              style: FilledButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.w),
                  )),
              onPressed: () {
                if (index < 2) {
                  pageController.animateToPage(index + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.decelerate);
                } else {
                  // jump to a new page
                  context.go("/signIn");
                }
              },
              child: Text(
                buttonName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.normal),
              )),
        )
      ],
    );
  }
}
