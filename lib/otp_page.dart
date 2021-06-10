import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart';
import 'first_page.dart';
import 'inputphone_page.dart';
import 'map_page.dart';

class OtpPage extends StatelessWidget {
  static String tag = 'otpPage-page';

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
              'กรอกรหัสยืนยัน',
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
              'รหัสยืนยันได้ถูกส่ง',
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
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              'ไปยังเบอร์โทรของท่านแล้ว',
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
          Navigator.of(context).pushNamed(InPutPhonePage.tag);
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
          'ไม่ได้รับรหัส? ส่งใหม่อีกครั้ง',
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
      padding: EdgeInsets.only(top: 220.0, left: 20.0, right: 20.0),
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: SizedBox(
                height: 50.0,
                width: 70.0,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    WhitelistingTextInputFormatter(RegExp('[0-9]'))
                  ],
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
                    contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: SizedBox(
                height: 50.0,
                width: 70.0,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    WhitelistingTextInputFormatter(RegExp('[0-9]'))
                  ],
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
                    contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: SizedBox(
                height: 50.0,
                width: 70.0,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    WhitelistingTextInputFormatter(RegExp('[0-9]'))
                  ],
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
                    contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: SizedBox(
                height: 50.0,
                width: 70.0,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    WhitelistingTextInputFormatter(RegExp('[0-9]'))
                  ],
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
                    contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0))),
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
        'เสร็จสิ้น',
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
