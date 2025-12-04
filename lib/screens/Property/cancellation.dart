import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';





class Cancellation extends StatefulWidget {
  const Cancellation({super.key});

  @override
  State<Cancellation> createState() => _CancellationState();
}

bool proceed = true;
List<bool> bools = [];
class _CancellationState extends State<Cancellation> {

  @override
  void initState(){
    super.initState();
    bools = List.generate(25, (index){return false;});
  }

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
            SizedBox(
              height: 782.h,
              width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  saveExitQuestion(),
                  Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  height: 78.h,
                  child: Text(
                    "Cancellation & Refund\nPolicy",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 30.sp,
                    )
                  )
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Text(
                      "Choose one of your policies below for your\nproperty.",
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
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Text(
                        "Strict (No Refund)",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          // color: const Color(0xFFB0B0B0),
                          letterSpacing: 1,
                          // wordSpacing: ,
                        )
                      ),
                ),
                rowCheckBox(boldText: "No Refunds After Booking", secondText: " - Once\n confirmed, bookings are final", index: 0),
                rowCheckBox(boldText: "Non-Refundable Deposit & Rent", secondText: " - both\nare not refundable", index: 1),
                SizedBox(height: 30.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Text(
                        "Partial Refund Before Move-in",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          // color: const Color(0xFFB0B0B0),
                          letterSpacing: 1,
                          // wordSpacing: ,
                        )
                      ),
                ),
                rowCheckBox(boldText: "Cancel 7 Days Before Move-in", secondText: " - Get\n50% rent back (deposit is non-\nrefundable).",index: 2),
                rowCheckBox(boldText: "Cancel within 7 Days Before Move-in", secondText: " - No\nrefund.", index: 3),
                SizedBox(height: 30.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Text(
                        "Flexible (48-Hour Full Refund)",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          // color: const Color(0xFFB0B0B0),
                          letterSpacing: 1,
                          // wordSpacing: ,
                        )
                      ),
                ),
                rowCheckBox(boldText: "Cancel Between 48 Hours of Booking", secondText: " -\nFull refund of rent.",index: 4),
                rowCheckBox(boldText: "Cancel After 48 Hours", secondText: " - Rent may be\nrefunded.", index: 5),
                SizedBox(height: 30.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Text(
                        "Last Minute Cancellations",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          // color: const Color(0xFFB0B0B0),
                          letterSpacing: 1,
                          // wordSpacing: ,
                        )
                      ),
                ),
                rowCheckBox(boldText: "if the tenants cancels on or after the\n move in", secondText: " - no refund is given for the first\nmonth",index: 6),
                rowCheckBox(boldText: "Non-Refundable Until Rebooked", secondText: " -\nRent is non-refundable unless another\ntenants books the room.", index: 7),
                SizedBox(height: 30.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Text(
                        "Rebooking Time Limit",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                          // color: const Color(0xFFB0B0B0),
                          letterSpacing: 1,
                          // wordSpacing: ,
                        )
                      ),
                ),
                rowCheckBox(boldText: "Must rebook Before Deadline", secondText: " - Tenants\nmust renew booking before the deadline\nor lose the room.",index: 8),
                SizedBox(height: 25.h),
                Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))
                  ),
                  child: Text(
                    "Add Custom Policy",
                    style: TextStyle(
                      color: const Color(0xFF8D8989),
                      fontSize: 20.sp,
                      )
                    )),
                  SizedBox(height: 10.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Text(
                          "Specify the type of Cancellation & Refund\nPolicy you want if your policy is not in the\nabove",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFF8D8989),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          )
                        ),
                  ),
                  SizedBox(height: 100.h),
                ],),
              )
            ),
            bottomIndicator(
              proceed: true,
              height:100.h,
              containerToColor: 2,
              screenWidth: MediaQuery.of(context).size.width,
              percentageToColor: 2*(0.125),
              text: "Create Listing",
              handleNextTap: (){
                    Get.to(
                      () => const BottomNav(),
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

  Widget rowCheckBox({required String boldText, required String secondText, required int index}){
    return Container(
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFF8D8989)))),
      margin: EdgeInsets.symmetric(horizontal: 30.h),
      padding: EdgeInsets.only(bottom: 10.h, top: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
                    RichText(text: TextSpan(
                      text: boldText,
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        height: 1.8,
                        letterSpacing: 0.44,
                        color: const Color(0xFF111111)
                      ),
                      children: [
                        TextSpan(
                          text: secondText,
                          style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w300,
                          fontSize: 18.sp,
                          height: 1.8,
                          letterSpacing: 0.44,
                          color: const Color.fromRGBO(17, 17, 17, 0.9)
                          )
                        )
                      ]
                    )), 
            GestureDetector(
                            onTap: (){
                              setState((){
                                debugPrint("This is the value of checked: ${bools[index]}");
                                bools[index] = !bools[index];
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10.h, bottom: 20.h),
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                color: bools[index]? const Color(0xFF00DEF1): null,
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(color: const Color(0xFF8D8989)), 
                              ),
                              child: bools[index] ?const FittedBox(child: Icon(Icons.check,color: Colors.white)) : null,
                              ),
                          )
        ],
      ),
    );
  }
}