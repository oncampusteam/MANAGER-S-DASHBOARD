import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/widgets/hostelDescriptionCard.dart';
import 'package:on_campus/widgets/icon_label.dart';

class ScrollSheet extends StatefulWidget {
  const ScrollSheet({
    super.key,
    required this.title,
    required this.scrollHeight,
    this.paddingLeft,
    this.paddingRight,
    this.paddingTop,
    this.paddingBottom,
    required this.typeList,
    required this.type,
    required this.buildList,
    this.enlargeDontCare,
  });
  final String title;
  final double scrollHeight;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingTop;
  final double? paddingBottom;
  final List<Map<String, String>> typeList;
  final List<bool> type;
  final List<Map<String, String>> buildList;
  final bool? enlargeDontCare;
  // final GenericRoomDetails detailsType;
  @override
  State<ScrollSheet> createState() => _ScrollSheetState();
}

class _ScrollSheetState extends State<ScrollSheet> {
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
        typeList.removeWhere(
          (item) => item["ImagePath"] == imagePath && item["Label"] == label,
        );
        debugPrint(".....................");
      } else if (type[index]) {
        typeList.add({"ImagePath": imagePath, "Label": label});
        debugPrint("It's adding.............");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
          height: widget.scrollHeight,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: widget.scrollHeight * 0.09,
                child: Column(
                  children: [
                    Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF79747E),
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF323232),
                      ),
                    ),
                    // SizedBox(height: 10.h),
                    const Divider(color: Color.fromRGBO(120, 120, 120, 0.3)),
                  ],
                ),
              ),

              SizedBox(
                height: widget.scrollHeight * 0.89,
                child: SingleChildScrollView(
                  child: Builder(
                    builder: (context) {
                      int typeCount = (widget.buildList.length / 2).ceil();
                      return Column(
                        children: List.generate(typeCount, (i) {
                          int firstIndex = i * 2;
                          int secondIndex = firstIndex + 1;
                          return SizedBox(
                            child: Column(
                              children: [
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DescriptionCard(
                                      enlargedImage:
                                          widget.enlargeDontCare == null
                                          ? firstIndex == 6
                                                ? true
                                                : false
                                          : widget.enlargeDontCare!,
                                      screenWidth: MediaQuery.of(
                                        context,
                                      ).size.width,
                                      imageUrl: widget
                                          .buildList[firstIndex]["ImagePath"]!,
                                      textDescription: widget
                                          .buildList[firstIndex]["label"]!,
                                      onTap: () {
                                        onTap(
                                          widget.type[firstIndex],
                                          firstIndex,
                                          widget.type,
                                          widget
                                              .buildList[firstIndex]["ImagePath"]!,
                                          widget
                                              .buildList[firstIndex]["label"]!,
                                          widget.typeList,
                                        );
                                      },
                                      selected: widget.type[firstIndex],
                                    ),
                                    if (secondIndex < widget.buildList.length)
                                      DescriptionCard(
                                        enlargedImage:
                                            widget.enlargeDontCare == null
                                            ? secondIndex == 5
                                                  ? true
                                                  : false
                                            : widget.enlargeDontCare!,
                                        screenWidth: MediaQuery.of(
                                          context,
                                        ).size.width,
                                        imageUrl: widget
                                            .buildList[secondIndex]["ImagePath"]!,
                                        textDescription: widget
                                            .buildList[secondIndex]["label"]!,
                                        onTap: () {
                                          onTap(
                                            widget.type[secondIndex],
                                            secondIndex,
                                            widget.type,
                                            widget
                                                .buildList[secondIndex]["ImagePath"]!,
                                            widget
                                                .buildList[secondIndex]["label"]!,
                                            widget.typeList,
                                          );
                                        },
                                        selected: widget.type[secondIndex],
                                      )
                                    else
                                      (Container(
                                        color: Colors.red,
                                        width: 100.w,
                                      )),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowAmenities extends StatefulWidget {
  const ShowAmenities({super.key, required this.typeList, required this.onTap});
  final List<Map<String, String>> typeList;
  final void Function() onTap;

  @override
  State<ShowAmenities> createState() => _ShowAmenitiesState();
}

class _ShowAmenitiesState extends State<ShowAmenities> {
  bool slide = false;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        bool extraRow = false;
        // debugPrint("$amenityList");
        int typeCount = (widget.typeList.length / 2).ceil();
        if (widget.typeList.length % 2 == 0) {
          typeCount++;
          extraRow = true;
        }
        debugPrint("${widget.typeList.length}");
        // debugPrint("${widget.typeList[0]}");
        bool istwoLine(String text) {
          if (text.contains('\n')) {
            return true;
          }
          return false;
        }

        ;
        return Column(
          children: List.generate(typeCount, (i) {
            int firstIndex = i * 2;
            int secondIndex = firstIndex + 1;
            return SizedBox(
              // color: Colors.blue,
              // margin: EdgeInsets.symmetric(horizontal: 30.w),
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (typeCount - 1 == i && extraRow == true)
                    GestureDetector(
                      onTap: widget.onTap,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        // margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Screens/Property/Amenities/ic_add.png",
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(width: 5.h),
                            SizedBox(
                              height: Constant.height * 0.025,
                              child: FittedBox(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    iconLabel(
                      widget.typeList[firstIndex]["ImagePath"]!,
                      widget.typeList[firstIndex]["Label"]!,
                      50.h,
                      MediaQuery.of(context).size.width * 0.4,
                      twoLines: istwoLine(
                        (widget.typeList[firstIndex]["Label"]!),
                      ),
                    ),
                  if (secondIndex < widget.typeList.length)
                    iconLabel(
                      widget.typeList[secondIndex]["ImagePath"]!,
                      widget.typeList[secondIndex]["Label"]!,
                      50.h,
                      MediaQuery.of(context).size.width * 0.4,
                      twoLines: istwoLine(
                        (widget.typeList[secondIndex]["Label"]!),
                      ),
                    )
                  else if (extraRow == false)
                    GestureDetector(
                      onTap: widget.onTap,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        // margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Screens/Property/Amenities/ic_add.png",
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(width: 5.h),
                            SizedBox(
                              height: Constant.height * 0.025,
                              child: FittedBox(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontFamily: "Work Sans",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    SizedBox(width: 100.w),
                  // const SizedBox(width: 100), // placeholder if no second item
                ],
              ),
            );
          }),
        );
      },
    );
  }
}
