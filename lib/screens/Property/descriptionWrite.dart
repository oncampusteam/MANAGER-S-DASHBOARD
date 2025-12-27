import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/propertyLocation.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";

class DescriptionWrite extends StatefulWidget {
  const DescriptionWrite({super.key});

  @override
  State<DescriptionWrite> createState() => _DescriptionWriteState();
}

class _DescriptionWriteState extends State<DescriptionWrite> {
  TextEditingController descriptionWrite = TextEditingController();
  @override
  void initState() {
    super.initState();
    descriptionWrite.addListener(_updateState);
  }

  void _updateState() {
    setState(() {
      if (descriptionWrite.value.text.isNotEmpty) {
        proceed = true;
      }
    });
  }

  bool proceed = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  saveExitQuestion(),
                  Container(
                    height: 78.h,
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Write a description for\nyour property?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    height: 55.h,
                    child: FittedBox(
                      child: Text(
                        "Share with us what makes your property\nspecial",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFB0B0B0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    height: 100.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFB0B0B0)),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: TextField(
                      controller: descriptionWrite,
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: bottomIndicator(
                  proceed: proceed,
                  height: 150.h,
                  percentageToColor: 3 * (0.125),
                  screenWidth: MediaQuery.of(context).size.width,
                  handleNextTap: () {
                    Get.to(
                      () => const PropertyLocation(),
                      transition: Transition.fadeIn,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
