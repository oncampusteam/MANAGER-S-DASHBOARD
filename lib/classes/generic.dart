class GenericRoomDetails {
  List<bool> bools = <bool>[];
  // List<bool> bills = <bool>[];
  // List<bool> security = <bool>[];
  // bool amenities_ = false;
  // bool bills_ = false;
  // bool security_ = false;
  List<Map<String, String>> detailsList;
  RoomDetailsType detailsType;

  List<Map<String, String>> buildList = [
    {
      "ImagePath": "assets/Screens/Property/Amenities/security.png",
      "label": "24/7 Security",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/first_aid_kits.png",
      "label": "First Aid Kits",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/fire_extinguisher.png",
      "label": "Fire Extinguisher",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/cctv.png",
      "label": "CCTV",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/emergency_exits.png",
      "label": "Emergency Exits",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/fencing.png",
      "label": "Fencing & Gated\nEntry",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/smoke_detector.png",
      "label": "Smoke Detectors\n& Fire Alarms",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/beware_of_dogs.png",
      "label": "Beware of Dogs",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/visitors_check.png",
      "label": "Visitors Check",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/access_control.png",
      "label": "Access Control",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/anti_harassment.png",
      "label": "Anti-Harassment",
    },
  ];

  List<Map<String, String>> amenityBuildList = [
    {"ImagePath": "assets/Screens/Property/Amenities/bed.png", "label": "Bed"},
    {"ImagePath": "assets/Screens/Property/Amenities/fan.png", "label": "Fan"},
    {
      "ImagePath": "assets/Screens/Property/Amenities/kitchen.png",
      "label": "Kitchen",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/mirror.png",
      "label": "Mirror",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/air_conditioner.png",
      "label": "Air Condition",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/washroom.png",
      "label": "Washroom",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/wardrobe.png",
      "label": "Wardrobe",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/balcony.png",
      "label": "Balcony",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/common_area.png",
      "label": "Common Area",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/study_room.png",
      "label": "Study Room",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/sports_field.png",
      "label": "Sports Field",
    },
    {"ImagePath": "assets/Screens/Property/Amenities/gym.png", "label": "Gym"},
    {
      "ImagePath": "assets/Screens/Property/Amenities/swimming_pool.png",
      "label": "Swimming Pool",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/water_heater.png",
      "label": "Water Heater",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/elevator.png",
      "label": "Elevator",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/mini_student_shop.png",
      "label": "Mini Student Shop",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/car_park.png",
      "label": "Car Park",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/clinic.png",
      "label": "Clinic",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/outdoor_area.png",
      "label": "Outdoor Area",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/dining_area.png",
      "label": "Dining Area",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/salon.png",
      "label": "Salon & Barber",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/cafeteria.png",
      "label": "Cafeteria",
    },
    {"ImagePath": "assets/Screens/Property/Amenities/gym.png", "label": "ATM"},
  ];

  List<Map<String, String>> billsBuildList = [
    {
      "ImagePath": "assets/Screens/Property/Amenities/electric_meter.png",
      "label": "Electricity Meter",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/water_bill.png",
      "label": "Tap Water",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/generator.png",
      "label": "Generator",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/wifi.png",
      "label": "Wifi",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/waste_bin.png",
      "label": "Waste Bins",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/house_keeping.png",
      "label": "House Keeping",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/shuttle_services.png",
      "label": "Shuttle Services",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/laundry_services.png",
      "label": "Laundry Services",
    },
    {
      "ImagePath": "assets/Screens/Property/Amenities/well.png",
      "label": "Well/Borehole",
    },
  ];
  GenericRoomDetails({required this.detailsList, required this.detailsType}) {
    if (detailsType == RoomDetailsType.amenities) {
      bools = List.generate(amenityBuildList.length, (index) {
        return false;
      });
    } else if (detailsType == RoomDetailsType.bills) {
      bools = List.generate(billsBuildList.length, (index) {
        return false;
      });
    } else if (detailsType == RoomDetailsType.security) {
      bools = List.generate(buildList.length, (index) {
        return false;
      });
    }
  }
}

enum RoomDetailsType { amenities, bills, security }
