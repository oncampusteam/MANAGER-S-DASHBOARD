import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/descriptionWrite.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";

class PropertyName extends StatefulWidget {
  const PropertyName({super.key});

  @override
  State<PropertyName> createState() => _PropertyNameState();
}

class _PropertyNameState extends State<PropertyName> {
  TextEditingController propertyName = TextEditingController();

  bool proceed = false;

  @override
  void initState() {
    super.initState();
    propertyName.addListener(_updateState);
  }

  void _updateState() {
    setState(() {
      if (propertyName.value.text.isNotEmpty) {
        proceed = true;
      }
    });
  }

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
                        "What's the name of your\nproperty?",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    height: 100.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFB0B0B0)),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: TextField(
                      controller: propertyName,
                      decoration: InputDecoration(
                        hintText: "Albert-Acquah hall",
                        hintStyle: TextStyle(
                          color: const Color(0xFFB0B0B0),
                          fontSize: 16.sp,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
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
                  percentageToColor: 2 * (0.125),
                  screenWidth: MediaQuery.of(context).size.width,
                  handleNextTap: () {
                    Get.to(
                      () => const DescriptionWrite(),
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
