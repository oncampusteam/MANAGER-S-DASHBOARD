import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:on_campus/widgets/widget.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actionsPadding: EdgeInsets.only(right: 20.w),
          automaticallyImplyLeading: false,
          title: text(
            content:"Account",
            fontSize:20.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "OUtfit-Regular"
            ),
          actions: [
            GestureDetector(
              child: Container(
                width: 35.w,
                height: 35.h,
                padding: EdgeInsets.all(8),
                child: Image.asset("assets/Screens/Home/Payment/Vector.png"))
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFF00EFD1), // Dark circle
                    child: Text(
                      'HA',
                      style: TextStyle(
                        color: Colors.white, // White text
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Outfit"
                      ),
                    ),
                  ),
                    const SizedBox(height: 10),
                    Text(
                      'Joranny Hostel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      'jorannyhostel@gmail.com',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.sp,
                        fontFamily: "Outfit"
                      ),
                    ),
                  ],
                ),
              ),
            
              Expanded(
                child: SettingsScreen())
            ],
          ),
        ),
      ));
  }
}





// --- COLOR & STYLE CONSTANTS ---

// The bright cyan background requested for the Identity Screen (0xFF00EFD1).
const Color identityBackgroundColor = Color(0xFF00EFD1);
// Very dark grey for high contrast text on the bright background.
const Color darkTextColor = Color(0xFF171717);
// Dark background color for the Settings Screen.
const Color settingsBackgroundColor = Colors.black;
// Light color for text and icons on the dark settings background.
const Color lightAccentColor = Colors.white;
// Subtitle color on dark background.
Color lightSubtitleColor = Colors.white.withOpacity(0.7);


// The main function runs the app.


/// The main application widget, acting as the root container.



class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  // Data structure for the settings list
  static final List<Map<String, dynamic>> settingsItems = [
    {
      'asset': "assets/Screens/Home/Account/profile-circle.png",
      'title': 'Account Settings',
      'subtitle': 'Manage users and settings',
    },
    {
      'asset': "assets/Screens/Home/Account/card-pos.png",
      'title': 'Payment Method',
      'subtitle': 'Manage your wallet activities',
    },
    {
      'asset': "assets/Screens/Home/Account/menu.png",
      'title': 'Manage Categories',
      'subtitle': 'Add & remove listed categories',
    },
    {
      'asset': "assets/Screens/Home/Account/save-add.png",
      'title': 'Bookings Approvals',
      'subtitle': 'Create & Update rooms',
    },
    {
      'asset': "assets/Screens/Home/Account/ranking.png",
      'title': 'Subscriptions',
      'subtitle': 'Learn more about getting more bookings',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Black background
      child: ListView.separated(
        itemCount: settingsItems.length,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemBuilder: (context, index) {
          final item = settingsItems[index];
          return SettingsTile(
            asset: item['asset'],
            title: item['title'],
            subtitle: item['subtitle'],
          );
        },
        // Separator line (like the one in the image)
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.white.withOpacity(0.1),
            thickness: 1,
          );
        },
      ),
    );
  }
}

/// Custom ListTile component for the dark settings menu.
class SettingsTile extends StatelessWidget {
  final String asset;
  final String title;
  final String subtitle;

  const SettingsTile({
    super.key,
    required this.asset,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      // Icon in a rounded dark circle
      leading: Container(
        height: 34.h,
        width: 34.w,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle // Inner dark color
        ),
        child: Image.asset(asset)
      ),
      // Main Title
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Outfit",
          fontWeight: FontWeight.w500,
          fontSize: 17.sp,
        ),
      ),
      // Subtitle/Description
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: const Color.fromRGBO(0, 0, 0, 0.4),
          fontSize: 14.sp,
          fontFamily: "Outfit"
        ),
      ),
      onTap: () {
        // Handle tap action here (e.g., Navigator.push)
      },
    );
  }
}
