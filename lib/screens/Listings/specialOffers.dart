import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/widgets/widget.dart';

class Specialoffers extends StatefulWidget {
  const Specialoffers({super.key});

  @override
  State<Specialoffers> createState() => _SpecialoffersState();
}

class _SpecialoffersState extends State<Specialoffers> {
  TextEditingController discountNameController = TextEditingController();
  TextEditingController discountRateController = TextEditingController();
  TextEditingController discountStartController = TextEditingController();
  TextEditingController discountEndsController = TextEditingController();
  int index = 0;
  bool dropdown = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: Icon(Icons.chevron_left, color: Colors.black, size: 24),
            ),
            centerTitle: true,
            title: SizedBox(
              height: Constant.height * 0.03,
              child: FittedBox(
                child: text(
                  content: "Special Offers",
                  fontFamily: "Outfit",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actionsPadding: EdgeInsets.symmetric(
              horizontal: Constant.generalPadding,
            ),
            actions: [Icon(Icons.more_horiz, color: Colors.black, size: 24)],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  newRoomField(
                    fieldName: "Discount name",
                    controller: discountNameController,
                    hintText: "Early payment discount",
                  ),
                  SizedBox(height: Constant.height * 0.01),
                  newRoomField(
                    fieldName: "Discount Rate",
                    controller: discountRateController,
                    hintText: "10",
                    dropDown: true,
                    variant: true,
                    imagePath: "assets/Screens/Home/Listings/write.png",
                    height: Constant.height * 0.02,
                    width: Constant.width * 0.03,
                  ),
                  SizedBox(height: Constant.height * 0.03),
                  Container(
                    height: Constant.height * 0.06,
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFE1E1E1)),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: Constant.height * 0.025,
                          child: FittedBox(
                            child: text(
                              content: "Select discount condition",
                              fontFamily: "Roboto",
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              dropdown = !dropdown;
                            });
                          },
                          child: SizedBox(
                            height: Constant.height * 0.03,
                            width: Constant.width * 0.03,
                            child: Image.asset(
                              'assets/Screens/Home/Listings/arrow_drop_down.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (dropdown)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding * 1.25,
                      ),
                      height: Constant.height * 0.25,
                      width: Constant.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: Constant.height * 0.0025),
                          SizedBox(
                            height: Constant.height * 0.03,
                            child: FittedBox(
                              child: text(
                                content: "Early payment discount",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.03,
                            child: FittedBox(
                              child: text(
                                content: "Long term stay discount",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.03,
                            child: FittedBox(
                              child: text(
                                content: "First time tenants discount",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.03,
                            child: FittedBox(
                              child: text(
                                content: "Group booking discount",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  SizedBox(height: Constant.height * 0.02),
                  newRoomField(
                    fieldName: "Discount Start",
                    controller: discountStartController,
                    hintText: "September 6, 2025",
                    dropDown: true,
                    variant: true,
                    imagePath: "assets/Screens/Home/Listings/calendar.png",
                    height: Constant.height * 0.06,
                    width: Constant.width * 0.07,
                  ),
                  SizedBox(height: Constant.height * 0.01),
                  newRoomField(
                    fieldName: "Discount Ends",
                    controller: discountEndsController,
                    hintText: "September 6, 2028",
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  SizedBox(
                    height: Constant.height * 0.03,
                    width: Constant.width,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: text(
                        content: "Discount Type",
                        fontFamily: "Outfit",
                        fontWeight: FontWeight.w500,
                        textColor: Color(0xFF01070F),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      height: Constant.height * 0.06,
                      padding: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE1E1E1)),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: Constant.height * 0.025,
                            child: FittedBox(
                              child: text(
                                content: "Percentage",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.05,
                            width: Constant.width * 0.04,
                            child: Image.asset(
                              index != 0
                                  ? "assets/Screens/Home/Listings/circle.png"
                                  : "assets/Screens/Home/Listings/colored-circle.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: Constant.height * 0.06,
                      padding: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE1E1E1)),
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: Constant.height * 0.025,
                            child: FittedBox(
                              child: text(
                                content: "Fixed amount",
                                fontFamily: "Roboto",
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Constant.height * 0.03,
                            width: Constant.width * 0.03,
                            child: Image.asset(
                              index != 1
                                  ? "assets/Screens/Home/Listings/circle.png"
                                  : "assets/Screens/Home/Listings/colored-circle.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.1),
                  Container(
                    margin: EdgeInsets.only(bottom: Constant.height * 0.025),
                    height: Constant.height * 0.06,
                    width: Constant.width,
                    decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Align(
                      child: SizedBox(
                        height: Constant.height * 0.02,
                        child: FittedBox(
                          child: text(
                            content: "Save",
                            fontSize: 15.sp,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            textColor: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
