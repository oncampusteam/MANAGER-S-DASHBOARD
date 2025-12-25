import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/classes/constants.dart';
import 'package:on_campus/widgets/widget.dart';

class ListingProfile extends StatefulWidget {
  const ListingProfile({super.key});

  @override
  State<ListingProfile> createState() => _ListingProfileState();
}

class _ListingProfileState extends State<ListingProfile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Icon(Icons.chevron_left, color: Colors.black, size: 25),
            ),
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: SizedBox(
              // color: Colors.blue,
              height: Constant.height * 0.03,
              child: FittedBox(
                child: text(
                  content: "Listing Profile",
                  fontFamily: "Plus Jakarta Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          body: const Center(child: Text("Listing Profile Screen")),
        ),
      ),
    );
  }
}
