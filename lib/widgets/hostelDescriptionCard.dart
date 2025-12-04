import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";


typedef GestureDetectorCallback = void Function();
Widget DescriptionCard(
    {double screenWidth = 0,
    String imageUrl = "",
    String textDescription = "",
    bool enlargedImage = false,
    required GestureDetectorCallback onTap,
    required bool selected,
    }) {
  return GestureDetector(
    onTap:(){
      onTap();
    },
    child: SizedBox(
      height: 100.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 180.h,
              padding: EdgeInsets.only(top: enlargedImage? 0: 10.h, left: 10.h, bottom: 5.h),
              decoration: BoxDecoration(
                  color: selected? const Color.fromRGBO(0, 239, 209, 0.05): null,
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color:selected? const Color(0xFF00EFD1):Colors.black)),
              child: FittedBox(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // color: Colors.red,
                        padding: EdgeInsets.only(top: enlargedImage ? 5 :20.h, bottom: enlargedImage ? 5 :5.h),
                        height: enlargedImage ? 25: 50.h,
                        width: 25.w,
                        child: Image.asset(
                          imageUrl,
                        )),
                    SizedBox(
                        // color: Colors.green,
                        height: enlargedImage ? 20.h: 15.h,
                        child: FittedBox(
                          child: Text(textDescription,
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                height: 1.2.h
                              )),
                        ))
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}
