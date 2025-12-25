import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/amenities.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";

class RoomDescription extends StatefulWidget {
  const RoomDescription({super.key});

  @override
  State<RoomDescription> createState() => _RoomDescriptionState();
}

class _RoomDescriptionState extends State<RoomDescription> {
  // @override
  // void initState(){

  // }

  int totalRoomNumber = 0;
  int oneInARoom = 0;
  int twoInARoom = 0;
  int threeInARoom = 0;
  int fourInARoom = 0;
  int fiveInARoom = 0;
  int selfContainedRoom = 0;
  bool proceed = true;
  List<int> roomAvailable = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Stack(
            children: [
              SizedBox(
                height: 935.h - 185.h,
                width: 430.w,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      saveExitQuestion(),
                      Container(
                        height: 78.h,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Total number of rooms\nin your property?",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 30.sp,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Total Room Number",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (totalRoomNumber == 0) {
                                        } else {
                                          totalRoomNumber--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      // padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$totalRoomNumber",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        totalRoomNumber++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Text(
                          "How many rooms in total do you want to rent to\nstudents in your property?",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFFB0B0B0),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Text(
                          "Eg: 260 rooms",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFF606060),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        height: 78.h,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Now, let's recognize the\nrooms.",
                            style: TextStyle(
                              letterSpacing: 0.5,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 30.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "1-in-a-Room",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (oneInARoom == 0) {
                                        } else {
                                          oneInARoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$oneInARoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        oneInARoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "2-in-a-Room",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (twoInARoom == 0) {
                                        } else {
                                          twoInARoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$twoInARoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        twoInARoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "3-in-a-Room",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (threeInARoom == 0) {
                                        } else {
                                          threeInARoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$threeInARoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        threeInARoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "4-in-a-Room",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (fourInARoom == 0) {
                                        } else {
                                          fourInARoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$fourInARoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fourInARoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "5-in-a-Room",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (fiveInARoom == 0) {
                                        } else {
                                          fiveInARoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$fiveInARoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        fiveInARoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: FittedBox(
                                            child: Text(
                                              "+",
                                              style: TextStyle(fontSize: 20.sp),
                                            ),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.42,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Self-Contained-Rooms",
                                  style: TextStyle(color: Color(0xFF111111)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (selfContainedRoom == 0) {
                                        } else {
                                          selfContainedRoom--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "-",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "$selfContainedRoom",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selfContainedRoom++;
                                      });
                                    },
                                    child: Container(
                                      height: 50.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF999999),
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Align(
                                        child: FittedBox(
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
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
                      SizedBox(height: 10.h),
                      Container(
                        // color: Colors.blue,
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          // color: Colors.blue,
                          border: Border(
                            bottom: BorderSide(color: Color(0xFF999999)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: const FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Add more Rooms",
                                  style: TextStyle(color: Color(0xFF8D8989)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        margin: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Text(
                          "Specify the type of room and the number of\nrooms available for it",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFFB0B0B0),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Text(
                          "Eg: Executive or luxury rooms (20 rooms)",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFF606060),
                          ),
                        ),
                      ),
                      SizedBox(height: 200.h),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: bottomIndicator(
                  handleNextTap: () {
                    if (oneInARoom > 0) roomAvailable.add(1);
                    if (twoInARoom > 0) roomAvailable.add(2);
                    if (threeInARoom > 0) roomAvailable.add(3);
                    if (fourInARoom > 0) roomAvailable.add(4);
                    if (fiveInARoom > 0) roomAvailable.add(5);
                    if (selfContainedRoom > 0) roomAvailable.add(6);
                    Get.to(
                      () => Amenities(roomAvailable: roomAvailable),
                      transition: Transition.fadeIn,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                    );
                  },
                  proceed: proceed,
                  height: 150.h,
                  percentageToColor: 6 * (0.125),
                  screenWidth: MediaQuery.of(context).size.width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
