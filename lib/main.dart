import 'package:betting_raja/Screens/SplasScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xffFB1818),
          colorScheme: ColorScheme.light(secondary: Color(0xffFB1818))
          /* primarySwatch: Color(0xffFB1818),*/
          ),
      home: SplashScreen(),
    );
  }
}




