import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:get/get_utils/src/extensions/string_extensions.dart';

class Room {
  String roomNumber;
  String dateAvailable;
  String status;
  String price;
  String imagePath;
  List<String> amenities;
  Color statusBackgroundColor;
  String concat = "";
  Color statusTextColor = Color(0xFFFFFFFF);
  List<String> occupants;

  Room({
    required this.roomNumber,
    required this.dateAvailable,
    required this.status,
    required this.price,
    required this.imagePath,
    required this.amenities,
    required this.statusBackgroundColor,
    required this.occupants,
  }) {
    for (String string in amenities) {
      String temp = "$string •";
      concat = "$concat $temp";
    }
    if (statusBackgroundColor == Color(0xFFE1F6F0)) {
      statusTextColor = Color(0xFF27AE60);
    } else if (statusBackgroundColor == Color(0xFFFFE1E1)) {
      statusTextColor = Color(0xFFFF3636);
    } else if (statusBackgroundColor == Color(0xFFfFF8DD)) {
      statusTextColor = Color(0xFF001529);
    }
  }
}

class PricingClass {
  String roomType = "";
  TextEditingController controller = TextEditingController();
  int counter = 0;
  FocusNode focusNode = FocusNode();

  PricingClass({required this.roomType});
}
