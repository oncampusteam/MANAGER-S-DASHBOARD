import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/Screens/Property/aboutProperty.dart';

class Getstartedscreen extends StatefulWidget {
  const Getstartedscreen({super.key});

  @override
  State<Getstartedscreen> createState() => _GetstartedscreenState();
}

class _GetstartedscreenState extends State<Getstartedscreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 100.h, left: 30.w, right: 34.w),
            color: Colors.white,
            height: 935.h,
            width: 430.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 119.h,
                  width: 287.w,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicWidth(
                      child: Text("It's Easy To Get",
                          style: TextStyle(
                            fontFamily: "Outfit-Medium",
                            fontSize: 35.sp,
                          ))),
                                    IntrinsicWidth(
                      child: Text("Started With On",
                          style: TextStyle(
                            fontFamily: "Outfit-Medium",
                            fontSize: 35.sp,
                          ))),
                                    IntrinsicWidth(
                      child: Text("Campus",
                          style: TextStyle(
                            fontFamily: "Outfit-Medium",
                            fontSize: 35.sp,
                          ))),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                // IntrinsicWidth(
                //   child: Text(
                //     "1    Tell us about your property",
                //     style: TextStyle(
                //       fontFamily: "Poppins",
                //       fontSize: 26.sp,
                //       color: Colors.black,
                //       fontWeight: FontWeight.w600,
                //     )
                // )),
                Container(
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Colors.black.withOpacity(0.2)))),
                    // padding: EdgeInsets.only(right: 20.h),
                    height: 120.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: IntrinsicWidth(
                            child: SizedBox(
                              height: 30.h,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text("1    Tell us about your property",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 26.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            )),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox( height: 74.h, width: 256.w,
                              child: FittedBox( alignment: Alignment.centerLeft,
                                child: Text(
                                    "Share Key details like location\nroom type and amenities to\nattract students",
                                    style: TextStyle(
                                      fontFamily: "Poppins-ExtraLight",
                                      fontSize: 16.sp,
                                      color: const Color(0XFF787878),
                                      letterSpacing: 16.sp * 0.03,
                                      height: 1.6.h,
                                    )),
                              ),
                            ),
                            SizedBox(
                              // color: Colors.green,
                              // padding: EdgeInsets.only()
                              height: 140.h,
                              width: 100.w,
                              child: Stack(children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: SizedBox( 
                                    height: 120.h,
                                    width: 100.w,
                                    child: FittedBox(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          "assets/Screens/GetStartedScreen/smart_house.png",
                                          // fit: BoxFit.fill
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 76.h,
                                    left: 34.5.w,
                                    child: Image.asset(
                                        height: 10.h,
                                        width: 10.w,
                                        "assets/Screens/GetStartedScreen/onCampus.png")),
                              ]),
                            )
                          ],
                        ),
                      ),
                    ])),
                Container(
                    margin: EdgeInsets.only(top: 20.h),
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Colors.black.withOpacity(0.2)))),
                    // padding: EdgeInsets.only(right: 20.h),
                    height: 140.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: IntrinsicWidth(
                            child: SizedBox( height: 30.h,
                              child: FittedBox( alignment: Alignment.centerLeft,
                                child: Text("2    Make it stand out",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 26.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            )),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 140.h,
                            width: 243.w,
                            padding: EdgeInsets.only(top: 15.h),
                            child: FittedBox(
                              child: Text(
                                  "Set your pricing upload photos\nand videos, helping students\nfind the right fit while you stay\nin control",
                                  style: TextStyle(
                                    fontFamily: "Poppins-ExtraLight",
                                    fontSize: 16.sp,
                                    color: const Color(0XFF787878),
                                    letterSpacing: 16.sp * 0.03,
                                    height: 1.6.h,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 160.h,
                            width: 90.w,
                            child: SizedBox( 
                              height: 160.h,
                              width: 90.w,
                              child: Image.asset(
                                  "assets/Screens/GetStartedScreen/character.png",
                                  fit: BoxFit.fitHeight),
                            ),
                          )
                        ],
                      ),
                    ])),
                Container(
                    margin: EdgeInsets.only(top: 20.h,),
                    padding: EdgeInsets.only(bottom: 20.h),
                    decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Colors.black.withOpacity(0.2)))),
                    // padding: EdgeInsets.only(right: 20.h),
                    height: 170.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: IntrinsicWidth(
                            child: SizedBox( height: 30.h,
                              child: FittedBox(alignment: Alignment.centerLeft,
                                child: Text("3    Finish up and publish",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 26.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            )),
                      ),
                      // Container(color: Colors.blue, height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150.h,
                            width: 243.w,
                            padding: EdgeInsets.only(top: 35.h),
                            child: FittedBox( alignment: Alignment.centerLeft,
                              child: Text(
                                  "Choose booking approvals,\nset house rules and\ncancellation policies, review\nyour listing and get ready to\nreceive bookings",
                                  style: TextStyle(
                                    fontFamily: "Poppins-ExtraLight",
                                    fontSize: 16.sp,
                                    color: const Color(0XFF787878),
                                    letterSpacing: 16.sp * 0.03,
                                    height: 1.6.h,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 110.h,
                            width: 110.w,
                            child: Image.asset(
                                "assets/Screens/GetStartedScreen/items.png",
                                fit: BoxFit.fitHeight),
                          )
                        ],
                      ),
                    ])),
                SizedBox(height: 70.h),
                GestureDetector(
                  onTap: () {
                    Get.to(()=> const AboutProperty(),
                    transition: Transition.fadeIn,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn
                    );
                  },
                  child: Container(
                      height: 51.h,
                      width: 347.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          gradient: const LinearGradient(
                            colors: [Color(0XFF00EFD1), Color(0xFF008978)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          )),
                      child: Align(
                        child: SizedBox( height: 26.h,
                          child: FittedBox(
                            child: Text("Get Started",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                )),
                          ),
                        ),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
