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
            children: [roomCard()],
          ),
        ),
      ),
    );
  }

  Widget roomCard() {
    return Container(
      height: 127,
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            offset: Offset(2, 2), // x, y
          ),
        ],
      ),
      child: Row(
        spacing: 15,
        children: [
          Container(
            width: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: HexColor('F1F1F1'),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Room 406',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: HexColor('111111'),
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Available From: May 2025',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: HexColor('333333'),
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Wifi • Air conditioning • Kitchen• Parking • Balcony..',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: HexColor('6B6F7B'),
                    fontFamily: 'Roboto',
                    fontSize: 10,
                  ),
                ),

                SizedBox(height: 8),

                IntrinsicWidth(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(color: HexColor('FFE1E1'), borderRadius: BorderRadius.circular(100)),
                    child: Center(
                      child: Text(
                        'Full',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 8,
                          color: HexColor('FF3636'),
                        ),
                      ),
                    ),
                  ),
                ),
             

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(text: TextSpan(text: 'GHS 3,000', style: TextStyle(
                      fontFamily: ''
                    )))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
