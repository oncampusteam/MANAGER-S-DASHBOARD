import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/classes/constants.dart";
import "package:on_campus/classes/generic.dart";
import "package:on_campus/screens/Property/amenities_per_room.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";
// import "package:on_campus/widgets/scroll_sheet.dart";
import "package:on_campus/widgets/widget.dart";

class Amenities extends StatefulWidget {
  const Amenities({super.key, required this.roomAvailable});
  final List<int> roomAvailable;

  @override
  State<Amenities> createState() => _AmenitiesState();
}

class _AmenitiesState extends State<Amenities> {
  ScrollController controller = ScrollController();
  GenericRoomDetails amenitiesDetails = GenericRoomDetails(
    detailsList: [],
    detailsType: RoomDetailsType.amenities,
  );
  GenericRoomDetails billsDetails = GenericRoomDetails(
    detailsList: [],
    detailsType: RoomDetailsType.bills,
  );
  GenericRoomDetails securityDetails = GenericRoomDetails(
    detailsList: [],
    detailsType: RoomDetailsType.security,
  );

  bool proceed = false;
  bool slideUp = false;
  double animatedHeight = 0;
  GenericRoomDetails currentDetailstype = GenericRoomDetails.empty();
  bool amenities_ = false;
  bool bills_ = false;
  bool security_ = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: !slideUp ? Colors.white : const Color(0xFF808080),
          statusBarIconBrightness: Brightness.dark,
        ),

        child: PopScope(
          canPop: false,
          child: SafeArea(
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
                              height: 100.h,
                              margin: EdgeInsets.symmetric(horizontal: 30.h),
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Select amenities\naccessible to all\ntenants",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 34.sp,
                                    // letterSpacing: 2,
                                    wordSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              margin: EdgeInsets.only(left: 30.w, right: 30.w),
                              child: Text(
                                "These are shared facilities and services\navailable to all students in the property or\nhostel",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: const Color(0xFFB0B0B0),
                                  letterSpacing: 1,
                                  // wordSpacing: ,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: roomDetails(
                                onAmenityTap: () {
                                  setState(() {
                                    slideUp = true;
                                    currentDetailstype = amenitiesDetails;
                                    animatedHeight =
                                        MediaQuery.of(context).size.height *
                                        0.81;
                                  });
                                },
                                detailsType: amenitiesDetails,
                                detailBool: amenities_,
                              ),
                            ),
                            SizedBox(height: Constant.height * 0.02),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: roomDetails(
                                onAmenityTap: () {
                                  setState(() {
                                    slideUp = true;
                                    currentDetailstype = billsDetails;
                                    animatedHeight =
                                        MediaQuery.of(context).size.height *
                                        0.81;
                                  });
                                },
                                detailsType: billsDetails,
                                detailBool: bills_,
                              ),
                            ),
                            SizedBox(height: Constant.height * 0.02),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: roomDetails(
                                onAmenityTap: () {
                                  setState(() {
                                    slideUp = true;
                                    currentDetailstype = securityDetails;
                                    animatedHeight =
                                        MediaQuery.of(context).size.height *
                                        0.81;
                                  });
                                },
                                detailsType: securityDetails,
                                detailBool: security_,
                              ),
                            ),

                            SizedBox(height: 150.h),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: slideUp
                          ? GestureDetector(
                              onTap: () {
                                if (amenitiesDetails.detailsList.isNotEmpty) {
                                  amenities_ = true;
                                }
                                if (billsDetails.detailsList.isNotEmpty) {
                                  bills_ = true;
                                }
                                if (securityDetails.detailsList.isNotEmpty) {
                                  security_ = true;
                                }
                                if (amenitiesDetails.detailsList.isNotEmpty &&
                                    billsDetails.detailsList.isNotEmpty &&
                                    securityDetails.detailsList.isNotEmpty) {
                                  proceed = true;
                                } else if (!(amenitiesDetails
                                        .detailsList
                                        .isNotEmpty &&
                                    billsDetails.detailsList.isNotEmpty &&
                                    securityDetails.detailsList.isNotEmpty)) {
                                  proceed = false;
                                }

                                setState(() {
                                  slideUp = false;
                                  animatedHeight = 0;
                                  currentDetailstype =
                                      GenericRoomDetails.empty();
                                });
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                color: const Color.fromRGBO(0, 0, 0, 0.6),
                              ),
                            )
                          : Container(),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: bottomIndicator(
                        proceed: proceed,
                        height: 150.h,
                        percentageToColor: 7 * (0.125),
                        screenWidth: MediaQuery.of(context).size.width,
                        handleNextTap: () {
                          Get.to(
                            () => AmenitiesPerRoom(
                              roomAvailable: widget.roomAvailable,
                            ),
                            transition: Transition.fadeIn,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                    ),
                    pullUp(currentDetailstype, animatedHeight, context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
