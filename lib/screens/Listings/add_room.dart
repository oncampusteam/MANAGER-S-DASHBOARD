import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/screens/Home/homepage.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
// import 'package:on_campus/classes/hostel.dart';
import 'package:on_campus/widgets/widget.dart';

class AddRoom extends StatefulWidget {
  const AddRoom({super.key});

  @override
  State<AddRoom> createState() => _AddRoomState();
}

class _AddRoomState extends State<AddRoom> {
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
  bool add = false;
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: !add ? Colors.white : Color(0xFF808080),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        child: Stack(
          children: [
            SafeArea(
              child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 24,
                    ),
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
                  actions: [
                    Icon(Icons.more_horiz, color: Colors.black, size: 24),
                  ],
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
                              // right: Constant.generalPadding,
                              // left: Constant.generalPadding,
                              bottom: Constant.height * 0.025,
                            ),
                            child: bottomIndicator(
                              handleNextTap: () {
                                setState(() {
                                  add = true;
                                });
                              },
                              proceed: true,
                              height: Constant.height * 0.06,
                              screenWidth: Constant.width,
                              variant: true,
                              text: "Add",
                              leftButtionText: "Cancel",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  if (add) {
                    setState(() {
                      add = false;
                    });
                  }
                },
                child: Container(
                  height: add ? Constant.height : 0,
                  width: Constant.width,
                  color: add
                      ? const Color.fromRGBO(0, 0, 0, 0.5)
                      : Colors.transparent,
                ),
              ),
            ),
            animatedSheet(
              context: context,
              topButtonText: "View Room",
              bottomButtonText: "Done",
              h1: "Room Created",
              h2: "Click on the button below to view the \nroom you just created",
              add: add,
              topButtonTap: () {
                setState(() {});
              },
              bottomButtonTap: () {
                setState(() {
                  Get.to(() => HomePage());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
