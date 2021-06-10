// import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';
// import 'first_page.dart';
// import 'otp_page.dart';
// import 'map_page.dart';

// class InPutPhonePage extends StatefulWidget {
//   static String tag = 'inputPhone-page';

//   @override
//   _InPutPhonePage createState() => _InPutPhonePage();
// }

// class _InPutPhonePage extends State<FirstPage> {
//   @override
//   Widget build(BuildContext context) {
//     final nextButton = Padding(
//       padding: EdgeInsets.symmetric(vertical: 20.0),
//       child: ElevatedButton.icon(
//         icon: Icon(
//           Icons.favorite,
//           color: Color(0xd31d49),
//           size: 24.0,
//         ),
//         label: Text(''),
//         style: ButtonStyle(
//           padding: MaterialStateProperty.all<EdgeInsets>(
//             EdgeInsets.all(12),
//           ),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(24.0),
//             ),
//           ),
//         ),
//         onPressed: () {
//           print('Phone number: ');
//           // Navigator.of(context).pushNamed(InPutPhonePage.tag);
//         },
//       ),
//     );

//     final lable1 = Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Text(
//           'สั่งอาหาร ช็อปปิ้ง',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         Text(
//           'ครบจบที่เดียว',
//           style: TextStyle(
//             color: Colors.black87,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         Text(
//           'ที่นี่รวมอาหารเด็ดๆ ส่งตรงถึงบ้าน หลากหลายด้วยสินค้าชั้นนำ',
//           style: TextStyle(
//             color: Colors.black54,
//             fontWeight: FontWeight.w300,
//           ),
//         ),
//       ],
//     );

//     final cantLogin = TextButton(
//       onPressed: () {},
//       child: Text(
//         'ไม่สามารถเข้าสู่ระบบได้',
//         style: TextStyle(
//           color: Colors.black54,
//           decoration: TextDecoration.underline,
//         ),
//       ),
//     );
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: ListView(
//           shrinkWrap: true,
//           children: [
//             FistCarousel(),
//             SizedBox(height: 48.0),
//             lable1,
//             SizedBox(height: 30.0),
//             nextButton,
//             SizedBox(height: 10.0),
//             cantLogin,
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FistCarousel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ImageCarousel(),
//     );
//   }
// }

// class ImageCarousel extends StatelessWidget {
//   final carousel = Carousel(
//     showIndicator: false,
//     boxFit: BoxFit.cover,
//     images: [
//       AssetImage('assets/images/1.jpg'),
//       AssetImage('assets/images/2.jpg'),
//       AssetImage('assets/images/3.jpg'),
//     ],
//     animationCurve: Curves.fastOutSlowIn,
//     animationDuration: Duration(milliseconds: 2000),
//   );
//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;

//     return new Container(
//       height: screenHeight / 1.8,
//       child: new ClipRRect(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(50),
//           bottomRight: Radius.circular(50),
//         ),
//         child: carousel,
//       ),
//     );
//   }
// }
