import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:on_campus/screens/Property/room_description.dart";
import "package:on_campus/widgets/bottomNavIndicator.dart";
import "package:on_campus/widgets/save&ExitQuestion.dart";

class PropertyLocation extends StatefulWidget {
  const PropertyLocation({super.key});

  @override
  State<PropertyLocation> createState() => _PropertyLocationState();
}

class _PropertyLocationState extends State<PropertyLocation> {
  TextEditingController propertyLocation = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController apt = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController region = TextEditingController();
  TextEditingController postAddress = TextEditingController();

  bool proceed = true;

  @override
  void initState() {
    super.initState();
    country.text = "Ghana";
    region.text = "Greater Accra Region";
    street.text = "North Legon Avenue";
    city.text = "Accra";
    animatedMargin = EdgeInsets.symmetric(horizontal: 20.h);
  }

  bool on = false;
  bool active = false;
  EdgeInsets? animatedMargin;
  bool showDialog = false;
  double animatedHeight = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            height: 935.h,
            width: 430.w,
            child: Stack(
              children: [
                SizedBox(
                  height: 935.h,
                  width: 430.w,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        saveExitQuestion(),
                        Container(
                          height: 78.h,
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Where's your property\nlocated?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 30.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30.h),
                          height: 75.h,
                          child: FittedBox(
                            child: Text(
                              "Sharing your location with us will help\nstudent find your property with ease upon\nbooking",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFB0B0B0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 39.h,
                            vertical: 23.h,
                          ),
                          height: 430.h,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/Screens/Property/PropertyLocation/mapView.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(color: const Color(0xFFB0B0B0)),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: const Color(0xFFFEFEFE),
                                builder: (context) {
                                  return StatefulBuilder(
                                    builder: (context, setState) {
                                      // bool on = false;
                                      debugPrint("Starting rebuild");
                                      debugPrint("The value of on: $on");
                                      return SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.95,
                                        width: MediaQuery.of(
                                          context,
                                        ).size.width,
                                        child: Stack(
                                          children: [
                                            SizedBox(
                                              height:
                                                  MediaQuery.of(
                                                    context,
                                                  ).size.height *
                                                  0.95,
                                              width: MediaQuery.of(
                                                context,
                                              ).size.width,
                                              child: SingleChildScrollView(
                                                child: Container(
                                                  height:
                                                      MediaQuery.of(
                                                        context,
                                                      ).size.height *
                                                      0.95,
                                                  width: MediaQuery.of(
                                                    context,
                                                  ).size.width,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 30.h,
                                                  ),
                                                  child: Column(
                                                    // mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                        height: 30.h,
                                                        child: Row(
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .chevron_left,
                                                            ),
                                                            Expanded(
                                                              child: SizedBox(
                                                                child: Center(
                                                                  child: SizedBox(
                                                                    height:
                                                                        25.h,
                                                                    child: FittedBox(
                                                                      child: Text(
                                                                        "Enter your Address",
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              20.sp,
                                                                          fontFamily:
                                                                              "Poppins-SemiBold",
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        height: 70.h,
                                                        width: MediaQuery.of(
                                                          context,
                                                        ).size.width,
                                                        child: Stack(
                                                          children: [
                                                            Container(
                                                              height: 70.h,
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        20.h,
                                                                  ),
                                                              margin:
                                                                  EdgeInsets.only(
                                                                    top: 8.h,
                                                                  ),
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                  color: const Color(
                                                                    0xFF999999,
                                                                  ),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      8.r,
                                                                    ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  SizedBox(
                                                                    width:
                                                                        MediaQuery.of(
                                                                          context,
                                                                        ).size.width *
                                                                        0.6,
                                                                    child: TextField(
                                                                      cursorColor:
                                                                          Colors
                                                                              .black,
                                                                      controller:
                                                                          country,
                                                                      decoration: const InputDecoration(
                                                                        border:
                                                                            InputBorder.none,
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down,
                                                                    size: 30.h,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Positioned(
                                                              top: 0,
                                                              left: 15.w,
                                                              child: Container(
                                                                padding:
                                                                    EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          5.w,
                                                                    ),
                                                                color: Colors
                                                                    .white,
                                                                child: Text(
                                                                  "Country",
                                                                  style: TextStyle(
                                                                    color:
                                                                        const Color.fromRGBO(
                                                                          153,
                                                                          153,
                                                                          153,
                                                                          0.9,
                                                                        ),
                                                                    fontSize:
                                                                        10.sp,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 30.h),
                                                      SizedBox(
                                                        height: 300.h,
                                                        width: MediaQuery.of(
                                                          context,
                                                        ).size.width,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              height: 60.h,
                                                              decoration: BoxDecoration(
                                                                border: Border.all(
                                                                  color: const Color(
                                                                    0xFF999999,
                                                                  ),
                                                                ),
                                                                borderRadius: BorderRadius.only(
                                                                  topLeft:
                                                                      Radius.circular(
                                                                        15.r,
                                                                      ),
                                                                  topRight:
                                                                      Radius.circular(
                                                                        15.r,
                                                                      ),
                                                                ),
                                                              ),
                                                              child: TextField(
                                                                controller:
                                                                    street,
                                                                style: TextStyle(
                                                                  color: const Color(
                                                                    0xFF111111,
                                                                  ),
                                                                  fontSize:
                                                                      20.h,
                                                                ),
                                                                cursorColor:
                                                                    Colors
                                                                        .black,
                                                                decoration: InputDecoration(
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            10.h,
                                                                        vertical:
                                                                            5.h,
                                                                      ),
                                                                  // label: Text("Street Address"),
                                                                  labelText:
                                                                      "Street Address",
                                                                  labelStyle: TextStyle(
                                                                    color: const Color(
                                                                      0xFF999999,
                                                                    ),
                                                                    fontSize:
                                                                        20.h,
                                                                  ),
                                                                  hintText:
                                                                      "North Legon Avenue",
                                                                  hintStyle: TextStyle(
                                                                    color: const Color(
                                                                      0xFF111111,
                                                                    ),
                                                                    fontSize:
                                                                        20.h,
                                                                  ),
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                  focusedBorder:
                                                                      InputBorder
                                                                          .none,
                                                                  enabledBorder:
                                                                      InputBorder
                                                                          .none,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: const BoxDecoration(
                                                                // border: Border.all(color: const Color(0xFF999999))
                                                                border: Border(
                                                                  left: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                  right: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              height: 60.h,
                                                              child: Center(
                                                                child: TextField(
                                                                  style: TextStyle(
                                                                    color: const Color(
                                                                      0xFF111111,
                                                                    ),
                                                                    fontSize:
                                                                        20.h,
                                                                  ),
                                                                  cursorColor:
                                                                      Colors
                                                                          .black,
                                                                  decoration: InputDecoration(
                                                                    contentPadding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          10.h,
                                                                      vertical:
                                                                          5.h,
                                                                    ),
                                                                    // label: Text("Street Address"),
                                                                    hintText:
                                                                        "Apt, floor, Bldg (if applicable)",
                                                                    hintStyle: TextStyle(
                                                                      color: const Color(
                                                                        0xFF999999,
                                                                      ),
                                                                      fontSize:
                                                                          20.h,
                                                                    ),
                                                                    labelStyle: TextStyle(
                                                                      color: const Color(
                                                                        0xFF999999,
                                                                      ),
                                                                      fontSize:
                                                                          15.h,
                                                                    ),
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: const BoxDecoration(
                                                                border: Border(
                                                                  top: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                  left: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                  right: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              height: 60.h,
                                                              child: Center(
                                                                child: TextField(
                                                                  controller:
                                                                      city,
                                                                  style: TextStyle(
                                                                    color: const Color(
                                                                      0xFF111111,
                                                                    ),
                                                                    fontSize:
                                                                        20.h,
                                                                  ),
                                                                  decoration: InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              10.h,
                                                                        ),
                                                                    labelText:
                                                                        "City/town/village",
                                                                    labelStyle: TextStyle(
                                                                      color: const Color(
                                                                        0xFF999999,
                                                                      ),
                                                                      fontSize:
                                                                          20.h,
                                                                    ),
                                                                    hintText:
                                                                        "Accra",
                                                                    hintStyle: TextStyle(
                                                                      color: const Color(
                                                                        0xFF999999,
                                                                      ),
                                                                      fontSize:
                                                                          20.h,
                                                                    ),
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration: const BoxDecoration(
                                                                border: Border(
                                                                  top: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                  left: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                  right: BorderSide(
                                                                    color: Color(
                                                                      0xFF999999,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              height: 60.h,
                                                              child: Center(
                                                                child: TextField(
                                                                  controller:
                                                                      region,
                                                                  style: TextStyle(
                                                                    color: const Color(
                                                                      0xFF111111,
                                                                    ),
                                                                    fontSize:
                                                                        20.h,
                                                                  ),
                                                                  decoration: InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              10.h,
                                                                        ),
                                                                    labelText:
                                                                        "Region/state",
                                                                    labelStyle: TextStyle(
                                                                      fontSize:
                                                                          20.h,
                                                                      color: const Color(
                                                                        0xFF999999,
                                                                      ),
                                                                    ),
                                                                    hintText:
                                                                        "Greater Accra Region",
                                                                    hintStyle: TextStyle(
                                                                      color: const Color(
                                                                        0xFF111111,
                                                                      ),
                                                                      fontSize:
                                                                          20.h,
                                                                    ),
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 60.h,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.only(
                                                                  bottomLeft:
                                                                      Radius.circular(
                                                                        15.r,
                                                                      ),
                                                                  bottomRight:
                                                                      Radius.circular(
                                                                        15.r,
                                                                      ),
                                                                ),
                                                                border: Border.all(
                                                                  color: const Color(
                                                                    0xFF999999,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Center(
                                                                child: TextField(
                                                                  controller:
                                                                      postAddress,
                                                                  decoration: InputDecoration(
                                                                    contentPadding:
                                                                        EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              10.h,
                                                                        ),
                                                                    hintText:
                                                                        "Postal Code (if applicable)",
                                                                    hintStyle: const TextStyle(
                                                                      color: Color(
                                                                        0xFF999999,
                                                                      ),
                                                                    ),
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 25.h),
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons.room,
                                                            color: Color(
                                                              0xFF999999,
                                                            ),
                                                          ),
                                                          SizedBox(width: 5.w),
                                                          Container(
                                                            decoration: const BoxDecoration(
                                                              border: Border(
                                                                bottom: BorderSide(
                                                                  color: Color(
                                                                    0xFF999999,
                                                                  ),
                                                                ),
                                                              ),
                                                              // color: Colors.blue,
                                                            ),
                                                            child: Text(
                                                              "Use Current Location",
                                                              style: TextStyle(
                                                                color:
                                                                    const Color(
                                                                      0xFF999999,
                                                                    ),
                                                                fontSize: 20.sp,
                                                                fontFamily:
                                                                    "Montserrat",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 25.h),
                                                      const Divider(
                                                        color: Color(
                                                          0xFF999999,
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                              top: 10.h,
                                                            ),
                                                        height: 35.h,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              height: 30.h,
                                                              child: FittedBox(
                                                                child: Text(
                                                                  "Show your specific location",
                                                                  style: TextStyle(
                                                                    fontFamily:
                                                                        "Poppins",
                                                                    fontSize:
                                                                        20.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Switch(
                                                              value: on,
                                                              thumbColor: active
                                                                  ? const WidgetStatePropertyAll(
                                                                      Color(
                                                                        0XFFFFFFFF,
                                                                      ),
                                                                    )
                                                                  : const WidgetStatePropertyAll(
                                                                      Color.fromARGB(
                                                                        255,
                                                                        155,
                                                                        148,
                                                                        148,
                                                                      ),
                                                                    ),
                                                              activeThumbColor:
                                                                  const Color(
                                                                    0xFF00EFD1,
                                                                  ),
                                                              // inactiveThumbColor: const Color.fromARGB(255, 155, 148, 148),
                                                              inactiveThumbColor:
                                                                  Colors.blue,
                                                              onChanged: (value) {
                                                                debugPrint(
                                                                  "It's changed",
                                                                );
                                                                // value = value;
                                                                setState(() {
                                                                  active =
                                                                      value;
                                                                  on = value;
                                                                  debugPrint(
                                                                    "${!value}",
                                                                  );
                                                                });
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 100.h,
                                                        width: MediaQuery.of(
                                                          context,
                                                        ).size.width,
                                                        child: FittedBox(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: SizedBox(
                                                            height: 100.h,
                                                            width:
                                                                MediaQuery.of(
                                                                  context,
                                                                ).size.width,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Make it clear for student to know where your",
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        26.sp,
                                                                    color: const Color(
                                                                      0xFFB0B0B0,
                                                                    ),
                                                                    fontFamily:
                                                                        "Montserrat",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  "property is located. We only show your",
                                                                  style: TextStyle(
                                                                    fontSize:
                                                                        26.sp,
                                                                    color: const Color(
                                                                      0xFFB0B0B0,
                                                                    ),
                                                                    fontFamily:
                                                                        "Montserrat",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      "location once it has been booked",
                                                                      style: TextStyle(
                                                                        fontSize:
                                                                            26.sp,
                                                                        color: const Color(
                                                                          0xFFB0B0B0,
                                                                        ),
                                                                        fontFamily:
                                                                            "Montserrat",
                                                                        fontWeight:
                                                                            FontWeight.w400,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          10.h,
                                                                    ),
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {},
                                                                      child: Container(
                                                                        decoration: const BoxDecoration(
                                                                          border: Border(
                                                                            bottom: BorderSide(
                                                                              color: Color(
                                                                                0xFF999999,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        child: Text(
                                                                          "Learn More",
                                                                          style: TextStyle(
                                                                            fontSize:
                                                                                24.sp,
                                                                            color: const Color(
                                                                              0xFFB0B0B0,
                                                                            ),
                                                                            fontFamily:
                                                                                "Montserrat",
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        //Text("Make it clear for student to know where your\nproperty is located. We only show your\nlocation once it has been booked")
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: GestureDetector(
                                                            onTap: () async {
                                                              setState(() {
                                                                // showDialog = true;
                                                                animatedMargin =
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          90.h,
                                                                      left:
                                                                          20.h,
                                                                      right:
                                                                          20.h,
                                                                    );
                                                                animatedHeight =
                                                                    130.h;
                                                                // animatedMargin = EdgeInsets.only( bottom: 90.h, left: 20.h, right: 20.h);
                                                              });
                                                              // await Future.delayed(const Duration(milliseconds:160));
                                                              setState(() {
                                                                // animatedMargin = EdgeInsets.only( bottom: 90.h, left: 20.h, right: 20.h);
                                                              });
                                                            },
                                                            child: Container(
                                                              margin:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        10.h,
                                                                  ),
                                                              height: 50.h,
                                                              width:
                                                                  MediaQuery.of(
                                                                    context,
                                                                  ).size.width,
                                                              decoration: BoxDecoration(
                                                                color:
                                                                    const Color(
                                                                      0xFF00EFD1,
                                                                    ),
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      15.r,
                                                                    ),
                                                              ),
                                                              child: Center(
                                                                child: SizedBox(
                                                                  height: 25.h,
                                                                  child: FittedBox(
                                                                    child: Text(
                                                                      "Continue",
                                                                      style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            25.h,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0.h,
                                              left: 10,
                                              right: 10,
                                              child: AnimatedContainer(
                                                height: animatedHeight,
                                                decoration: BoxDecoration(
                                                  color: const Color(
                                                    0xFFFEFEFE,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        10.r,
                                                      ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(
                                                            0.5,
                                                          ), // Shadow color with opacity
                                                      spreadRadius:
                                                          2, // How much the shadow spreads
                                                      blurRadius:
                                                          7, // How blurry the shadow is
                                                      offset: const Offset(
                                                        0,
                                                        3,
                                                      ), // Shadow position: x, y
                                                    ),
                                                  ],
                                                ),
                                                width: MediaQuery.of(
                                                  context,
                                                ).size.width,
                                                margin: animatedMargin,
                                                padding: EdgeInsets.all(10.h),
                                                duration: const Duration(
                                                  milliseconds: 300,
                                                ),
                                                curve: Curves.linear,
                                                child: SingleChildScrollView(
                                                  child: SizedBox(
                                                    height: animatedHeight,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: GestureDetector(
                                                            onTap: () {
                                                              // setState((){
                                                              //   showDialog = false;
                                                              // });
                                                              // animatedHeight = 0;
                                                              // animatedMargin = EdgeInsets.symmetric(horizontal: 20.h);
                                                              setState(() {
                                                                animatedHeight =
                                                                    0;
                                                                animatedMargin =
                                                                    EdgeInsets.only(
                                                                      left:
                                                                          20.h,
                                                                      right:
                                                                          20.h,
                                                                      bottom: 0,
                                                                    );
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              size: 20.h,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    10.h,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Image.asset(
                                                                "assets/Screens/Property/PropertyLocation/info.png",
                                                                width: 46.h,
                                                                height: 46.w,
                                                              ),
                                                              SizedBox(
                                                                width: 15.h,
                                                              ),
                                                              Text(
                                                                "We don't recognize this address is\nit correct?",
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      "Poppins-Light",
                                                                  fontSize:
                                                                      18.sp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(height: 10.h),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                left: 69.h,
                                                              ),
                                                          decoration:
                                                              const BoxDecoration(
                                                                border: Border(
                                                                  bottom: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                          child: Text(
                                                            "Yes, my address is correct",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            child: Align(
                              alignment: Alignment
                                  .topCenter, // or whatever alignment you want
                              child: Container(
                                height: 48.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.r),
                                  color: Colors.transparent,
                                ),
                                child: const Placeholder(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: bottomIndicator(
                    proceed: proceed,
                    handleNextTap: (() {
                      Get.to(
                        () => const RoomDescription(),
                        transition: Transition.fadeIn,
                        // duration: const Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    }),
                    height: 150.h,
                    percentageToColor: 4 * (0.125),
                    screenWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
