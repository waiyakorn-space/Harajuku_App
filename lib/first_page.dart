import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'inputphone_page.dart';
// import 'otp_page.dart';
// import 'map_page.dart';
import 'main.dart';

class FirstPage extends StatefulWidget {
  static String tag = 'first-page';

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidght = MediaQuery.of(context).size.width;
    final carousel = Carousel(
      showIndicator: false,
      boxFit: BoxFit.cover,
      images: [
        AssetImage('assets/images/1.jpg'),
        AssetImage('assets/images/2.jpg'),
        AssetImage('assets/images/3.jpg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    );

    final loginButton = ElevatedButton(
      child: Text('เข้าสู่ระบบด้วยหมายเลขโทรศัพท์'),
      onPressed: () {
        Navigator.of(context).pushNamed(InPutPhonePage.tag);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        primary: Color.fromRGBO(207, 31, 68, 1),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 15,
        ),
        textStyle: TextStyle(
          fontFamily: 'Kanit',
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final lable1 = ListView(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.zero,
          child: Text(
            'สั่งอาหาร ช็อปปิ้ง',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Kanit',
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Text(
            'ครบจบที่เดียว',
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1,
              color: Colors.black87,
              fontFamily: 'Kanit',
              fontSize: 30.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Text(
          'ที่นี่รวมอาหารเด็ดๆ ส่งตรงถึงบ้าน หลากหลายด้วยสินค้าชั้นนำ',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'Kanit',
            fontSize: 16.0,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );

    final cantLogin = TextButton(
      onPressed: () {},
      child: Text(
        'ไม่สามารถเข้าสู่ระบบได้',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Kanit',
          color: Colors.black54,
          decoration: TextDecoration.underline,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: screenHeight / 1.8,
              child: new ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: carousel,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          lable1,
          SizedBox(height: 20.0),
          loginButton,
          SizedBox(height: 5.0),
          // cantLogin,
        ],
      ),
    );
  }
}
