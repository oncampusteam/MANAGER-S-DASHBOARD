import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({super.key});

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  bool proceed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Stack(
            children: [
              SizedBox(
                height: 935.h,
                width: 430.w,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Container(
                        height: 50.h,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.close, size: 25.h),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Upload Photo",
                                    style: TextStyle(
                                      fontFamily: "Roboto-Medium",
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  Text(
                                    "Exterior of the property only",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.add, size: 25.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //                 bottom: 0,
              //                 left: 0,
              //                 right: 0,
              //                 child: bottomIndicator(
              //                 proceed: proceed,
              //                 handleNextTap: ((){
              //                   // Get.to(
              //                   //           () => const PropertyLocation(),
              //                   //           transition: Transition.fadeIn,
              //                   //           // duration: const Duration(seconds: 1),
              //                   //           curve: Curves.easeIn
              //                   //         );
              //                 }),
              //                 height: 150.h,
              //                 percentageToColor: 2*(0.125),
              //                 containerToColor: 1,
              //                 screenWidth: MediaQuery.of(context).size.width,
              //                                           ),
              //               )
            ],
          ),
        ),
      ),
    );
  }
}
