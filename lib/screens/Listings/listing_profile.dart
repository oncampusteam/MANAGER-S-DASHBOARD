import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/classes/generic.dart';
// import 'package:on_campus/widgets/scroll_sheet.dart';
import 'package:on_campus/widgets/widget.dart';

class ListingProfile extends StatefulWidget {
  const ListingProfile({super.key});

  @override
  State<ListingProfile> createState() => _ListingProfileState();
}

class _ListingProfileState extends State<ListingProfile> {
  bool amenities_ = true;
  bool bills_ = true;
  bool security_ = true;
  bool houseRules_ = false;
  bool slideUp = false;
  // int currentIndex = 4;
  double animatedHeight = 0.h;
  GenericRoomDetails currentDetailstype = GenericRoomDetails.empty();

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
  GenericRoomDetails houseRulesDetails = GenericRoomDetails(
    detailsList: [],
    detailsType: RoomDetailsType.houseRules,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                automaticallyImplyLeading: true,
                centerTitle: true,
                title: SizedBox(
                  // color: Colors.blue,
                  height: Constant.height * 0.03,
                  child: FittedBox(
                    child: text(
                      content: "Listing Profile",
                      fontFamily: "Plus Jakarta Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
              body: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Constant.generalPadding,
                ),
                height:
                    Constant.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.top,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: Constant.height * 0.03,
                          child: FittedBox(
                            child: text(
                              content: "Name",
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                      Container(
                        height: Constant.height * 0.04,
                        width: Constant.width,
                        padding: EdgeInsets.symmetric(
                          vertical: Constant.height * 0.008,
                          horizontal: Constant.width * 0.03,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFDBE0E5)),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: text(
                            content: "The Happy Hostel",
                            fontFamily: "Plus Jakarta Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.03),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: Constant.height * 0.03,
                          child: FittedBox(
                            child: text(
                              content: "Description",
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                      Container(
                        alignment: Alignment.topLeft,
                        height: Constant.height * 0.16,
                        width: Constant.width,
                        padding: EdgeInsets.symmetric(
                          vertical: Constant.height * 0.01,
                          horizontal: Constant.width * 0.05,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFDBE0E5)),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: SizedBox(
                          height: Constant.height * 0.1,
                          child: FittedBox(
                            // alignment: Alignment.centerLeft,
                            child: text(
                              content:
                                  "Our student hostel offers a safe, comfortable,\nand affordatble living space designed to\nsupport your academic journey.",
                              fontFamily: "Plus Jakarta Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.03),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: Constant.height * 0.035,
                          child: FittedBox(
                            child: text(
                              content: "Gallery",
                              fontFamily: "Inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                      SizedBox(
                        width: Constant.width - (Constant.generalPadding * 2),
                        height: Constant.height * 0.2,
                        child: SizedBox(
                          width:
                              (Constant.width - (Constant.generalPadding * 2)) *
                              0.48,
                          height: Constant.height * 0.4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              galleryImageCard(
                                imagePath:
                                    "assets/Screens/Home/Listings/pic-1.png",
                                width:
                                    (Constant.width -
                                        (Constant.generalPadding * 2)) *
                                    0.48,
                                height: Constant.height * 0.15,
                                imageCount: "10",
                                galleryTag: "Exterior",
                              ),
                              galleryImageCard(
                                imagePath:
                                    "assets/Screens/Home/Listings/pic-2.png",
                                width:
                                    (Constant.width -
                                        (Constant.generalPadding * 2)) *
                                    0.48,
                                height: Constant.height * 0.15,
                                imageCount: "10",
                                galleryTag: "Kitchen",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                      SizedBox(
                        width: Constant.width - (Constant.generalPadding * 2),
                        height: Constant.height * 0.2,
                        child: SizedBox(
                          width:
                              (Constant.width - (Constant.generalPadding * 2)) *
                              0.48,
                          height: Constant.height * 0.4,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              galleryImageCard(
                                imagePath:
                                    "assets/Screens/Home/Listings/pic-4.png",
                                width:
                                    (Constant.width -
                                        (Constant.generalPadding * 2)) *
                                    0.48,
                                height: Constant.height * 0.15,
                                imageCount: "10",
                                galleryTag: "Bedroom",
                              ),
                              galleryImageCard(
                                imagePath:
                                    "assets/Screens/Home/Listings/pic-3.png",
                                width:
                                    (Constant.width -
                                        (Constant.generalPadding * 2)) *
                                    0.48,
                                height: Constant.height * 0.15,
                                imageCount: "10",
                                galleryTag: "Bathroom",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.01),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: galleryImageCard(
                          imagePath: "assets/Screens/Home/Listings/pic-5.png",
                          width:
                              (Constant.width - (Constant.generalPadding * 2)) *
                              0.48,
                          height: Constant.height * 0.15,
                          imageCount: "10",
                          galleryTag: "Videos",
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.025),
                      SizedBox(
                        height: Constant.height * 0.045,
                        width: Constant.width - (Constant.generalPadding * 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width:
                                  (Constant.width -
                                      (Constant.generalPadding * 4)) *
                                  0.48,
                              // height: Constant.height * 0.05,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ListingProfile(),
                                    ),
                                  );
                                },
                                child: Container(
                                  //
                                  decoration: BoxDecoration(
                                    color: Constant.primaryColor,
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Align(
                                    child: SizedBox(
                                      height: Constant.height * 0.02,
                                      child: FittedBox(
                                        child: text(
                                          content: "Add Image",
                                          fontSize: 15.sp,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.bold,
                                          textColor: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width:
                                  (Constant.width -
                                      (Constant.generalPadding * 4)) *
                                  0.48,
                              // height: Constant.height * 0.05,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ListingProfile(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF0F2F5),
                                    borderRadius: BorderRadius.circular(12.r),
                                  ),
                                  child: Align(
                                    child: SizedBox(
                                      height: Constant.height * 0.02,
                                      child: FittedBox(
                                        child: text(
                                          content: "Edit existing",
                                          fontSize: 15.sp,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.bold,
                                          textColor: Color(0xFF121417),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: Constant.height * 0.03),
                      roomDetails(
                        onAmenityTap: () {
                          setState(() {
                            slideUp = true;
                            currentDetailstype = amenitiesDetails;
                            animatedHeight =
                                MediaQuery.of(context).size.height * 0.81;
                          });
                        },
                        detailsType: amenitiesDetails,
                        detailBool: amenities_,
                      ),
                      SizedBox(height: Constant.height * 0.02),
                      roomDetails(
                        onAmenityTap: () {
                          setState(() {
                            slideUp = true;
                            currentDetailstype = billsDetails;
                            animatedHeight =
                                MediaQuery.of(context).size.height * 0.81;
                          });
                        },
                        detailsType: billsDetails,
                        detailBool: bills_,
                      ),
                      SizedBox(height: Constant.height * 0.02),
                      roomDetails(
                        onAmenityTap: () {
                          setState(() {
                            slideUp = true;
                            currentDetailstype = securityDetails;
                            animatedHeight =
                                MediaQuery.of(context).size.height * 0.81;
                          });
                        },
                        detailsType: securityDetails,
                        detailBool: security_,
                      ),
                      SizedBox(height: Constant.height * 0.02),
                      roomDetails(
                        onAmenityTap: () {
                          setState(() {
                            slideUp = true;
                            currentDetailstype = houseRulesDetails;
                            animatedHeight =
                                MediaQuery.of(context).size.height * 0.81;
                          });
                        },
                        detailsType: houseRulesDetails,
                        detailBool: houseRules_,
                      ),
                      SizedBox(height: Constant.height * 0.03),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: Constant.height * 0.035,
                          child: FittedBox(
                            child: text(
                              content: "Location",
                              fontFamily: "Inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.015),
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(15.r),
                        child: SizedBox(
                          height: Constant.height * 0.25,
                          width: Constant.width,
                          child: Image.asset(
                            "assets/Screens/Home/Listings/map.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: Constant.height * 0.05),
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
                          height: Constant.height * 0.05,
                          decoration: BoxDecoration(
                            color: Constant.primaryColor,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Align(
                            child: SizedBox(
                              height: Constant.height * 0.025,
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
                      ),
                      SizedBox(height: Constant.height * 0.05),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // bottom: 0,
              child: slideUp
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          slideUp = false;
                          currentDetailstype = GenericRoomDetails.empty();
                          animatedHeight = 0;
                        });
                      },
                      child: Container(
                        height: Constant.height,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                    )
                  : Container(),
            ),
            pullUp(currentDetailstype, animatedHeight, context),
          ],
        ),
      ),
    );
  }
}
