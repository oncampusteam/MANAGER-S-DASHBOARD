import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Property/property_step_3.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';
// import 'package:flutter_gif/flutter_gif.dart';
import 'package:gif/gif.dart';
import 'dart:math';

class PropertyStep2 extends StatefulWidget {
  const PropertyStep2({super.key});

  @override
  State<PropertyStep2> createState() => _AboutPropertyState();
}

class _AboutPropertyState extends State<PropertyStep2> with TickerProviderStateMixin {
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
                  child: Text("Step 2",
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
                    child: Text("Make your\nproperty stand out",
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
                    "Now, it's time time to bring your hostel to\nlife! Upload images and videos to\nhelp students visualize their stay for\nroom categories and pricing, and\ndefine important house rule.",
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
                  containerToColor: 1,
                  percentageToColor: 0,
                  handleNextTap: () {
                    Get.to(
                      () => const PropertyStep3(),
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

class InvertedHexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final hexagon = Path();
    final w = size.width;
    final h = size.height;

    hexagon.moveTo(w , 0);
    hexagon.lineTo(w, h * 0.25);
    hexagon.lineTo(w, h * 0.75);
    hexagon.lineTo(w * 0.5, h);
    hexagon.lineTo(0, h * 0.75);
    hexagon.lineTo(0, h * 0.25);
    hexagon.close();

    final fullRect = Path()..addRect(Rect.fromLTWH(0, 0, w, h));

    // Return area outside the hexagon
    return Path.combine(PathOperation.difference, fullRect, hexagon);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}



