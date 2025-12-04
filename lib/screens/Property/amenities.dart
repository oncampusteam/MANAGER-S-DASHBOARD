import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/amenities_per_room.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";
import "package:on_campus/widgets/scroll_sheet.dart";

class Amenities extends StatefulWidget {
  const Amenities({
    super.key,
    required this.roomAvailable
    });
    final List<int> roomAvailable;

  @override
  State<Amenities> createState() => _AmenitiesState();
}

class _AmenitiesState extends State<Amenities> {

  ScrollController controller = ScrollController();


  bool proceed = false;
  bool slideUp = false;
  double animatedHeight = 0;
  int currentIndex = 3;
  List<bool> amenities = <bool>[];
  List<bool> bills = <bool>[];
  List<bool> security = <bool>[];
  bool amenities_ = false;
  bool bills_ = false;
  bool security_ = false;
  List<Map<String, String>> amenityList = [];
  List<Map<String, String>> billsList = [];
  List<Map<String,String>> securityList = [];

  List<Map<String, String>> buildList = [
    {"ImagePath": "assets/Screens/Property/Amenities/security.png", "label": "24/7 Security"},
    {"ImagePath": "assets/Screens/Property/Amenities/first_aid_kits.png", "label": "First Aid Kits"},
    {"ImagePath": "assets/Screens/Property/Amenities/fire_extinguisher.png", "label": "Fire Extinguisher"},
    {"ImagePath": "assets/Screens/Property/Amenities/cctv.png", "label": "CCTV"},
    {"ImagePath": "assets/Screens/Property/Amenities/emergency_exits.png", "label": "Emergency Exits"},
    {"ImagePath": "assets/Screens/Property/Amenities/fencing.png", "label": "Fencing & Gated\nEntry"},
    {"ImagePath": "assets/Screens/Property/Amenities/smoke_detector.png", "label": "Smoke Detectors\n& Fire Alarms"},
    {"ImagePath": "assets/Screens/Property/Amenities/beware_of_dogs.png", "label": "Beware of Dogs"},
    {"ImagePath": "assets/Screens/Property/Amenities/visitors_check.png", "label": "Visitors Check"},
    {"ImagePath": "assets/Screens/Property/Amenities/access_control.png", "label": "Access Control"},
    {"ImagePath": "assets/Screens/Property/Amenities/anti_harassment.png", "label": "Anti-Harassment"},
  ];

  List<Map<String,String>> amenityBuildList = [
    {"ImagePath": "assets/Screens/Property/Amenities/bed.png", "label": "Bed"},
    {"ImagePath": "assets/Screens/Property/Amenities/fan.png", "label": "Fan"},
    {"ImagePath": "assets/Screens/Property/Amenities/kitchen.png", "label": "Kitchen"},
    {"ImagePath": "assets/Screens/Property/Amenities/mirror.png", "label": "Mirror"},
    {"ImagePath": "assets/Screens/Property/Amenities/air_conditioner.png", "label": "Air Condition"},
    {"ImagePath": "assets/Screens/Property/Amenities/washroom.png", "label": "Washroom"},
    {"ImagePath": "assets/Screens/Property/Amenities/wardrobe.png", "label": "Wardrobe"},
    {"ImagePath": "assets/Screens/Property/Amenities/balcony.png", "label": "Balcony"},
    {"ImagePath": "assets/Screens/Property/Amenities/common_area.png", "label": "Common Area"},
    {"ImagePath": "assets/Screens/Property/Amenities/study_room.png", "label": "Study Room"},
    {"ImagePath": "assets/Screens/Property/Amenities/sports_field.png", "label":"Sports Field"},
    {"ImagePath": "assets/Screens/Property/Amenities/gym.png", "label": "Gym"},
    {"ImagePath": "assets/Screens/Property/Amenities/swimming_pool.png", "label": "Swimming Pool"},
    {"ImagePath": "assets/Screens/Property/Amenities/water_heater.png", "label": "Water Heater"},
    {"ImagePath": "assets/Screens/Property/Amenities/elevator.png", "label": "Elevator"},
    {"ImagePath": "assets/Screens/Property/Amenities/mini_student_shop.png", "label": "Mini Student Shop"},
    {"ImagePath": "assets/Screens/Property/Amenities/car_park.png", "label": "Car Park"},
    {"ImagePath": "assets/Screens/Property/Amenities/clinic.png", "label": "Clinic"},
    {"ImagePath": "assets/Screens/Property/Amenities/outdoor_area.png", "label": "Outdoor Area"},
    {"ImagePath": "assets/Screens/Property/Amenities/dining_area.png", "label": "Dining Area"},
    {"ImagePath": "assets/Screens/Property/Amenities/salon.png", "label": "Salon & Barber"},
    {"ImagePath": "assets/Screens/Property/Amenities/cafeteria.png", "label": "Cafeteria"}, 
    {"ImagePath": "assets/Screens/Property/Amenities/gym.png", "label": "ATM"}, 
  ];

  List<Map<String,String>> billsBuildList = [
    {"ImagePath": "assets/Screens/Property/Amenities/electric_meter.png", "label": "Electricity Meter"},
    {"ImagePath": "assets/Screens/Property/Amenities/water_bill.png", "label": "Tap Water"},
    {"ImagePath": "assets/Screens/Property/Amenities/generator.png", "label": "Generator"},
    {"ImagePath": "assets/Screens/Property/Amenities/wifi.png", "label": "Wifi"},
    {"ImagePath": "assets/Screens/Property/Amenities/waste_bin.png", "label": "Waste Bins"},
    {"ImagePath": "assets/Screens/Property/Amenities/house_keeping.png", "label": "House Keeping"},
    {"ImagePath": "assets/Screens/Property/Amenities/shuttle_services.png", "label": "Shuttle Services"},
    {"ImagePath": "assets/Screens/Property/Amenities/laundry_services.png", "label": "Laundry Services"},
    {"ImagePath": "assets/Screens/Property/Amenities/well.png", "label": "Well/Borehole"},
  ];
  @override
  void initState(){
    super.initState();
    amenities = List.generate(23, (index){return false;});
    bills = List.generate(9, (index){return false;});
    security = List.generate(11, (index){return false;});

  }

 void onTap(
  bool select,
  int index,
  List<bool> type,
  String imagePath,
  String label,
  List<Map<String, String>> typeList,
) {
  setState(() {
    type[index] = !select;

    if (!type[index] && typeList.isNotEmpty) {
      debugPrint("Removing item: $imagePath, $label");
      typeList.removeWhere((item) =>
          item["ImagePath"] == imagePath && item["Label"] == label);
      debugPrint("$typeList");
    } else if (type[index]) {
      typeList.add({"ImagePath": imagePath, "Label": label});
    }
  });
}

  
  @override
  Widget build(BuildContext context) {
    return PopScope(
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
                                  child: Text("Select amenities\naccessible to all\ntenants",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 34.sp,
                                        // letterSpacing: 2,
                                        wordSpacing: 2
                                      )),
                                )),
                              SizedBox(height: 10.h),
                              Container(
                                margin: EdgeInsets.only(left: 30.w, right:30.w),
                                child: Text(
                                  "These are shared facilities and services\navailable to all students in the property or\nhostel",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: const Color(0xFFB0B0B0),
                                    letterSpacing: 1,
                                    // wordSpacing: ,
                                  )
                                )),
                              SizedBox(height: 10.h),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Text(
                                  "Amenities",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: "Roboto-Medium",
                                  )
                                )
                              ),
                              SizedBox(height: 5.h),
                              amenities_? ShowAmenities(
                                typeList: amenityList,
                                onTap: (){
                                  setState(() {
                                    slideUp = true;
                                    currentIndex = 0;
                                    animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                  });
                                }
                                ):
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    slideUp = true;
                                    currentIndex = 0;
                                    animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                                  child: Row(
                                    children:[
                                      Image.asset("assets/Screens/Property/Amenities/ic_add.png", width: 24.w, height: 24.h),
                                      SizedBox(width: 5.h),
                                      Text(
                                        "Add", 
                                      style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp
                                      ))
                                    ]
                                    )
                                  ),
                              ),
                            SizedBox(height: 30.h),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Text(
                                  "Bills & Utilities",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: "Roboto-Medium",
                                  )
                                )
                              ),
                              SizedBox(height: 5.h),
                              bills_ ? ShowAmenities(
                              typeList: billsList,
                              onTap: (){
                                setState(() {
                                slideUp = true;
                                currentIndex = 1;
                                animatedHeight = MediaQuery.of(context).size.height * 0.81;
                              });
                              }
                              )
                              :GestureDetector(
                                onTap: (){
                                  setState(() {
                                    slideUp = true;
                                    currentIndex = 1;
                                    animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                                  child: Row(
                                    children:[
                                      Image.asset("assets/Screens/Property/Amenities/ic_add.png", width: 24.w, height: 24.h),
                                      SizedBox(width: 5.h),
                                      Text(
                                        "Add", 
                                      style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp
                                      ))
                                    ]
                                    )
                                  ),
                              ),
                            SizedBox(height: 30.h),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Text(
                                  "Security & Safety",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: "Roboto-Medium",
                                  )
                                )
                              ),
                              SizedBox(height: 5.h),
                              security_? ShowAmenities(
                                typeList: securityList,
                                onTap: (){
                                  setState(() {
                                    slideUp = true;
                                    currentIndex = 2;
                                    animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                  });
                                }
                                )
                              : GestureDetector(
                                onTap: (){
                                  setState(() {
                                    currentIndex = 2;
                                    slideUp = true;
                                    animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30.h),
                                  child: Row(
                                    children:[
                                      Image.asset("assets/Screens/Property/Amenities/ic_add.png", width: 24.w, height: 24.h),
                                      SizedBox(width: 5.h),
                                      Text(
                                        "Add", 
                                      style: TextStyle(
                                        fontFamily: "Work Sans",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp
                                      ))
                                    ]
                                    )
                                  ),
                              ),
                              SizedBox(height: 150.h)
                          ]),
                    ),
                  ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right:0,
                      child: slideUp ? GestureDetector(
                        onTap: (){
                          if(amenityList.isNotEmpty)amenities_ = true;
                          if(billsList.isNotEmpty)bills_ =true;
                          if(securityList.isNotEmpty)security_ = true;
                          if(amenityList.isNotEmpty && billsList.isNotEmpty && securityList.isNotEmpty )
                          {proceed = true;}
                          else if(!(amenityList.isNotEmpty && billsList.isNotEmpty && securityList.isNotEmpty ))
                          {
                            proceed = false;
                          }
                          
                          setState((){
                            slideUp = false;
                            animatedHeight = 0;
                            currentIndex = 3;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          color: Colors.black.withOpacity(0.6),
                          ),
                      ): Container()
                      ),
                      Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: bottomIndicator(
                              proceed: proceed,
                              height: 150.h,
                              percentageToColor: 7*(0.125),
                              screenWidth: MediaQuery.of(context).size.width,
                              handleNextTap: (){
                                      Get.to(
                                        () => AmenitiesPerRoom(roomAvailable: widget.roomAvailable),
                                        transition: Transition.fadeIn,
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.easeIn
                                      );
                                }
                                                        ),
                            ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                          height: currentIndex == 0 ? animatedHeight: 0,
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.linear,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r)
                              )),
                            child: ScrollSheet(
                              title: "Amenities",
                              scrollHeight: MediaQuery.of(context).size.height * 0.81,
                              buildList: amenityBuildList,
                              typeList: amenityList,
                              type: amenities,
                              enlargeDontCare: false,
                              )
                        )),
                        Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                          height: currentIndex == 1 ? animatedHeight: 0,
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.linear,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r)
                              )),
                            child: ScrollSheet(
                              title: "Bills & Utilities",
                              scrollHeight: MediaQuery.of(context).size.height * 0.81,
                              typeList: billsList,
                              type: bills,
                              buildList: billsBuildList,
                              enlargeDontCare: false,
                              )
                        )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                          height: currentIndex == 2 ? animatedHeight: 0,
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.linear,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r)
                              )),
                            child: ScrollSheet(
                              title: "Security & Safety",
                              scrollHeight: MediaQuery.of(context).size.height * 0.81,
                              typeList: securityList,
                              type: security,
                              buildList: buildList)
                        )
                        )
                      ],
                )),
          )),
    );
  }
}
