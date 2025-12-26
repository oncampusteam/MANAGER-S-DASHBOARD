import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_campus/utls/hexColor.dart';

class SearchBooking extends StatefulWidget {
  const SearchBooking({super.key});

  @override
  State<SearchBooking> createState() => _SearchBookingState();
}

class _SearchBookingState extends State<SearchBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),

        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * .90,
            child: Column(spacing: 15, children: [search(), content()]),
          ),
        ),
      ),
    );
  }

  Widget search() {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset('assets/icons/search-normal.svg'),
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 40,
          minHeight: 40,
          maxWidth: 40,
          minWidth: 40,
        ),
        hintText: 'Room 206',
        hintStyle: TextStyle(
          color: HexColor('01070F'),
          fontFamily: 'Outfit',
          fontSize: 14,
        ),
        fillColor: HexColor('F7F7F7'),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget content() {
    return SizedBox(
      height: (115.h) * 3,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              height: 85.h,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 56.h,
                    width: 56.w,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/Screens/Home/Dashboard/frame  2.png",
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Room 404",
                                style: TextStyle(
                                  fontFamily: "Outfit",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "1-in-a Room",
                                style: TextStyle(
                                  fontFamily: "Outfit",
                                  fontSize: 14.sp,
                                  color: const Color(0xFF6B6B6B),
                                ),
                              ),
                            ],
                          ),

                          IntrinsicHeight(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: HexColor('F7F7F7'),
                              ),
                              child: Center(
                                child: Text(
                                  'Pending',
                                  style: TextStyle(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    color: HexColor('001529'),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
