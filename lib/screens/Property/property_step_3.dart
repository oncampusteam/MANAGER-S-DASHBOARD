import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:on_campus/screens/Property/add_picture_videos.dart';
import 'package:on_campus/screens/Property/gender_preference.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';
// import 'package:flutter_gif/flutter_gif.dart';
import 'package:gif/gif.dart';
import 'dart:math';

class PropertyStep3 extends StatefulWidget {
  const PropertyStep3({super.key});

  @override
  State<PropertyStep3> createState() => _AboutPropertyState();
}

class _AboutPropertyState extends State<PropertyStep3> with TickerProviderStateMixin {
  late GifController controller;

  @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this);
  }

  double maxHeight = 60.h;
  double minHeight = 40.h;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              saveExitQuestion(),
              Container(
                  // color: Colors.blue,
                  // margin: EdgeInsets.only(bottom: 20.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  height: 318.h, 
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Gif(
                      controller: controller,
                      image: const AssetImage(
                          "assets/Screens/Living Room.gif",
                        ),
                      autostart: Autostart.loop
                    ),
                    Positioned(
                      top: 0,
                      left:0,
                      child: Container(
                        height: 318.h,
                        width: 36.w,
                        color: Colors.white)
                    ),
                    Positioned(
                      top: 0,
                      right:0,
                      child: Container(
                        height: 318.h,
                        width: 40.w,
                        color: Colors.white)
                    ),
                    Positioned(
                      top: 318*0.4155.h,
                      left:50,
                      child: Transform.rotate(
                        angle: 105.5 * pi / 180,
                        child: Container(
                          height: 318.h,
                          width: 75.w,
                          color: Colors.white),
                      )
                    ),
                    Positioned(
                      top: 318*0.36.h,
                      right:0,
                      child: Transform.rotate(
                        angle: 252 * pi / 180,
                        child: Container(
                          height: 318.h,
                          width: 75.w,
                          color: Colors.white),
                      )
                    ),
                    Positioned(
                      bottom: 318*0.395.h,
                      right:15,
                      child: Transform.rotate(
                        angle:  105* pi / 180,
                        child: Container(
                          height: 320.h,
                          width: 75.w,
                          color: Colors.white),
                      )
                    ),
                    Positioned(
                      bottom: 318*0.395.h,
                      left:15,
                      child: Transform.rotate(
                        angle:  72* pi / 180,
                        child: Container(
                          height: 320.h,
                          width: 75.w,
                          color: Colors.white),
                      )
                    ),
                    ]
                  )
                  ),
              Container(
                height: 30.h,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text("Step 3",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF000000),
                        fontSize: 20.sp,
                        height: 1.4.h,
                        letterSpacing: 20.sp * 0.1,
                      )),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 74.h,
                // width: 237.w,
                margin: EdgeInsets.only(left: 20.h),
                // padding: EdgeInsets.symmetric(horizontal: 20.h),
                child:
                    FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text("Finish Up and\npublish",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF000000),
                          fontSize: 36.sp,
                          height: 1.3.h,
                          letterSpacing: 20.sp * 0.02,
                        )),
                  ),
                 
              ),
              Container(
                height: 142.h,
                // width: 371.w,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You're almost there! Set your booking\napproval preferences, choose house\nrule, and finalize your cancellation\npolicies and start welcoming students",
                    style: TextStyle(
                      fontFamily: "Poppins-Light",
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF484848),
                      fontSize: 24.sp,
                      height: 1.6.h,
                      letterSpacing: 20.sp * 0.1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              bottomIndicator(
                  proceed: true,
                  height: 130.h,
                  screenWidth: MediaQuery.of(context).size.width,
                  containerToColor: 2,
                  percentageToColor: 0,
                  handleNextTap: () {
                    Get.to(
                      () => const GenderPreference(),
                      transition: Transition.fadeIn,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn
                    );
                  }
                  ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}




