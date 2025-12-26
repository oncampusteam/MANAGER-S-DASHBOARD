import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_campus/utls/hexColor.dart';

class RoomSample extends StatefulWidget {
  const RoomSample({super.key});

  @override
  State<RoomSample> createState() => _RoomSampleState();
}

class _RoomSampleState extends State<RoomSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SvgPicture.asset('assets/icons/search-normal.svg'),
            ),
            suffixIconConstraints: BoxConstraints(
              maxHeight: 40,
              minHeight: 40,
              maxWidth: 40,
              minWidth: 40,
            ),
            hint: Text(
              'Search by room name...',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 44,
                    width: 44,
                    child: Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SvgPicture.asset('assets/icons/filter.svg'),
                          Positioned(
                            top: -10,
                            right: -5,
                            child: Container(
                              width: 16,
                              height: 16,

                              decoration: BoxDecoration(
                                color: HexColor('00EFD1'),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Syna',
                                    fontSize: 12,
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
            rowFilter(),
            SizedBox(height: 24),
            Expanded(child: content()),
          ],
        ),
      ),
    );
  }

  Widget rowFilter() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: Offset(2, 2), // x, y
          ),
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            spacing: 45,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: HexColor('00EFD1'), width: 2),
                  ),
                ),
                child: Center(
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: HexColor('00EFD1'), width: 2),
                  ),
                ),
                child: Center(
                  child: Text(
                    '1-in-a Room',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: HexColor('00EFD1'), width: 2),
                  ),
                ),
                child: Center(
                  child: Text(
                    '4-in-a Room',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: HexColor('00EFD1'), width: 2),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Luxury  Room',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              roomCard()
            ],
          ),
        ),
      ),
    );
  }

  Widget roomCard() {
    return Container();
  }
}
