import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Listings/hostelOwnerDashboard.dart';
import 'package:on_campus/screens/Property/getPropertyReady.dart';
import 'package:on_campus/widgets/widget.dart';
import 'package:on_campus/screens/Home/homepage.dart' as homepage;

bool inProgress = false;

class Listings extends StatefulWidget {
  const Listings({super.key});

  @override
  State<Listings> createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  int itemCount = 4;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: !homepage.inProgress.value
            ? Colors.white
            : const Color.fromRGBO(0, 0, 0, 0.5),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              appBar: AppBar(
                actionsPadding: EdgeInsets.only(right: Constant.width * 0.035),
                automaticallyImplyLeading: false,
                title: SizedBox(
                  height: Constant.height * 0.04,
                  child: FittedBox(
                    child: text(
                      content: "Your Listings",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "OUtfit",
                    ),
                  ),
                ),
                actions: [
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: Constant.width * 0.08,
                      height: Constant.height * 0.04,
                      // padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromRGBO(158, 158, 158, 0.2),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(17, 17, 17, 0.6),
                        size: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: Constant.width * 0.03,
                      ),
                      width: Constant.width * 0.08,
                      height: Constant.height * 0.04,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromRGBO(158, 158, 158, 0.2),
                        ),
                      ),
                      child: Image.asset(
                        "assets/Screens/Home/Bookings/search.png",
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      width: Constant.width * 0.08,
                      height: Constant.height * 0.04,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromRGBO(158, 158, 158, 0.2),
                        ),
                      ),
                      child: Image.asset(
                        "assets/Screens/Home/Bookings/calender.png",
                      ),
                    ),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding,
                      ),
                      child: Divider(
                        color: const Color.fromRGBO(158, 158, 158, 0.2),
                      ),
                    ),
                    hostelCard(
                      hostelName: "Albert-Acquah Hall",
                      location: "University of Ghana, Legon, Accra",
                      status: "Verification required",
                      tag: "Mixed",
                      statusColor: Colors.grey,
                      imagePath: "assets/Screens/Home/Listings/Asir.png",
                    ),
                    SizedBox(height: Constant.generalWhiteSpace),
                    hostelCard(
                      hostelName: "Albert-Acquah Hall",
                      location: "University of Ghana, Legon, Accra",
                      status: "In Progress",
                      tag: "Mixed",
                      statusColor: Colors.greenAccent,
                      imagePath: "assets/Screens/Home/Listings/Asir.png",
                    ),
                    SizedBox(height: Constant.height * 0.015),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Constant.generalPadding * 2,
                      ),
                      child: FittedBox(
                        child: text(
                          content: "Your listing was created on May 17, 2025",
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          // fontSize: 13.sp,
                          textColor: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: Constant.generalWhiteSpace),
                    SizedBox(
                      // padding: EdgeInsets.symmetric(horizontal: 20.w),
                      height: (280.h) * itemCount,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: itemCount,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 20.h),
                            child: hostelCard(
                              hostelName: "Joemat luxury hostel",
                              location: "University of Ghana, Legon, Accra",
                              tag: "Females Only",
                              statusVisibility: false,
                              imagePath:
                                  "assets/Screens/Home/Listings/Asir.png",
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 150.h),
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   child: Container(
          //     height: inProgress ? Constant.height : 0,
          //     width: Constant.width,
          //     color: inProgress
          //         ? const Color.fromRGBO(0, 0, 0, 0.5)
          //         : Colors.transparent,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: AnimatedContainer(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(12.r),
          //     ),
          //     duration: Duration(milliseconds: 600),
          //     curve: Curves.easeIn,
          //     height: inProgress ? Constant.height * 0.6 : 0,
          //     width: MediaQuery.of(context).size.width,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget hostelCard({
    required String hostelName,
    required String location,
    required String tag,
    Color statusColor = Colors.grey,
    String status = "Verification required",
    bool statusVisibility = true,
    required String imagePath,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (statusVisibility == false) {
            Get.to(() => HostelOwnerDashboard());
          } else if (status == "Verification required") {
            Get.to(() => GetPropertyReady());
          } else if (status == "In Progress") {
            debugPrint("In Progress tapped");
            setState(() {
              homepage.inProgress.value = true;
            });
          }
        });
      },
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height: 228.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(imagePath),
                  ),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 30.h, left: 20.w),
                    height: 100.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Color.fromRGBO(51, 51, 51, 1),
                          Color.fromRGBO(51, 51, 51, 0),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(
                          content: hostelName,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          textColor: Colors.white,
                        ),
                        text(
                          content: location,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Visibility(
                    visible: statusVisibility,
                    child: Container(
                      margin: EdgeInsets.only(top: 15.h, left: 20.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          text(
                            content: status,
                            fontFamily: "Poppins",
                            fontSize: 10.sp,
                            textColor: Color(0xFF111111),
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            height: 7.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: statusColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 5.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                      color: Color(0xFF00EFD1),
                    ),
                    child: text(
                      content: tag,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      textColor: Colors.white,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
