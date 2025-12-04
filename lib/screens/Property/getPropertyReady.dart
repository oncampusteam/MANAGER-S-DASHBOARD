import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetPropertyReady extends StatefulWidget {
  const GetPropertyReady({super.key});

  @override
  State<GetPropertyReady> createState() => _GetPropertyReadyState();
}

class _GetPropertyReadyState extends State<GetPropertyReady> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(Icons.chevron_left),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                    "Let's get your property\nready!",
                    style: TextStyle(
                      fontFamily: "Outfit-Medium",
                      // fontWeight: FontWeight.w600,
                      fontSize: 35.sp,
                    )
                  ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.symmetric(vertical:10.h, horizontal: 10.h),
                height: 90.h,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFB0B0B0)),
                  borderRadius: BorderRadius.circular(15.r)
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                  Image.asset("assets/Screens/Property/getPropertyReady/Image.png", width: 69,height:59),
                  SizedBox(width: 20.h),
                  SizedBox(
                    height: 60.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                      Text(
                        "Albert-Acquah Hall",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                        )),
                      Text(
                        "University of Ghana,Legon,Accra",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        )),
                      Text(
                        "Male Only",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 13.sp,
                        )),
                    ]),
                  )
                ])
              ),
              SizedBox(height: 20.h),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify your identity",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        height: 1.3,
                        letterSpacing: 20 * (0.8/100),
                      )
                      ),
                    SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                      "We want students to feel safe\nbooking with you. A quick\nverification helps build trust and\nboosts your bookings.",
                      style: TextStyle(
                        color: const Color(0xFF787878),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      ),
                      Text(
                      "(Required)",
                      style: TextStyle(
                        color: const Color(0xFF323232),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      )
                    ],),
                    const Icon(Icons.chevron_right, size: 40)
                  ]),
                  SizedBox(height: 10.h)
                  ])),
              SizedBox(height: 20.h),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm it's really you",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        height: 1.3,
                        letterSpacing: 20 * (0.8/100),
                      )
                      ),
                    SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                      "Security matters! Let's confirm\nyour account so only you have\naccess",
                      style: TextStyle(
                        color: const Color(0xFF787878),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      ),
                      Text(
                      "(Required)",
                      style: TextStyle(
                        color: const Color(0xFF323232),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      )
                    ],),
                    const Icon(Icons.chevron_right, size: 40)
                  ]),
                  SizedBox(height: 10.h)
                  ])),
              SizedBox(height: 20.h),
              Container(
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify your phone number",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        height: 1.3,
                        letterSpacing: 20 * (0.8/100),
                      )
                      ),
                    SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                      "We'll send you a quick text or\ncall-just to make sure we\ncan reach you when\nneeded",
                      style: TextStyle(
                        color: const Color(0xFF787878),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w200,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      ),
                      Text(
                      "(Required)",
                      style: TextStyle(
                        color: const Color(0xFF323232),
                        fontSize: 20.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        letterSpacing: 20 * (0.6/100),
                      )
                      )
                    ],),
                    const Icon(Icons.chevron_right, size: 40)
                  ]),
                  SizedBox(height: 10.h)
                  ]))
          ],)
        )
      )
      );
  }
}