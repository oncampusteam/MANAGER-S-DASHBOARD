import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/classes/hostel.dart';
import 'package:on_campus/widgets/widget.dart';

class AddRoom extends StatefulWidget {
  const AddRoom({super.key});

  @override
  State<AddRoom> createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
  List<PricingClass> rooms = [
    PricingClass(roomType: "1-in-a Room"),
    PricingClass(roomType: "Self-Contained"),
    PricingClass(roomType: "4-in-a Room"),
  ];

  List<Map<dynamic, dynamic>> addRoomFields = [
    {
      "fieldTag": "Room name/number",
      "hintText": "e.g., Room 17",
      "controller": TextEditingController(),
      "dropDown": false,
    },
    {
      "fieldTag": "Room Capacity",
      "hintText": "2-in-1 a room",
      "controller": TextEditingController(),
      "dropDown": true,
    },
    {
      "fieldTag": "Floor",
      "hintText": "General",
      "controller": TextEditingController(),
      "dropDown": false,
    },
    {
      "fieldTag": "Availability Status",
      "hintText": "Empty",
      "controller": TextEditingController(),
      "dropDown": true,
    },
    {
      "fieldTag": "Price of Room",
      "hintText": "GH₵ 55,000",
      "controller": TextEditingController(),
      "dropDown": false,
    },
    {
      "fieldTag": "Room Description(Optional)",
      "hintText": "e.g.,close to shared kitchen",
      "controller": TextEditingController(),
      "dropDown": false,
    },
    {
      "fieldTag": "Rules for Tenants(0ptional)",
      "hintText": "e.g.,no loud music after 10pm",
      "controller": TextEditingController(),
      "dropDown": false,
    },
  ];

  @override
  void initState() {
    super.initState();
    for (Map<dynamic, dynamic> roomField in addRoomFields) {
      roomField["controller"].addListener(() {
        _update(roomField);
      });
    }
  }

  void _update(Map<dynamic, dynamic> roomField) {
    if (roomField["controller"].text.isNotEmpty) {
      if (roomField["fieldTag"] == "Price of Room") {
        if (int.tryParse(roomField["controller"].text) == null) {
          roomField["controller"].clear();
        }
      }
    }
  }

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
                  content: "Add Room",
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
          body: SizedBox(
            height: Constant.height - AppBar().preferredSize.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(color: Color.fromRGBO(137, 140, 143, 0.1)),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    height: Constant.height * 0.04,
                    width: Constant.width,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: Constant.height * 0.04,
                        width: Constant.width * 0.7,
                        child: FittedBox(
                          alignment: Alignment.centerLeft,
                          child: text(
                            content: "Add New Room to 2-in-1 a room",
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w900,
                            fontSize: 21.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Constant.height * 0.015),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    height: Constant.height * 0.05,
                    width: Constant.width,
                    child: FittedBox(
                      alignment: Alignment.centerLeft,
                      child: text(
                        content:
                            "Add a new room to your existing categories using\nthis form",
                        fontFamily: "Outfit",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w200,
                        textColor: Color(0xFF898C8F),
                      ),
                    ),
                  ),

                  SizedBox(height: Constant.height * 0.025),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    height: Constant.height * 0.14 * addRoomFields.length,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: addRoomFields.length,
                      itemBuilder: (context, index) {
                        return newRoomField(
                          fieldName: addRoomFields[index]["fieldTag"],
                          controller: addRoomFields[index]["controller"],
                          hintText: addRoomFields[index]["hintText"],
                          dropDown: addRoomFields[index]["dropDown"],
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        right: Constant.generalPadding,
                        left: Constant.generalPadding,
                        bottom: Constant.height * 0.025,
                      ),
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
                              content: "Continue",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget newRoomField({
    required String fieldName,
    required TextEditingController controller,
    required String hintText,
    bool dropDown = false,
  }) {
    return Column(
      children: [
        SizedBox(height: Constant.height * 0.015),
        SizedBox(
          height: Constant.height * 0.03,
          width: Constant.width,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: text(
              content: fieldName,
              fontFamily: "Outfit",
              fontWeight: FontWeight.w500,
              textColor: Color(0xFF01070F),
            ),
          ),
        ),
        SizedBox(height: Constant.height * 0.01),
        SizedBox(
          height: Constant.height * 0.06,
          child: Stack(
            children: [
              Container(
                width: Constant.width,
                height: Constant.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Color(0xFFB0B0B0),
                ),
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Color(0xFFF7F7F7),
                ),
                child: Container(),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constant.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Constant.width * 0.5,
                        child: TextField(
                          // focusNode: price.focusNode,
                          style: TextStyle(
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                          controller: controller,
                          cursorColor: Colors.black,
                          cursorHeight: Constant.height * 0.02,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hint: SizedBox(
                              height: Constant.height * 0.03,
                              child: FittedBox(
                                alignment: Alignment.bottomLeft,
                                child: text(
                                  content: hintText,
                                  textColor: Color(0xFFB7B8BA),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Outfit",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: Constant.height * 0.025,
                      //   width: Constant.width * 0.1,
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.end,
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //           });
                      //         },
                      //         child: SizedBox(
                      //           height: (Constant.height * 0.025) * 0.4,
                      //           child: Image.asset(
                      //             "assets/Screens/Home/Listings/arrow_drop_up.png",
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             if (price.counter != 0) {
                      //               --price.counter;
                      //               price.controller.text = price.counter
                      //                   .toString();
                      //             }
                      //           });
                      //         },
                      //         child: SizedBox(
                      //           // color: Colors.blue,
                      //           height: (Constant.height * 0.025) * 0.4,
                      //           child: Image.asset(
                      //             "assets/Screens/Home/Listings/arrow_drop_down.png",
                      //             fit: BoxFit.cover,
                      //           ),
                      //         ),
                      //       ),
                      //       // Icon(
                      //       //   Icons.arrow_drop_down,
                      //       //   color: Color(0xFF606060),
                      //       //   size: 18,
                      //       // ),
                      //     ],
                      //   ),
                      // ),
                      if (dropDown == true)
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black,
                          size: 24,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
