import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
// import 'package:on_campus/widgets/hostelDescriptionCard.dart';

class GetPropertyReady extends StatefulWidget {
  const GetPropertyReady({super.key});

  @override
  State<GetPropertyReady> createState() => _GetPropertyReadyState();
}

class _GetPropertyReadyState extends State<GetPropertyReady> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: const Icon(Icons.chevron_left),
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: Constant.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Constant.height * 0.1,
                  width: Constant.width,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Let's get your property\nready!",
                      style: TextStyle(
                        fontFamily: "Outfit-Medium",
                        // fontWeight: FontWeight.w600,
                        fontSize: 35.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Constant.height * 0.025),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: Constant.height * 0.01,
                    horizontal: Constant.width * 0.025,
                  ),
                  height: Constant.height * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFB0B0B0)),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/Screens/Property/getPropertyReady/Image.png",
                        fit: BoxFit.cover,
                        // width: Constant.width * 0.15,
                        // height: Constant.height * 0.1,
                      ),
                      // SizedBox(width: 20.h),
                      Container(
                        margin: EdgeInsets.only(left: Constant.width * 0.03),
                        // height: 60.h,
                        width: Constant.width * 0.55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Constant.height * 0.02,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Albert-Acquah Hall",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Constant.height * 0.025,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "University of Ghana Legon, Accra",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Constant.height * 0.02,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Male Only",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Constant.height * 0.05),
                      SizedBox(
                        // color: Colors.indigo,
                        width: Constant.width - (Constant.width * 0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // color: Colors.red,
                                  height: Constant.height * 0.03,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Verify your identity",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.sp,
                                        height: 1.3,
                                        letterSpacing: 20 * (0.8 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Constant.height * 0.015),
                                SizedBox(
                                  width:
                                      Constant.width - (Constant.width * 0.25),
                                  height: Constant.height * 0.1,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "We want students to feel safe\nbooking with you. A quick\nverification helps build trust and\nboosts your bookings.",
                                      style: TextStyle(
                                        color: const Color(0xFF787878),
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w200,
                                        height: 1.4,
                                        letterSpacing: 20 * (0.6 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: Constant.height * 0.007,
                                  ),
                                  height: Constant.height * 0.03,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "(Required)",
                                      style: TextStyle(
                                        color: const Color(0xFF323232),
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w900,
                                        height: 1.4,
                                        letterSpacing: 20 * (0.6 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.chevron_right,
                                  size: 30,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                    ],
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Constant.height * 0.025),
                      SizedBox(
                        // color: Colors.indigo,
                        width: Constant.width - (Constant.width * 0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // color: Colors.red,
                                  height: Constant.height * 0.03,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Verify your phone number",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.sp,
                                        height: 1.3,
                                        letterSpacing: 20 * (0.8 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Constant.height * 0.015),
                                SizedBox(
                                  width:
                                      Constant.width - (Constant.width * 0.25),
                                  height: Constant.height * 0.1,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "We'll send you a quick text or\ncall—just to make sure we\ncan reach you when\nneeded.",
                                      style: TextStyle(
                                        color: const Color(0xFF787878),
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w200,
                                        height: 1.4,
                                        letterSpacing: 20 * (0.6 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: Constant.height * 0.007,
                                  ),
                                  height: Constant.height * 0.03,
                                  child: FittedBox(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "(Required)",
                                      style: TextStyle(
                                        color: const Color(0xFF323232),
                                        fontSize: 20.sp,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w900,
                                        height: 1.4,
                                        letterSpacing: 20 * (0.6 / 100),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blue,
                                alignment: Alignment.centerRight,
                                child: const Icon(
                                  Icons.chevron_right,
                                  size: 30,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
