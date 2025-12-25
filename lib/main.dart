import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/First_Screen/first_screen.dart';
// import 'package:on_campus/screens/First_Screen/first_screen.dart';
// import 'package:on_campus/Screens/First_Screen/first_screen.dart';
import 'package:on_campus/screens/Home/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

double screenHeight = 0;
double screenWidth = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      ),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    // debugPrint(
    //     "This is the value of screen height: ${MediaQuery.of(context).size.height} ...............................");
    // debugPrint(
    //     "This is the value of screen width: ${MediaQuery.of(context).size.width} ...............................");
    return const ScreenUtilInit(
      designSize: Size(430, 932),
      child: Material(
        child:
            // HomePage(),
            FirstScreen(),
      ),
    );
  }
}
