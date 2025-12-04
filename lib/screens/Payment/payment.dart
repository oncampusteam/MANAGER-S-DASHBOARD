import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Payment/earnings.dart';
import 'package:on_campus/screens/Payment/generic.dart';
import 'package:on_campus/widgets/lineChart.dart';
import 'package:on_campus/widgets/widget.dart';




final ValueNotifier<String> textNotifier = ValueNotifier("");


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  bool toggle = false;
  
@override 
void initState(){
  super.initState();
  textNotifier.addListener(_updateState);
}

void _updateState(){
  setState(() {
    if(textNotifier.value == "Earnings"){
      Get.to(
        ()=> EarningsBreakdownScreen(),
        duration: Duration.zero,
        );
        
    }
    if(textNotifier.value == ""){
      toggle = false;
    }
    else{toggle = true;}
  });
}

  @override
  Widget build(BuildContext context) {
    if(mounted){
      _updateState();
    }
    return SafeArea(
      child: Scaffold(
        appBar: !toggle ? AppBar(
          actionsPadding: EdgeInsets.only(right: 20.w),
          automaticallyImplyLeading: false,
          title: text(
            content:"Account",
            fontSize:20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "OUtfit-Regular"
            ),
          actions: [
            GestureDetector(
              child: Container(
                width: 35.w,
                height: 35.h,
                padding: EdgeInsets.all(8),
                child: Image.asset("assets/Screens/Home/Payment/Vector.png"))
            ),
          ],
        ): AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          actionsPadding: EdgeInsets.only(right: 20.w),
          leading: GestureDetector(
            onTap: (){
              setState(() {
                textNotifier.value = "";
                toggle = false;
              });
            },
            child: Icon(Icons.chevron_left, size: 22, color: Color(0xFF1E1E2D))),
          title: text(
            content: textNotifier.value,
            fontSize:18.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            textColor: Color(0xFF1E1E2D)
            ),
          actions: [
            GestureDetector(
              child: SizedBox(
                width: 35.w,
                height: 35.h,
                // padding: EdgeInsets.all(8),
                child: Image.asset(
                  "assets/Screens/Home/Payment/more.png"))
            ),
          ],
        ),
      body: !toggle ? SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 30.h,),
            Container(
        width: double.infinity,
        height: 155.h,
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.0.w),
        margin: EdgeInsets.symmetric(horizontal: 20.0.h),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(53, 173, 158, 0.4),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Total Earnings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                // fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '¢',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  TextSpan(
                    text: "3,567.12",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
            ),
            Container(
        height: 400,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFCFD),
              Color.fromRGBO(225, 255, 251, 0.1),
              Color(0xFFFFFCFD),
            ]
          )
        ),
        width: MediaQuery.of(context).size.width,
        child: StatsScreen()),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              buildTopIconsRow(),
              const SizedBox(height: 30),
              buildSectionHeader(),
              const SizedBox(height: 20),
              buildPaymentList(),
            ],
          ),
        ),
        SizedBox(height: 150.h,)
          ],
        ),
      ): Generic(status: textNotifier.value),
      ));
  }
}



















