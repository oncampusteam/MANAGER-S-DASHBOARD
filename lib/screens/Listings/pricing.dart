import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/widgets/widget.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  TextEditingController oneInARoom = TextEditingController();
  TextEditingController selfContained = TextEditingController();
  TextEditingController fourInARoom = TextEditingController();

  FocusNode oneInARoomFocusNode = FocusNode();
  FocusNode selfContainedFocusNode = FocusNode();
  FocusNode fourInARoomFocusNode = FocusNode();

  int oneInARoomCounter = 0;
  int selfContainedCounter = 0;
  int fourInARoomCounter = 0;

  @override
  void initState() {
    super.initState();
    oneInARoom.addListener(_update);
  }

  void _update() {
    if (oneInARoom.text.isNotEmpty) {
      if (int.tryParse(oneInARoom.text) != null) {
        oneInARoom.clear();
      }
      oneInARoomCounter = int.parse(oneInARoom.text);
    }
    if (selfContained.text.isNotEmpty) {
      if (int.parse(selfContained.text).isNaN) {
        selfContained.clear();
      }
      selfContainedCounter = int.parse(selfContained.text);
    }
    if (fourInARoom.text.isNotEmpty) {
      if (int.parse(fourInARoom.text).isNaN) {
        fourInARoom.clear();
      }
      fourInARoomCounter = int.parse(fourInARoom.text);
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
                  content: "Update Room Prices",
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
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
            child: Column(
              children: [
                SizedBox(height: Constant.height * 0.015),
                SizedBox(
                  height: Constant.height * 0.05,
                  child: FittedBox(
                    child: text(
                      content:
                          "Adjust the pricing for each room category as needed.\nChanges will reflect after saving.",
                      fontFamily: "Outfit",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w200,
                      textColor: Color(0xFF898C8F),
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
                                  focusNode: oneInARoomFocusNode,
                                  style: TextStyle(
                                    fontFamily: "Outfit",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                  controller: oneInARoom,
                                  cursorColor: Colors.black,
                                  cursorHeight: Constant.height * 0.02,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hint: SizedBox(
                                      height: Constant.height * 0.025,
                                      child: FittedBox(
                                        alignment: Alignment.centerLeft,
                                        child: text(
                                          content: "Enter price(GH₵)",
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
                              SizedBox(
                                height: Constant.height * 0.025,
                                width: Constant.width * 0.1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (oneInARoomFocusNode.hasFocus) {
                                            oneInARoom.text =
                                                (oneInARoomCounter++)
                                                    .toString();
                                          }
                                        });
                                      },
                                      child: SizedBox(
                                        height: (Constant.height * 0.025) * 0.4,
                                        child: Image.asset(
                                          "assets/Screens/Home/Listings/arrow_drop_up.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // color: Colors.blue,
                                      height: (Constant.height * 0.025) * 0.4,
                                      child: Image.asset(
                                        "assets/Screens/Home/Listings/arrow_drop_down.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.arrow_drop_down,
                                    //   color: Color(0xFF606060),
                                    //   size: 18,
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
