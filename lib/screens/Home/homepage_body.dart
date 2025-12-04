import 'package:flutter/material.dart';
import 'package:on_campus/screens/Account/account.dart';
import 'package:on_campus/screens/Bookings/bookings.dart';
import 'package:on_campus/screens/Dashboard/dashboard.dart';
import 'package:on_campus/screens/Listings/listings.dart';
import 'package:on_campus/screens/Payment/payment.dart';

class HomePageBody extends StatefulWidget {
  final int selectedIndex;
  const HomePageBody({super.key, required this.selectedIndex});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.selectedIndex,
      children: [
        Dashboard(),
        Bookings(),
        Payment(),
        Account(),
        Listings()
      ],
    );
  }
}