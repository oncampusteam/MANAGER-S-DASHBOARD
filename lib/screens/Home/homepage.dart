import 'package:flutter/material.dart';
import 'package:on_campus/screens/Home/homepage_body.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Stack(
          children: [
          // body //
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              color: Colors.blue,
              child: HomePageBody(selectedIndex: selected,))
            
            ),
        
          // body //
        
        
          // Bottom Nav Bar //
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
               child: CustomBottomNavBar(height: 60, dip: 50)),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
               child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: CustomBottomNavBar(height: 49, dip : 45))),
          // Bottom Nav Bar //
        
          // Circular-Icon //
          Positioned(
            right: 0,
            left: 0,
            bottom: 40,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  selected = 4;
                });
              },
              child: Container(
                height: 45,
                width: 400,
                color: Colors.transparent,
                child: Align(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: selected == 4 ?Color(0xFF2B6F71):Color(0xFF00EFD1),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset.zero,
                          blurRadius: 2,
                          spreadRadius: 0,
                          color: const Color.fromRGBO(0, 0, 0, 0.25)
                        )
                      ]
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/Screens/Home/homeIcon.png"))
                  )
                )
              ),
            )),
          // Circular-Icon
      
      
      
      
          
      
          // Bottom Nav Icons //
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
                  // color: Colors.red,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Dashboard
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: Column(
                      children: [
                      Image.asset(
                        height: 20,
                        width: 23,
                        selected == 0 ? "assets/Screens/Home/dashboard_coloured.png": "assets/Screens/Home/dashboard.png",
                        ),
                      const Spacer(),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                          fontFamily: "Outfit-Regular",
                          color: selected == 0 ? const Color(0xFF2B6F71) : Colors.white,
                          fontSize: 12,
                        )
                        )
                    ],)
                  ),
                  // Dashboard //
      
      
      
      
                // Booking //
                GestureDetector(
                    onTap: (){
                      setState(() {
                        selected = 1;
                      });
                    },
                    child: Column(
                      children: [
                      Image.asset(
                        height: 20,
                        width: 23,
                        selected == 1 ? "assets/Screens/Home/booking_coloured.png": "assets/Screens/Home/booking.png",
                        ),
                      const Spacer(),
                      Text(
                        "Booking",
                        style: TextStyle(
                          fontFamily: "Outfit-Regular",
                          color: selected == 1 ? const Color(0xFF2B6F71) : Colors.white,
                          fontSize: 12,
                        )
                        )
                    ],)
                  ),
                  // Booking //
      
      
      
                  // Space //
                  const SizedBox(width: 45,),
                  // Space //
      
      
      
                  // Payment //
                  GestureDetector(
                    onTap: (){
                      setState((){
                        selected = 2;
                      });
                    },
                    child: Column(
                      children: [
                      Image.asset(
                        height: 20,
                        width: 23,
                        selected == 2 ? "assets/Screens/Home/payment_coloured.png" : "assets/Screens/Home/payment.png",
                        ),
                      const Spacer(),
                      Text(
                        "Payment",
                        style: TextStyle(
                          fontFamily: "Outfit-Regular",
                          color: selected == 2 ? const Color(0xFF2B6F71) : Colors.white,
                          fontSize: 12,
                        )
                        )
                    ],)
                  ),
                  // Payment //
      
      
      
      
                  // Account //
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selected = 3;
                      });
                    },
                    child: Column(
                      children: [
                      Image.asset(
                        height: 20,
                        width: 23,
                        selected == 3 ?"assets/Screens/Home/account_coloured.png": "assets/Screens/Home/account.png",
                        ),
                      const Spacer(),
                      Text(
                        "Account",
                        style: TextStyle(
                          fontFamily: "Outfit-Regular",
                          color: selected == 3 ? const Color(0xFF2B6F71) : Colors.white,
                          fontSize: 12,
                        )
                        )
                    ],)
                  )
                  // Account //
      
                ],)
            )
          )
            
          ],
        ),
      ),
    );
  }
}


