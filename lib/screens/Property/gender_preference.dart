import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Property/bookings_approval.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';

class GenderPreference extends StatefulWidget {
  const GenderPreference({super.key});

  @override
  State<GenderPreference> createState() => _GenderPreferenceState();
}

// bool proceed = false;
bool selected = false;
bool maleOnly = false;
bool femaleOnly = false;
bool both = false;

class _GenderPreferenceState extends State<GenderPreference> {
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
                height: 682.h,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 78.h,
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Who can Stay? Set\ngender preference.",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 30.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Some property owners prefer to rent to\nspecific genders. Let us know who you\nwelcome in your space",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.h),
                              Text(
                                "Male Only",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                              Text(
                                "(only male tenants allowed)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w100,
                                  fontSize: 16.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                            ],
                          ),
                          !maleOnly
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (femaleOnly | both != true) {
                                        maleOnly = true;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.circle_outlined,
                                    size: 18,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      maleOnly = false;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/Screens/Property/gender_preference/Component 10.png",
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                "Female Only",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                              Text(
                                "(only female tenants allowed)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w100,
                                  fontSize: 16.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                            ],
                          ),
                          !femaleOnly
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (maleOnly | both != true) {
                                        femaleOnly = true;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.circle_outlined,
                                    size: 18,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      femaleOnly = false;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/Screens/Property/gender_preference/Component 10.png",
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                "Both male & Female",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                              Text(
                                "(No restrictions, all genders welcome)",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w100,
                                  fontSize: 16.sp,
                                  color: const Color(0xFF01070F),
                                ),
                              ),
                            ],
                          ),
                          !both
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (maleOnly | femaleOnly != true) {
                                        both = true;
                                      }
                                    });
                                  },
                                  child: const Icon(
                                    Icons.circle_outlined,
                                    size: 18,
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      both = false;
                                    });
                                  },
                                  child: Image.asset(
                                    "assets/Screens/Property/gender_preference/Component 10.png",
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              bottomIndicator(
                proceed: maleOnly | femaleOnly | both == true ? true : false,
                height: 100.h,
                containerToColor: 2,
                screenWidth: MediaQuery.of(context).size.width,
                percentageToColor: 0,
                handleNextTap: () {
                  Get.to(
                    () => const BookingsApproval(),
                    transition: Transition.fadeIn,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
