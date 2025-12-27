import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/widgets/widget.dart';

class Generic extends StatefulWidget {
  final String status;
  const Generic({super.key, required this.status});

  @override
  State<Generic> createState() => _GenericState();
}

class _GenericState extends State<Generic> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Container(
            height: 54.h,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Color.fromRGBO(112, 112, 112, 0.15),
            ),
            child: Row(
              children: [
                Icon(Icons.search_rounded, size: 20, color: Color(0xFFA2A2A7)),
                text(
                  content: "  Search",
                  fontFamily: "Poppins",
                  fontSize: 14.sp,
                  textColor: Color(0xFFA2A2A7),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              height: 44.h,
              width: 44.w,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/Screens/Home/Payment/filter.png",
                    height: 24.h,
                    width: 24.w,
                  ),
                  Positioned(
                    top: 0,
                    right: 10.w,
                    child: Container(
                      height: 16.h,
                      width: 16.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF00EFD1),
                        shape: BoxShape.circle,
                      ),
                      child: FittedBox(
                        child: text(content: "9", textColor: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return buildPaymentItem(
                  widget.status == "Received"
                      ? "assets/Screens/Home/Payment/andrea.png"
                      : widget.status == "Pending"
                      ? 'assets/Screens/Home/Payment/christiana.png'
                      : 'assets/Screens/Home/Payment/miles.png',
                  widget.status == "Received"
                      ? "Andrea B."
                      : widget.status == "Pending"
                      ? "Cristina G"
                      : "Miles K",
                  "Room 4",
                  widget.status == "Received"
                      ? "1-in-a Room"
                      : widget.status == "Pending"
                      ? "1-in-a Room"
                      : "4-in-a Room",
                  widget.status == "Received" ? "Paid" : widget.status,
                  widget.status == "Received"
                      ? Color(0xFF00D689)
                      : widget.status == "Pending"
                      ? Color(0xFF8A8B8F)
                      : Color(0xFFEA6A5D),
                  "GHS5,999",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
