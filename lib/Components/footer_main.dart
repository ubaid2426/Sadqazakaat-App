// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(SadaqahZakaatApp());
// // }

// class SadaqahZakaatApp extends StatelessWidget {
//   const SadaqahZakaatApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Footer(),
//     );
//   }
// }

// class Footer extends StatelessWidget {
//   const Footer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const SizedBox(height: 50),
//           // Logo
//           Image.asset(
//             'Assests/Images/10001.png', // Replace with your image path
//             height: 100,
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'SadaqahZakaat.com\nBY WADUHA WELFARE',
//             style: TextStyle(
//               color: Colors.green[700],
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Cormorant',
//               height: 1.5,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 40),
//           // Useful Links
//           Text(
//             'Useful Links',
//             style: TextStyle(
//               color: Colors.green,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Cormorant',
//             ),
//           ),
//           const SizedBox(height: 20),
//           buildLink('Home'),
//           buildLink('About'),
//           buildLink('What We Do'),
//           buildLink('Contact'),
//           const SizedBox(height: 50),
//           // Subscription Section
//           Text(
//             'Subscribe Now',
//             style: TextStyle(
//               color: Colors.green,
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               fontFamily: 'Cormorant',
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             'Don’t miss our future updates! Get Subscribed Today!',
//             style: TextStyle(
//               color: Colors.black87,
//               fontSize: 16,
//               fontFamily: 'Cormorant',
//             ),
//             textAlign: TextAlign.center,
//           ),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       hintText: 'Your mail here',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.circular(30.0),
//                   ),
//                   child: Icon(
//                     Icons.email,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 50),
//         ],
//       ),
//     );
//   }

//   // Function to create link widgets
//   Widget buildLink(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 18,
//           color: Colors.black87,
//           fontFamily: 'Cormorant',
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
