import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/classes/hostel.dart';
import 'package:on_campus/widgets/widget.dart';

class Pricing extends StatefulWidget {
  const Pricing({super.key});

  @override
  State<Pricing> createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  List<PricingClass> rooms = [
    PricingClass(roomType: "1-in-a Room"),
    PricingClass(roomType: "Self-Contained"),
    PricingClass(roomType: "4-in-a Room"),
  ];

  @override
  void initState() {
    super.initState();
    for (PricingClass price in rooms) {
      price.controller.addListener(() {
        _update(price);
      });
    }
  }

  void _update(PricingClass price) {
    if (price.controller.text.isNotEmpty) {
      if (int.tryParse(price.controller.text) == null) {
        price.controller.clear();
      } else {
        price.counter = int.parse(price.controller.text);
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

                  SizedBox(height: Constant.height * 0.025),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.generalPadding,
                    ),
                    height: Constant.height * 0.14 * rooms.length,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: rooms.length,
                      itemBuilder: (context, index) {
                        return priceField(price: rooms[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height:
                        Constant.height -
                        AppBar().preferredSize.height -
                        Constant.height * 0.015 -
                        Constant.height * 0.05 -
                        Constant.height * 0.025 -
                        Constant.height * 0.14 * rooms.length -
                        Constant.height * 0.0738,
                    child: Align(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget priceField({required PricingClass price}) {
    return Column(
      children: [
        SizedBox(height: Constant.height * 0.015),
        SizedBox(
          height: Constant.height * 0.03,
          width: Constant.width,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: text(
              content: price.roomType,
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
                          focusNode: price.focusNode,
                          style: TextStyle(
                            fontFamily: "Outfit",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                          controller: price.controller,
                          cursorColor: Colors.black,
                          cursorHeight: Constant.height * 0.02,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hint: SizedBox(
                              height: Constant.height * 0.03,
                              child: FittedBox(
                                alignment: Alignment.bottomLeft,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  price.counter = price.counter + 1;
                                  price.controller.text = price.counter
                                      .toString();
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
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (price.counter != 0) {
                                    --price.counter;
                                    price.controller.text = price.counter
                                        .toString();
                                  }
                                });
                              },
                              child: SizedBox(
                                // color: Colors.blue,
                                height: (Constant.height * 0.025) * 0.4,
                                child: Image.asset(
                                  "assets/Screens/Home/Listings/arrow_drop_down.png",
                                  fit: BoxFit.cover,
                                ),
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
    );
  }
}
