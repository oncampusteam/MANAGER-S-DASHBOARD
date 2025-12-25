import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Listings/listing_profile.dart';
import 'package:on_campus/widgets/widget.dart';

class Editlistings extends StatefulWidget {
  const Editlistings({super.key});

  @override
  State<Editlistings> createState() => _EditlistingsState();
}

class _EditlistingsState extends State<Editlistings> {
  int itemCount = 2;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.chevron_left, color: Colors.black, size: 25),
            ),
            centerTitle: true,
            title: SizedBox(
              // color: Colors.blue,
              height: Constant.height * 0.025,
              child: FittedBox(
                child: text(
                  content: "Edit Listings",
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(Constant.generalPadding),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: Constant.height * 0.1,
                        width: Constant.width * 0.215,
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromRGBO(0, 0, 0, 0),
                              const Color.fromRGBO(0, 0, 0, 0.4),
                            ],
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12.r),
                          child: Image.asset(
                            "assets/Screens/Home/Listings/Asir.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constant.height * 0.07,
                        width: Constant.width * 0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: Constant.height * 0.03,
                              child: FittedBox(
                                child: text(
                                  content: "Downtown Hostel",
                                  fontFamily: "Plus Jakarta Sans",
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Constant.height * 0.02,
                              child: FittedBox(
                                child: text(
                                  content: "Hosted by John",
                                  fontFamily: "Plus Jakarta Sans",
                                  fontSize: 12.sp,
                                  textColor: Color(0xFF637887),
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Constant.height * 0.02,
                              child: FittedBox(
                                child: text(
                                  content: "Joined in 2019",
                                  fontFamily: "Plus Jakarta Sans",
                                  fontSize: 15.sp,
                                  textColor: Color(0xFF637887),
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListingProfile(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding * 1.5,
                      ),
                      width: Constant.width,
                      height: Constant.height * 0.05,
                      decoration: BoxDecoration(
                        color: Color(0xFFF0F2F5),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Align(
                        child: SizedBox(
                          height: Constant.height * 0.02,
                          child: FittedBox(
                            child: text(
                              content: "Edit Profile",
                              fontSize: 15.sp,
                              fontFamily: "Plus Jakarta Sans",
                              fontWeight: FontWeight.bold,
                              textColor: Color(0xFF121417),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: Constant.height * 0.035,
                      child: FittedBox(
                        child: text(
                          content: "Room categories listed",
                          fontFamily: "Plus Jakarta Sans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  SizedBox(
                    height: (Constant.height * 0.07) * itemCount,
                    child: ListView.builder(
                      itemCount: itemCount,
                      itemBuilder: (context, index) {
                        return Container(
                          // color: Colors.blue,
                          height: Constant.height * 0.045,
                          margin: EdgeInsets.only(bottom: 20.h),
                          // padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: Constant.height * 0.06,
                                    width: Constant.width * 0.1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0F2F5),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.r),
                                      child: Image.asset(
                                        "assets/Screens/Home/Listings/Asir.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: Constant.width * 0.03),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: Constant.height * 0.025,
                                        child: FittedBox(
                                          child: text(
                                            content: "4-in-a-Room",
                                            fontFamily: "Lexend",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                            textColor: Color(0xFF121417),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: Constant.height * 0.02,
                                        child: FittedBox(
                                          child: text(
                                            content: "GHS 25,000",
                                            fontFamily: "Lexend",
                                            fontSize: 10.sp,
                                            textColor: Color(0xFF637887),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: Constant.height * 0.04,
                                width: Constant.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Color(0xFFF0F2F5),
                                ),
                                child: Align(
                                  child: SizedBox(
                                    height: Constant.height * 0.028,
                                    width: Constant.width * 0.13,
                                    child: FittedBox(
                                      child: text(
                                        content: "Add rooms",
                                        fontFamily: "Lexend",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                        textColor: Color(0xFF121417),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding * 1.5,
                    ),
                    width: Constant.width,
                    height: Constant.height * 0.05,
                    decoration: BoxDecoration(
                      color: Color(0xFFF0F2F5),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Align(
                      child: SizedBox(
                        height: Constant.height * 0.02,
                        child: FittedBox(
                          child: text(
                            content: "Add New Category",
                            fontSize: 15.sp,
                            fontFamily: "Plus Jakarta Sans",
                            fontWeight: FontWeight.bold,
                            textColor: Color(0xFF121417),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: Constant.height * 0.035,
                      child: FittedBox(
                        child: text(
                          content: "Room Listing",
                          fontFamily: "Plus Jakarta Sans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/rooms.png",
                      description: "View rooms",
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: text(
                      content: "Calender",
                      fontFamily: "Plus Jakarta Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/calender.png",
                      description: "Set availability..............",
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/pricing.png",
                      description: "Pricing",
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/offer.png",
                      description: "Special Offer",
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: text(
                      content: "Get more bookings",
                      fontFamily: "Plus Jakarta Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    child: u101(
                      imagePath: "assets/Screens/Home/Listings/calendar-2.png",
                      description: "Boost your ranking",
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
