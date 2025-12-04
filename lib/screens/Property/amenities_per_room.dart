import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/property_step_2.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";
import "package:on_campus/widgets/scroll_sheet.dart";

class AmenitiesPerRoom extends StatefulWidget {
  const AmenitiesPerRoom({
    super.key,
    required this.roomAvailable,
    });
    final List<int> roomAvailable;

  @override
  State<AmenitiesPerRoom> createState() => _AmenitiesPerRoomState();
}

class _AmenitiesPerRoomState extends State<AmenitiesPerRoom> {

  ScrollController controller = ScrollController();


  bool proceed = false;
  bool slideUp = false;
  double animatedHeight = 0;
  int currentIndex = 3;
  List<List<bool>> amenities = <List<bool>>[];
  List<List<bool>> bills = <List<bool>>[];
  List<bool> security = <bool>[];
  bool amenities_ = false;
  bool bills_ = false;
  bool security_ = false;
  int amenityIndex = 0;
  int billsIndex = 0;

  List<Map<String, String>> amenitiesForOneInARoom = [];
  List<Map<String, String>> amenitiesForTwoInARoom = [];
  List<Map<String,String>> amenitiesForThreeInARoom = [];
  List<Map<String,String>> amenitiesForFourInARoom = [];
  List<Map<String,String>> amenitiesForFiveInARoom = [];
  List<Map<String,String>> amenitiesForSelfContainedARoom = [];
  List<Map<String,String>> amenitiesForLuxuryRoom = [];
  List<List<Map<String,String>>>amenityRoomListType = [];


  List<Map<String, String>> billsForOneInARoom = [];
  List<Map<String, String>> billsForTwoInARoom = [];
  List<Map<String,String>> billsForThreeInARoom = [];
  List<Map<String,String>> billsForFourInARoom = [];
  List<Map<String,String>> billsForFiveInARoom = [];
  List<Map<String,String>> billsForSelfContainedARoom = [];
  List<Map<String,String>> billsForLuxuryRoom = [];
  List<List<Map<String,String>>>billsRoomListType = [];

  List<bool> amenity_ = [];
  List<bool> bill_ = [];

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
  
  bool checkProceed(){
    for(List item in amenityRoomListType){
      if (item.isEmpty)return false;
    }
    for(List item in billsRoomListType){
      if (item.isEmpty)return false;
    }
    return true;
  }
  
  @override
  void initState(){
    super.initState();
    int length = widget.roomAvailable.length;
    amenities = List.generate(length + 1, (index){return List.generate(23, (index){return false;});});
    bills = List.generate(length + 1, (index){return List.generate(9, (index){return false;});});
    security = List.generate(11, (index){return false;});
    debugPrint("Rooms Type Available: ${widget.roomAvailable}");
    
    debugPrint("$length");
    amenity_ = List.generate((length+1), (index){
      return false;
    });
    bill_ = List.generate((length+1), (index){
      return false;
    });

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
                                  child: Text("Select amenities\navailable for each room\ntype",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 34.sp,
                                        // letterSpacing: 2,
                                        wordSpacing: 2
                                      )),
                                )),
                              Container(
                                margin: EdgeInsets.only(left: 30.w, right:30.w),
                                child: Text(
                                  "Choose the amenities that applies to each of\nthe room type",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                    color: const Color(0xFFB0B0B0),
                                    letterSpacing: 1,
                                    // wordSpacing: ,
                                  )
                                )),
                              SizedBox(height: 10.h),
                              Builder(
                                builder: (context){
                                  return Column(
                                      children: List.generate(widget.roomAvailable.length, (i){   
                                        int localIndex = i;
                                        debugPrint("This is the value of the local index: $localIndex");                                    
                                        if(widget.roomAvailable[i]== 1){
                                          amenityRoomListType.add(amenitiesForOneInARoom);
                                          billsRoomListType.add(billsForOneInARoom);
                                        }
                                        if(widget.roomAvailable[i]== 2){
                                          amenityRoomListType.add(amenitiesForTwoInARoom);
                                          billsRoomListType.add(billsForTwoInARoom);
                                        }
                                        if(widget.roomAvailable[i]==3){
                                          amenityRoomListType.add(amenitiesForThreeInARoom);
                                          billsRoomListType.add(billsForThreeInARoom);
                                        }
                                        if(widget.roomAvailable[i]==4){
                                          amenityRoomListType.add(amenitiesForFourInARoom);
                                          billsRoomListType.add(billsForFourInARoom);
                                        }
                                        if(widget.roomAvailable[i]==5){
                                          amenityRoomListType.add(amenitiesForFiveInARoom);
                                          billsRoomListType.add(billsForFiveInARoom);
                                        }
                                        if(widget.roomAvailable[i]==6){
                                          amenityRoomListType.add(amenitiesForSelfContainedARoom);
                                          billsRoomListType.add(billsForSelfContainedARoom);
                                        }
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                              SizedBox(height: 40.h),
                                              Container(
                                              margin: EdgeInsets.symmetric(horizontal: 30.w),
                                              child: Text(
                                                widget.roomAvailable[i]==6 ? "Self Contained Room": "${widget.roomAvailable[i]}-in-a-room",
                                                style: TextStyle(
                                                  fontSize: 22.sp,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w500,
                                                )
                                              )
                                            ),
                                              SizedBox(height: 5.h),
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
                                          amenity_[localIndex]? ShowAmenities(
                                            typeList: amenityRoomListType[i],
                                            onTap: (){
                                              // amenityIndex = widget.roomAvailable.firstWhere((element){return element == widget.roomAvailable[i];});
                                              amenityIndex = i;
                                              debugPrint("This is the amenityIndex: $amenityIndex");
                                              setState(() {
                                                slideUp = true;
                                                currentIndex = 0;
                                                animatedHeight = MediaQuery.of(context).size.height * 0.81;
                                              });
                                            }
                                            ):
                                          GestureDetector(
                                            onTap: (){
                                              amenityIndex = i;
                                              debugPrint("Amenity: $amenityIndex");
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
                                          SizedBox(height: 40.h),
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
                                            bill_[localIndex] ? ShowAmenities(
                                            typeList: billsRoomListType[i],
                                            onTap: (){
                                              billsIndex = i;
                                              debugPrint("$billsIndex");
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
                                          ],);
                                      }),);
                                }
                                )
                          ]),
                    ),
                  ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right:0,
                      child: slideUp ? GestureDetector(
                        onTap: (){
                          // if(amenityList.isNotEmpty)amenities_ = true;
                          // if(billsList.isNotEmpty)bills_ =true;
                          // if(securityList.isNotEmpty)security_ = true;
                          // if(amenityList.isNotEmpty && billsList.isNotEmpty && securityList.isNotEmpty )
                          // {proceed = true;}
                          // else if(!(amenityList.isNotEmpty && billsList.isNotEmpty && securityList.isNotEmpty ))
                          // {
                          //   proceed = false;
                          // }
                          proceed = checkProceed();
                          if(amenityRoomListType[amenityIndex].isNotEmpty){amenity_[amenityIndex]= true;}
                          else if(amenityRoomListType[amenityIndex].isEmpty){amenity_[amenityIndex] = false;}
                          if(billsRoomListType[billsIndex].isNotEmpty){bill_[amenityIndex]= true;}
                          else if(billsRoomListType[billsIndex].isEmpty){bill_[amenityIndex]= false;}
                          debugPrint("$amenityIndex");
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
                              handleNextTap: (){
                                      Get.to(
                                        () => const PropertyStep2(),
                                        transition: Transition.fadeIn,
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.easeIn
                                      );
                                },
                              proceed: proceed,
                              height: 150.h,
                              percentageToColor: 8*(0.125),
                              screenWidth: MediaQuery.of(context).size.width,
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
                              typeList: amenityRoomListType.isEmpty? [{}]: amenityRoomListType[amenityIndex],
                              type: amenities[amenityIndex],
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
                              typeList: billsRoomListType.isEmpty ? [{}]: billsRoomListType[billsIndex],
                              type: bills[billsIndex],
                              buildList: billsBuildList,
                              enlargeDontCare: false,
                              )
                        )),
                      ],
                )),
          )),
    );
  }
}
