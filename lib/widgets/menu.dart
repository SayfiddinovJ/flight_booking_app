import 'package:flight_booking_app/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: height*65/812,
          width: width*335/375,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width*(10/375),vertical: height*(12/812)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(children: [
                  Text('22 AUG\n\$1070',textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Color(0xFF6760D4),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.01,
                  ),),
                ],),
                SizedBox(width: width*19/375,),
                menuText('23', 1114),
                SizedBox(width: width*19/375,),
                menuText('24', 1114),
                SizedBox(width: width*19/375,),
                menuText('25', 1122),
              ],),
          ),
        ),
        Positioned(
            left: width*(281/375),
            child: Container(
              height: height*(65/812),
              width: width*(54/375),
              decoration: const BoxDecoration(
                color: Color(0xFFFC9A7D),
                borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomRight: Radius.circular(6)),
              ),
              child: Center(child: SvgPicture.asset(AppIcon.calendar),),
            ),
        ),
      ],
    );
  }

  Widget menuText(String day,int price){
    return Column(children: [
      Text('$day AUG\n\$$price',textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF797979),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.01,
        ),),
    ],);
  }
}
