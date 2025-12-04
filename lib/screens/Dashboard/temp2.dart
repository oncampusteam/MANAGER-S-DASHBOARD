// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         backgroundColor: Colors.black,
// //         body: const Center(
// //           child: Text(
// //             "Main Content",
// //             style: TextStyle(color: Colors.white, fontSize: 24),
// //           ),
// //         ),
// //         bottomNavigationBar: const CustomBottomNavBar1(),
// //       ),
// //     );
// //   }
// // }

// // 

// class CustomBottomNavBar1 extends StatelessWidget {
//   const CustomBottomNavBar1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 49,
//       child: CustomPaint(
//         size: Size(MediaQuery.of(context).size.width, 80),
//         painter: BottomNavBarPainter(),
//       ),
//     );
//   }
// }

// class BottomNavBarPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.cyanAccent[400]! // same color as your image
//       // ..color = const Color.fromARGB(255, 255, 0, 21)
//       ..style = PaintingStyle.fill;

//     final path = Path();

//     // Start from bottom-left corner
//     path.moveTo(0, 0);

//     // Top-left corner rounded
//     path.quadraticBezierTo(0, 0, 20, 0);

//     // Straight line until curve starts
//     path.lineTo(size.width * 0.35, 0);

//     // Left curve down
//     path.quadraticBezierTo(
//       size.width * 0.40, 0, // control point
//       size.width * 0.42, 20, // curve down
//     );

//     // Bottom semi-circle dip
//     path.quadraticBezierTo(
//       size.width * 0.50, 45, // deep middle
//       size.width * 0.58, 20, // curve back up
//     );

//     // Right curve up
//     path.quadraticBezierTo(
//       size.width * 0.60, 0, // control point
//       size.width * 0.65, 0, // join back to top line
//     );

//     // Continue to top-right
//     path.lineTo(size.width - 20, 0);

//     // Rounded top-right corner
//     path.quadraticBezierTo(size.width, 0, size.width, 20);

//     // Go down to bottom-right
//     path.lineTo(size.width, size.height);

//     // Go bottom-left
//     path.lineTo(0, size.height);

//     // Close the shape
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
