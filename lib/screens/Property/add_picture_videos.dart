import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/screens/Property/uploadPhoto.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';

class AddPictureVideos extends StatefulWidget {
  const AddPictureVideos({super.key});

  @override
  State<AddPictureVideos> createState() => _AddPictureVideosState();
}

class _AddPictureVideosState extends State<AddPictureVideos> {
  bool proceed = false;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Stack(
            children:[ SizedBox(
              height: 935.h,
              width: 430.w,
              child: SingleChildScrollView(
                child: Column(
                  children:[
                    saveExitQuestion(),
                    Container(
                     height: 100.h,
                     margin: EdgeInsets.symmetric(horizontal: 30.h),
                     child: FittedBox(
                       alignment: Alignment.centerLeft,
                       child: Text("Add some photos &\nvideos of your property",
                           style: TextStyle(
                             fontFamily: "Poppins",
                             fontWeight: FontWeight.w600,
                             fontSize: 34.sp,
                             // letterSpacing: 2,
                             wordSpacing: 2
                           )),
                     )),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap:() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const UploadPhoto();
                        }));
                      },
                      child: Container(
                        height: 60.h,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: const Color(0xFF999999)),
                        ),
                        child: Align(
                          child: 
                            Row(
                              children: [
                                SizedBox(
                                  height: 24.h,
                                    width: 24.w,
                                  child: Image.asset(
                                    "assets/Screens/Property/add_picture_videos/add_image.png",
                                    height: 24.h,
                                    width: 24.w
                                    ),
                                ),
                                Expanded(
                                  child: Align(
                                    child: Container(
                                      child: Text(
                                        "Add photos",
                                        style: TextStyle(
                                          fontFamily: "Roboto-Medium",
                                          fontSize: 18.sp,
                                          )
                                        )
                                      ),
                                  )
                                  )
                              ]
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 60.h,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 30.h),
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: const Color(0xFF999999)),
                      ),
                      child: Align(
                        child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 24.h,
                                  width: 24.w,
                                child: Image.asset(
                                  "assets/Screens/Property/add_picture_videos/add_videos.png",
                                  height: 24.h,
                                  width: 24.w
                                  ),
                              ),
                              Expanded(
                                child: Align(
                                  child: Container(
                                    child: Text(
                                      "Add videos",
                                      style: TextStyle(
                                        fontFamily: "Roboto-Medium",
                                        fontSize: 18.sp,
                                        )
                                      )
                                    ),
                                )
                                )
                            ]
                          ),
                        )
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      height: 60.h,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 30.h),
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: const Color(0xFF999999)),
                      ),
                      child: Align(
                        child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 24.h,
                                  width: 24.w,
                                child: Image.asset(
                                  "assets/Screens/Property/add_picture_videos/360-degree.png",
                                  height: 24.h,
                                  width: 24.w
                                  ),
                              ),
                              Expanded(
                                child: Align(
                                  child: Container(
                                    child: Text(
                                      "Add 360° view",
                                      style: TextStyle(
                                        fontFamily: "Roboto-Medium",
                                        fontSize: 18.sp,
                                        )
                                      )
                                    ),
                                )
                                )
                            ]
                          ),
                        )
                    )
                  ]
                  ),
              ),
            ),
            Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: bottomIndicator(
                            proceed: proceed,
                            handleNextTap: ((){
                              // Get.to(
                              //           () => const PropertyLocation(),
                              //           transition: Transition.fadeIn,
                              //           // duration: const Duration(seconds: 1),
                              //           curve: Curves.easeIn
                              //         );
                            }),
                            height: 150.h,
                            percentageToColor: 2*(0.125),
                            containerToColor: 1,
                            screenWidth: MediaQuery.of(context).size.width,
                                                      ),
                          )
              ]
          )
          ),
          
        )
        );
  }
}