import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";


Widget iconLabel(
  String imagePath,
  String label,
  double containerHeight,
  double containerWidth,
  {
  Color color = const Color(0xFF323232),
  double height = 24,
  double width = 24,
  String fontFamily = "Work Sans",
  double fontSize = 12,
  FontWeight fontWeight = FontWeight.w500,
  }
  ){
  return SizedBox(
    height: containerHeight,
    width: containerWidth,
    child: Row(
      children: [
        Image.asset(imagePath, height: height, width: width),
        SizedBox(width: 5.w),
        Text(label, style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: color
        ))
      ],)
  );
}