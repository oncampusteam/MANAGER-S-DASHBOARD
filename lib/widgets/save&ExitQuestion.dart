import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

Widget saveExitQuestion() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 30.w),
      height: 45.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 124.h,
              padding: EdgeInsets.all(14.h),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50.r)),
              child: FittedBox(
                child: Text("Save & Exit",
                    style: TextStyle(
                        fontFamily: "Roboto-Medium",
                        fontSize: 16.sp,
                        height: 1.2.h)),
              )),
          Container(
              width: 124.h,
              padding: EdgeInsets.all(14.h),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50.r)),
              child: FittedBox(
                child: Text("Questions?",
                    style: TextStyle(
                        fontFamily: "Roboto-Medium",
                        fontSize: 16.sp,
                        height: 1.2.h)),
              ))
        ],
      ));
}
