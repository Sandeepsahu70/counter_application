// import 'package:flutter/material.dart';
// import 'package:setstateprac/HomePage.dart';
// import 'package:setstateprac/Homepage2.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//      debugShowCheckedModeBanner: false,
//       home:Homepage2(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setstateprac/Homepage2.dart';
import 'ColorProvider.dart';  // Import the ColorProvider

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ColorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage2(),
      ),
    );
  }
}

