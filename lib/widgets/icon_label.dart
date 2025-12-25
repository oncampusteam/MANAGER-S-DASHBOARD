import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:on_campus/classes/constants.dart";

Widget iconLabel(
  String imagePath,
  String label,
  double containerHeight,
  double containerWidth, {
  Color color = const Color(0xFF323232),
  double height = 24,
  double width = 24,
  String fontFamily = "Work Sans",
  double fontSize = 12,
  FontWeight fontWeight = FontWeight.w500,
  bool twoLines = false,
}) {
  return SizedBox(
    // color: twoLines ? Colors.red : null,
    height: twoLines == !true
        ? containerHeight
        : containerHeight + Constant.height * 0.05,
    width: containerWidth,
    child: Row(
      children: [
        Image.asset(imagePath, height: height, width: width),
        SizedBox(width: 5.w),
        SizedBox(
          // color: twoLines ? Colors.green : null,
          height: twoLines
              ? Constant.height * 0.025 + Constant.height * 0.02
              : Constant.height * 0.025,
          width: Constant.width * 0.3,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                color: color,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
