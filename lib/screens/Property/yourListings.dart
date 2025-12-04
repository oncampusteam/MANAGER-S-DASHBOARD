import 'package:flutter/material.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';

class YourListings extends StatefulWidget {
  const YourListings({super.key});

  @override
  State<YourListings> createState() => _YourListingsState();
}

class _YourListingsState extends State<YourListings> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Placeholder(),
        bottomNavigationBar: BottomNav(),
      )
      );
  }
}