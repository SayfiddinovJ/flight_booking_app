import 'package:flight_booking_app/utils/app_icons.dart';
import 'package:flight_booking_app/utils/app_images.dart';
import 'package:flight_booking_app/widgets/container.dart';
import 'package:flight_booking_app/widgets/filter.dart';
import 'package:flight_booking_app/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF6760D4),
                Color(0xFFF0A1C6),
                Color(0xFFFDC4B3)
              ]
            ),
          ),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: width*(19/375),right: width*(19/375),top: height*(55/812)),
              child:
                Row(children: [
                  SvgPicture.asset(AppIcon.arrow),
                  const Spacer(),
                  const Text('SEARCH RESULT',style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    letterSpacing: 0.01,
                  ),),
                  const Spacer(),
                  SvgPicture.asset(AppIcon.balance),
                ],),
            ),

            SizedBox(height: height*(20/812),),
            const Menu(),
            SizedBox(height: height*12/812,),
            Expanded(child: ListView(children: [
              MyContainer(airlineLogo: AppImg.turkish, price: '1070', airlineName: 'TURKISH', flightDuration: '17hrs 15mins', flightTime: '09:45', landingTime: '19:00', stops: '1'),
              SizedBox(height: height*11/812,),
              MyContainer(airlineLogo: AppImg.ethiopian, price: '1140', airlineName: 'ETHIOPIAN', flightDuration: '17hrs 15mins', flightTime: '11:00', landingTime: '20:00', stops: '1'),
              SizedBox(height: height*11/812,),
              MyContainer(airlineLogo: AppImg.etihad, price: '1210', airlineName: 'ETIHAD', flightDuration: '17hrs 15mins', flightTime: '09:45', landingTime: '19:00', stops: '1'),
              SizedBox(height: height*11/812,),
              MyContainer(airlineLogo: AppImg.emirates, price: '1430', airlineName: 'EMIRATES', flightDuration: '17hrs 15mins', flightTime: '11:20', landingTime: '07:20', stops: '0'),
              SizedBox(height: height*11/812,),
              MyContainer(airlineLogo: AppImg.turkish, price: '1070', airlineName: 'TURKISH', flightDuration: '17hrs 15mins', flightTime: '09:45', landingTime: '19:00', stops: '1'),
            ],)),
          ],),
        ),

          Positioned(
              top: height*748/812,
              left: width*112/375,
              bottom: height*24/812,
              child: Filter()),
      ]),
    );
  }
}
