import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/classes/hostel.dart';
import 'package:on_campus/widgets/widget.dart';

class RoomListings extends StatefulWidget {
  const RoomListings({super.key});

  @override
  State<RoomListings> createState() => _RoomListingsState();
}

int selectedIndex = 0;

class _RoomListingsState extends State<RoomListings> {
  List<String> items = ["All", "1-in-a Room", "4-in-a Room", "Luxury Room"];

  late List<Size?> sizes;
  late List<GlobalKey> keys;
  double animatedWidth = 0;

  @override
  void initState() {
    super.initState();

    keys = List.generate(items.length, (_) => GlobalKey());
    sizes = List.filled(items.length, null);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateSizes();
    });

    if (mounted) {
      animateFunct();
    }
  }

  void animateFunct() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      animatedWidth = sizes[selectedIndex]?.width ?? Size(0, 0).width;
    });
  }

  void _calculateSizes() {
    for (int i = 0; i < keys.length; i++) {
      final context = keys[i].currentContext;
      if (context != null) {
        sizes[i] = context.size;
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left, color: Colors.black, size: 24),
          ),
          // centerTitle: true,
          title: SizedBox(
            // color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Constant.height * 0.03,
                  child: FittedBox(
                    child: text(
                      content: "Room Listings",
                      fontFamily: "Plus Jakarta Sans",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: Constant.height * 0.015,
                  child: FittedBox(
                    child: text(
                      content: "Manage all rooms under your Property",
                      fontFamily: "Poppins",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actionsPadding: EdgeInsets.only(right: Constant.generalPadding),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RoomListings()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Constant.width * 0.03,
                ),
                height: Constant.height * 0.037,
                decoration: BoxDecoration(
                  color: Constant.primaryColor,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Align(
                  child: SizedBox(
                    height: Constant.height * 0.018,
                    child: FittedBox(
                      child: text(
                        content: "Add New Room",
                        fontSize: 15.sp,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                        textColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SizedBox(
          // padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
          child: Column(
            children: [
              SizedBox(height: Constant.height * 0.015),
              Container(
                height: Constant.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                      color: const Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(
                        left: Constant.generalPadding * 2,
                        right: index + 1 == items.length
                            ? Constant.generalPadding * 2
                            : 0,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              animatedWidth = 0;
                              setState(() {
                                selectedIndex = index;
                                animateFunct();
                              });
                            },
                            child: SizedBox(
                              key: keys[index],
                              height: (Constant.height * 0.06) * 0.95,
                              child: Align(
                                child: SizedBox(
                                  height: Constant.height * 0.025,
                                  child: FittedBox(
                                    child: text(
                                      content: items[index],
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (index == selectedIndex)
                            AnimatedContainer(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn,
                              height: (Constant.height * 0.06) * 0.04,
                              width: animatedWidth,
                              decoration: BoxDecoration(
                                color: Constant.primaryColor,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height:
                    Constant.height -
                    AppBar().preferredSize.height -
                    (Constant.height * 0.015) -
                    (Constant.height * 0.06) -
                    MediaQuery.of(context).padding.top,
                width: Constant.width,
                child: RoomCardList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomCardList extends StatefulWidget {
  const RoomCardList({super.key});

  @override
  State<RoomCardList> createState() => _RoomCardListState();
}

class _RoomCardListState extends State<RoomCardList> {
  List<Room> all = [
    Room(
      roomNumber: "406",
      status: "Full",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/Asir.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFE1E1),
      occupants: ["Richard", "Gil"],
    ),
    Room(
      roomNumber: "6",
      status: "Empty",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-1.png",
      amenities: [
        "Wifi",
        "Air conditioning",
        "Kitchen",
        "Parking",
        "Balcony",
        "24/7 Security",
      ],
      statusBackgroundColor: Color(0xFFE1F6F0),
      occupants: ["Roni", "Alex", "Mike"],
    ),
    Room(
      roomNumber: "406",
      status: "+2 more",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-2.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFF8DD),
      occupants: ["Roni", "Alex", "Mike"],
    ),
    Room(
      roomNumber: "46",
      status: "+2 more",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-3.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFF8DD),
      occupants: ["Roni", "Alex", "Mike"],
    ),
    Room(
      roomNumber: "26",
      status: "Empty",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-4.png",
      amenities: [
        "Wifi",
        "Air conditioning",
        "Kitchen",
        "Parking",
        "Balcony",
        "24/7 Security",
      ],
      statusBackgroundColor: Color(0xFFE1F6F0),
      occupants: ["Roni", "Alex", "Mike"],
    ),
    Room(
      roomNumber: "26",
      status: "+2 more",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-5.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFF8DD),
      occupants: ["Roni", "Alex", "Mike"],
    ),
    Room(
      roomNumber: "436",
      status: "Full",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/Asir.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFE1E1),
      occupants: ["Richard", "Gil"],
    ),
    Room(
      roomNumber: "89",
      status: "+2 more",
      dateAvailable: "May 2025",
      price: "3,000",
      imagePath: "assets/Screens/Home/Listings/pic-3.png",
      amenities: ["Wifi", "Air conditioning", "Kitchen", "Parking", "Balcony"],
      statusBackgroundColor: Color(0xFFFFF8DD),
      occupants: ["Roni", "Alex", "Mike"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Constant.generalPadding),
        child: Column(
          children: [
            SizedBox(height: Constant.height * 0.025),
            if (selectedIndex != 0)
              SizedBox(
                height: Constant.height * 0.06,
                child: Stack(
                  children: [
                    Container(
                      width: Constant.width,
                      height: Constant.height * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Color(0xFFB0B0B0),
                      ),
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        color: Color(0xFFF7F7F7),
                      ),
                      child: Container(),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Constant.width * 0.05,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: Constant.height * 0.019,
                              child: Image.asset(
                                "assets/Screens/Home/Bookings/search.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: Constant.width * 0.04),
                            SizedBox(
                              height: Constant.height * 0.025,
                              child: FittedBox(
                                child: text(
                                  content: "Search by room name",
                                  textColor: Color(0xFFB0B0B0),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Outfit",
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
            if (selectedIndex != 0) SizedBox(height: Constant.height * 0.01),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                horizontal: Constant.generalPadding,
              ),
              width: Constant.width,
              child: SizedBox(
                height: Constant.height * 0.045,
                width: Constant.width * 0.08,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: Constant.height * 0.034,
                        child: Image.asset(
                          "assets/Screens/Home/Listings/filter.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        height: Constant.height * 0.02,
                        width: Constant.width * 0.03,
                        decoration: BoxDecoration(
                          color: Constant.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: FittedBox(
                          child: text(
                            content: "9",
                            textColor: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: (Constant.height * 0.2) * all.length,
              // color: Colors.blue,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: all.length,
                itemBuilder: (context, index) {
                  return roomCard(
                    imagePath: all[index].imagePath,
                    roomNumber: all[index].roomNumber,
                    dateAvailable: all[index].dateAvailable,
                    concat: all[index].concat,
                    statusBackgroundColor: all[index].statusBackgroundColor,
                    status: all[index].status,
                    statusTextColor: all[index].statusTextColor,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget roomCard({
    required String imagePath,
    required String roomNumber,
    required String dateAvailable,
    required String concat,
    required Color statusBackgroundColor,
    required String status,
    required Color statusTextColor,
  }) {
    return Container(
      height: Constant.height * 0.16,
      margin: EdgeInsets.symmetric(vertical: Constant.generalPaddingVertical),
      padding: EdgeInsets.symmetric(horizontal: Constant.width * 0.025),
      width: Constant.width,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            offset: Offset(0, 4),
            spreadRadius: 0,
            color: Color.fromRGBO(0, 0, 0, 0.08),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Constant.height * 0.14,
            width: Constant.width * 0.22,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8.r),
              child: Image.asset(imagePath, fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            color: Colors.red,
            height: Constant.height * 0.14,
            width: Constant.width * 0.61,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Constant.height * 0.028,
                  child: FittedBox(
                    child: text(
                      content: "Room $roomNumber",
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                SizedBox(
                  height: Constant.height * 0.02,
                  child: FittedBox(
                    child: text(
                      content: "Available From: $dateAvailable",
                      fontWeight: FontWeight.normal,
                      fontSize: 15.sp,
                      fontFamily: "Roboto",
                    ),
                  ),
                ),
                // SizedBox(height: Constant.height * 0.01),
                SizedBox(
                  // color: Colors.blue,
                  height: Constant.height * 0.018,
                  child: Text(
                    concat,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 8.sp,
                      color: Color(0xFF6B6F7B),
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: Constant.height * 0.02,
                  width: Constant.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: statusBackgroundColor,
                  ),
                  child: Align(
                    child: SizedBox(
                      height: Constant.height * 0.01,
                      child: FittedBox(
                        child: text(
                          content: status,
                          textColor: statusTextColor,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.normal,
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
