import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';
import 'first_page.dart';
import 'otp_page.dart';
import 'map_page.dart';
import 'main.dart';
// import 'dart:ui';

class InPutPhonePage extends StatelessWidget {
  static String tag = 'inputPhone-page';

  @override
  Widget build(BuildContext context) {
    final label = Center(
      child: ListView(
        padding: EdgeInsets.only(left: 50.0, right: 50.0),
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Text(
              'ระบุหมายเลขโทรศัพท์',
              textAlign: TextAlign.center,
              style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Colors.black54,
                  ),
                ],
                fontSize: 30.0,
                fontFamily: 'Kanit',
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'ท่านจะได้รับรหัสยืนยัน หลังระบุเบอร์โทร',
              textAlign: TextAlign.center,
              style: TextStyle(
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 5.0,
                    color: Colors.black54,
                  ),
                ],
                height: 1,
                fontSize: 18.0,
                fontFamily: 'Kanit',
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );

    final nextButton = Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: ElevatedButton(
          child: Icon(
            Icons.arrow_forward_rounded,
            size: 90.0,
          ),
          onPressed: () {
            print('Phone number: ');
            // Navigator.of(context).pushNamed(FirstPage.tag);
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Color.fromRGBO(207, 31, 68, 1),
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            textStyle: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
        ));

    final backButton = Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: IconButton(
        onPressed: () {
          print('Back Button');
          Navigator.of(context).pushNamed(FirstPage.tag);
        },
        icon: Icon(
          Icons.arrow_back_rounded,
          size: 30.0,
          color: Colors.white,
        ),
      ),
    );

    final policyLable = Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'ข้อตกลง และนโยบาย',
          style: TextStyle(
            fontSize: 16.0,
            fontFamily: 'Kanit',
            color: Colors.black54,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );

    final inputPhone = Padding(
      padding: EdgeInsets.only(top: 200.0, left: 20.0, right: 20.0),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              height: 50.0,
              width: 70.0,
              child: TextFormField(
                enabled: false,
                keyboardType: TextInputType.phone,
                autofocus: false,
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 30.0,
                  color: Colors.black,
                ),
                initialValue: '',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '+66',
                  contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        bottomLeft: Radius.circular(50.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 280.0,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  WhitelistingTextInputFormatter(RegExp('[0-9]'))
                ],
                // WhitelistingTextInputFormatter(RegExp('[0-9]')),
                // LengthLimitingTextInputFormatter(12),
                autofocus: false,
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 30.0,
                  color: Colors.black,
                ),
                initialValue: '',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '099-123-7890',
                  contentPadding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    final nextLable = Padding(
      padding: EdgeInsets.zero,
      child: Text(
        'ต่อไป',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Kanit',
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: screenHeight / 1.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/padjapan.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                label,
                backButton,
                inputPhone,
              ],
            ),
          ),
          nextButton,
          nextLable,
          policyLable,
        ],
      ),
    );
  }
}
