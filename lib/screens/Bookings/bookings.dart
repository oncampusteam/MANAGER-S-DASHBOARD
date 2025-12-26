import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Bookings/add_booking.dart';
import 'package:on_campus/screens/Bookings/booking_details.dart';
import 'package:on_campus/screens/Bookings/search_booking.dart';
import 'package:on_campus/widgets/widget.dart';

class Bookings extends StatefulWidget {
  const Bookings({super.key});

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  bool approved = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actionsPadding: EdgeInsets.only(right: 20),
          automaticallyImplyLeading: false,
          title: text(
            content: "Bookings",
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "Outfit",
          ),
          actions: [
            GestureDetector(
              child: Container(
                width: 35.w,
                height: 35.h,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(158, 158, 158, 0.2),
                  ),
                ),
                child: Image.asset("assets/Screens/Home/Bookings/dustbin.png"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchBooking()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                width: 35.w,
                height: 35.h,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(158, 158, 158, 0.2),
                  ),
                ),
                child: SvgPicture.asset('assets/icons/search-normal.svg'),
              ),
            ),
            GestureDetector(
              child: Container(
                width: 35.w,
                height: 35.h,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromRGBO(158, 158, 158, 0.2),
                  ),
                ),
                child: Image.asset("assets/Screens/Home/Bookings/calender.png"),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 60.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(137, 140, 143, 0.15),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            approved = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 165.w,
                          margin: EdgeInsets.only(
                            left: 7.w,
                            top: 4.h,
                            bottom: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: !approved
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: text(
                            content: "Pending",
                            fontFamily: "Outfit-Regular",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            textColor: !approved
                                ? Colors.black
                                : Color(0xFF898C8F),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            approved = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 165.w,
                          margin: EdgeInsets.only(
                            right: 7.w,
                            top: 3.h,
                            bottom: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: approved ? Colors.white : Colors.transparent,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: text(
                            content: "Approved",
                            fontFamily: "Outfit-Regular",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            textColor: approved
                                ? Colors.black
                                : Color(0xFF898C8F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                //  CustomDropdown(items: ['items'], onChanged: (value) {}),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    margin: EdgeInsets.only(right: 20),
                    height: 47.h,
                    alignment: Alignment.center,
                    width: 142.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(137, 140, 143, 0.15),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text(
                          content: "Last Month",
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          textColor: Color(0xFF898C8F),
                        ),
                        Image.asset(
                          height: 15.h,
                          width: 15.w,
                          "assets/Screens/Home/Bookings/arrow-down.png",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: (115.h) * 3,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BookingDetails(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          height: 85.h,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 56.h,
                                width: 56.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/Screens/Home/Dashboard/frame  2.png",
                                ),
                              ),
                              SizedBox(width: 16.w),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width -
                                    (40.w + 56.w + 16.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Room 404",
                                          style: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          "1-in-a Room",
                                          style: TextStyle(
                                            fontFamily: "Outfit",
                                            fontSize: 14.sp,
                                            color: const Color(0xFF6B6B6B),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "13-01-2022",
                                      style: TextStyle(
                                        fontFamily: "Outfit",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: const Color.fromARGB(
                                          255,
                                          0,
                                          0,
                                          0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
           
              ],
            ),
            Positioned(
              bottom: Constant.height * 0.12,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddBooking()));
                },
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  // margin: EdgeInsets.only(right: Constant.width * 0.05),
                  height: Constant.height * 0.07,
                  width: Constant.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFBFEFB),
                    border: Border.all(color: Color(0xFFF0F0F0)),
                  ),
                  child: Icon(Icons.add, size: 32, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
