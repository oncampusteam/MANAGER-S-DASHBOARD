import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Property/house_rules.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';





class BookingsApproval extends StatefulWidget {
  const BookingsApproval({super.key});

  @override
  State<BookingsApproval> createState() => _BookingsApprovalState();
}

class _BookingsApprovalState extends State<BookingsApproval> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
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
                      "Choose how your\nbookings are approved",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                      )
                    )
                    ,)
                ),
                SizedBox(
                    child: Text(
                      "Manage your bookings your way! Choose\ninstant, manual, or mixed approval. You can\nupdate these settings anytime.",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xFFB0B0B0),
                        letterSpacing: 1,
                        // wordSpacing: ,
                      )
                    )),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Manual Approval",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          )
                          ),
                        Text(
                          "You'll manually approve or reject each,\nbooking request.",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          )
                          ),
                      ]),
                      Image.asset("assets/Screens/Property/BookingsApproval/Version-1.png", height: 50, width:50)
                    ]
                    )
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Use Instant Booking",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          )
                          ),
                        Text(
                          "Student can book your property\nautomatically.",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                          )
                          ),
                      ]),
                      Image.asset("assets/Screens/Property/BookingsApproval/Electricity.png", height: 50, width:50)
                    ]
                    )
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          "Flexible Approval",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                          )
                          ),
                        Text(
                          "Start with manual approvals, then\nallow instant booking once",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          )
                          ),
                        Row(children: [
                        Text(
                          "comfortable. ",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w500,
                          )
                          ),
                        Text(
                        "Recommended",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 19.sp,
                          color: const Color(0xFF00EFD1),
                          fontWeight: FontWeight.w500,
                        )
                        )
                        ],)
                      ]),
                      Image.asset("assets/Screens/Property/BookingsApproval/Version-2.png", height: 50, width:50)
                    ]
                    )
                )
                ],),
              )
            ),
            bottomIndicator(
              proceed: true,
              height:100.h,
              containerToColor: 2,
              screenWidth: MediaQuery.of(context).size.width,
              percentageToColor: 2*(0.125),
              handleNextTap: (){
                    Get.to(
                      () => const HouseRules(),
                      transition: Transition.fadeIn,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn
                    );
              }
            )
          ],
        )
            ),
      ));
  }
}