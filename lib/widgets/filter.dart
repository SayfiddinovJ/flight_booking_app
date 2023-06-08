import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_icons.dart';
class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*(40/812),
      width: width*(151/375),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF6760D4),
            Color(0xFFA435FC),
          ],
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcon.filter),
            const SizedBox(width: 3.5,),
            const Text('Filter',style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),),
          ],),
      ),
    );
  }
}
