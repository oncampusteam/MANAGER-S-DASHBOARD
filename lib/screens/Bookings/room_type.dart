import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_campus/screens/Bookings/room_sample.dart';
import 'package:on_campus/utls/hexColor.dart';

class RoomType extends StatefulWidget {
  const RoomType({super.key});

  @override
  State<RoomType> createState() => _RoomTypeState();
}

class _RoomTypeState extends State<RoomType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
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
            hint: Text(
              'Search by room type...',
              style: TextStyle(
                color: HexColor('898C8F'),
                fontFamily: 'Outfit',
                fontSize: 14,
              ),
            ),
            fillColor: HexColor('F7F7F7'),
            filled: true,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
 
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text(
                    'Choose a Room Type',
                    style: TextStyle(
                      color: HexColor('111111'),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  content(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Stack(
      children: [
        Container(
          height: 222,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade200,
          ),
        ),

        Positioned(
          left: 8,
          right: 8,
          bottom: 16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1-in-a Room',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  Text(
                    '10 / 50 Available Rooms',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => RoomSample()));
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('00EFD1'),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(14),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 7,
                  ),
                  child: Text(
                    'View',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poopins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
