import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/Screens/GetStartedScreen/getStartedScreen.dart';

class UserAuthScreen extends StatefulWidget {
  const UserAuthScreen({super.key});

  @override
  State<UserAuthScreen> createState() => _UserAuthScreenState();
}

class _UserAuthScreenState extends State<UserAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.only(top: 16.h, left: 28.w, right: 28.w, bottom: 30.h),
          color: Colors.white,
          height: 932.h,
          width: 430.w,
          child: FittedBox(
            child: Column(
              children: [
                SizedBox(
                    height: 392.h,
                    width: 375.w,
                    child:
                        Image.asset("assets/Screens/UserAuthScreen/Group 7.png")),
                SizedBox(
                    // color: Colors.blue,
                    // padding: EdgeInsets.only(top: 11.h, left: 10.w, right: 10.w),
                    height: 189.h,
                    width: 356.w,
                    child: Column(
                      children: [
                        SizedBox(
                            // color: Colors.green,
                            height: 117.h,
                            width: 356.w,
                            child: Column(children: [
                              SizedBox(
                                height: 35.h,
                                // color: Colors.red,
                                child: FittedBox(
                                  child: Text("Manage Your Hostel",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Black",
                                          fontSize: 28.sp,
                                          letterSpacing: 28.sp * 0.02,
                                          // height: 1.4.h,
                                          color: const Color(0XFF323232))),
                                ),
                              ),
                              SizedBox(
                                height: 35.h,
                                // color: Colors.red,
                                child: FittedBox(
                                  child: Text("Effortlessly & Boost",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Black",
                                          fontSize: 28.sp,
                                          letterSpacing: 28.sp * 0.02,
                                          height: 1.4.h,
                                          color: const Color(0XFF323232))),
                                ),
                              ),
                              SizedBox(
                                height: 35.h,
                                // color: Colors.red,
                                child: FittedBox(
                                  child: Text("Your Bookings",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Black",
                                          fontSize: 28.sp,
                                          letterSpacing: 28.sp * 0.02,
                                          height: 1.4.h,
                                          color: const Color(0XFF323232))),
                                ),
                              )
                            ])),
                        Container(
                            // color: Colors.green,
                            height: 60.h,
                            width: 400.w,
                            padding: EdgeInsets.only(left: 22.w, right: 22.w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 17.h,
                                  // color: Colors.red,
                                  child: FittedBox(
                                    child: Text(
                                        "Manage bookings, payments, and tenants",
                                        style: TextStyle(
                                            fontFamily: "Poppins-Light",
                                            fontSize: 14.sp,
                                            letterSpacing: 14.sp * 0.03,
                                            height: 1.4.h,
                                            // color: const Color(323232)
                                            color: const Color(0XFF787878))),
                                  ),
                                ),
                                SizedBox(
                                  height: 17.h,
                                  // color: Colors.red,
                                  child: FittedBox(
                                    child: Text("with ease Maximize Occupancy and",
                                        style: TextStyle(
                                            fontFamily: "Poppins-Light",
                                            fontSize: 14.sp,
                                            letterSpacing: 14.sp * 0.03,
                                            height: 1.4.h,
                                            color: const Color(0XFF787878)
                                            // color: const Color(323232)
                                            )),
                                  ),
                                ),
                                SizedBox(
                                  // color: Colors.red,
                                  height: 17.h,
                                  child: FittedBox(
                                    child: Text("revenue",
                                        style: TextStyle(
                                            fontFamily: "Poppins-Light",
                                            fontSize: 14.sp,
                                            letterSpacing: 14.sp * 0.03,
                                            height: 1.4.h,
                                            color: const Color(0XFF787878)
                                            // color: const Color(323232)
                                            )),
                                  ),
                                )
                              ],
                            ))
                        // IntrinsicWidth(
                        //             child: Text(
                        //                 "Manage bookings, payments, and tenants",
                        //                 style: TextStyle(
                        //                     fontFamily: "Poppins-Light",
                        //                     fontSize: 14.sp,
                        //                     letterSpacing: 14.sp * 0.03,
                        //                     height: 1.4.h,
                        //                     // color: const Color(323232)
                        //                     color: const Color(0XFF787878))),
                        //           ),
                        // IntrinsicWidth(
                        //             child: Text(
                        //                 "with ease Maximize Occupancy and",
                        //                 style: TextStyle(
                        //                     fontFamily: "Poppins-Light",
                        //                     fontSize: 14.sp,
                        //                     letterSpacing: 14.sp * 0.03,
                        //                     height: 1.4.h,
                        //                     // color: const Color(323232)
                        //                     color: const Color(0XFF787878))),
                        //           ),
                        // IntrinsicWidth(
                        //             child: Text(
                        //                 "revenue",
                        //                 style: TextStyle(
                        //                     fontFamily: "Poppins-Light",
                        //                     fontSize: 14.sp,
                        //                     letterSpacing: 14.sp * 0.03,
                        //                     height: 1.4.h,
                        //                     // color: const Color(323232)
                        //                     color: const Color(0XFF787878))),
                        //           ),
                      ],
                    )),
                IntrinsicHeight(
                  child: DotsIndicator(
                    position: 0,
                    dotsCount: 3,
                    decorator: DotsDecorator(
                        size: Size(9.h, 7.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        color: const Color.fromARGB(100, 158, 158, 158),
                        activeColor: const Color.fromARGB(255, 0, 239, 209),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        activeSize: Size(51.w, 7.h)),
                  ),
                ),
                Container(
                    height: 48.h,
                    width: 346.w,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.81),
                        border: Border.all(
                          color: const Color(0XFFE5E5E5),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Row(
                      children: [
                        Container(
                            height: 32.h,
                            width: 32.w,
                            padding: EdgeInsets.only(left: 5.w),
                            child: Image.asset(
                                "assets/Screens/UserAuthScreen/Phone.png")),
                        Expanded(
                          child: Align(
                              child: SizedBox(
                                height: 20.h,
                                child: const FittedBox(
                                  child: Text("Sign In with Phone Number",
                                      style: TextStyle(
                                        fontFamily: "Ag button",
                                      )),
                                ),
                              )),
                        )
                      ],
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 48.h,
                    width: 346.w,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.81),
                        border: Border.all(
                          color: const Color(0XFFE5E5E5),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Row(
                      children: [
                        Container(
                            height: 32.h,
                            width: 32.w,
                            padding: EdgeInsets.only(left: 5.w),
                            child: Image.asset(
                                "assets/Screens/UserAuthScreen/google.png")),
                        Expanded(
                          child: Align(
                              child: SizedBox(
                                height: 20.h,
                                child: const FittedBox(
                                  child: Text("Sign In with Google",
                                      style: TextStyle(
                                        fontFamily: "Ag button",
                                      )),
                                ),
                              )),
                        )
                      ],
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 48.h,
                    width: 346.w,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.81),
                        border: Border.all(
                          color: const Color(0XFFE5E5E5),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5.r))),
                    child: Row(
                      children: [
                        Container(
                            height: 32.h,
                            width: 32.w,
                            padding: EdgeInsets.only(left: 5.w),
                            child: Image.asset(
                                "assets/Screens/UserAuthScreen/apple.png")),
                        Expanded(
                          child: Align(
                              child: SizedBox(
                                height: 20.h,
                                child: const FittedBox(
                                  child: Text("Sign In with Apple",
                                      style: TextStyle(
                                        fontFamily: "Ag button",
                                      )),
                                ),
                              )),
                        )
                      ],
                    )),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {
                          Get.to(
                          ()=> const Getstartedscreen(),
                          transition: Transition.fadeIn,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeIn);
                        },
                  child: Container(
                      height: 54.h,
                      width: 347.w,
                      decoration: BoxDecoration(
                          color: const Color(0XFF00EFD1),
                          border: Border.all(
                            color: const Color(0XFF00EFD1),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15.r))),
                      child: Align(
                        child: SizedBox(
                          height: 25.h,
                          child: FittedBox(
                            child: Text("Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  // color: Colors.red,
                  height: 20.h,
                    child: Row(
                  children: [
                    SizedBox(
                      height: 3.5.h,
                      child: FittedBox(
                        child: Text("Already Have an account? ",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: const Color(0xFF000000),
                              letterSpacing: 0.015,
                              height: 0.24,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 3.5.h,
                      child: FittedBox(
                        child: Text("Sign In ",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: const Color(0xFF00EFD1),
                              letterSpacing: 0.015,
                              height: 0.24,
                            )),
                      ),
                    )
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
