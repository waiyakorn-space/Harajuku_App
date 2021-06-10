import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'first_page.dart';
import 'inputphone_page.dart';
import 'otp_page.dart';
import 'map_page.dart';

// flutter run --no-sound-null-safety

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    FirstPage.tag: (context) => FirstPage(),
    InPutPhonePage.tag: (context) => InPutPhonePage(),
    OtpPage.tag: (context) => OtpPage(),
    // MapPage.tage: (context) => MapPage()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Harajuku",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Color.fromRGBO(207, 31, 68, 1),
      //   fontFamily: 'Kanit',
      // ),
      home: FirstPage(),
      routes: routes,
    );
  }
}
