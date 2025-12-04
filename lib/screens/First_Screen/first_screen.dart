import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/Screens/UserAuthScreen/UserAuthScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //   return UserAuth();
            // }));
            // Get.to(() => const UserAuth(), transition: Transition.fadeIn);
            return const UserAuthScreen();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
                color: Colors.white,
                child: Center(
                    child: SizedBox(
                        height: 97.h,
                        width: 283.w,
                        child: Image.asset(
                            "assets/Screens/First_screen/onCampus.png"))));
          } else {
            return const Placeholder();
          }
        });
  }
}
