import 'package:flight_booking_app/utils/app_icons.dart';
import 'package:flight_booking_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class MyContainer extends StatelessWidget {
  MyContainer({super.key,
  required this.airlineLogo,
  required this.price,
  required this.airlineName,
  required this.flightDuration,
  required this.flightTime,
  required this.landingTime,
  required this.stops,
  });
  String flightTime;
  String flightDuration;
  String landingTime;
  String airlineName;
  String airlineLogo;
  String stops;
  String price;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*20/375),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*10/375,vertical: height*4/812),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(airlineLogo,height: 18,width: 25,),
                  Text('$airlineName AIRLINES',style: const TextStyle(
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 0.01,
                  ),),
                ],
              ),
              SizedBox(height: height*8/812,),
              Center(child: Text(flightDuration,style: const TextStyle(
                color: Color(0xFF7F7F7F),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.01,
              ),),),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Text('NYC',style: TextStyle(
                      color: Color(0xFF555555),
                      letterSpacing: 0.01,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),),
                    Text(flightTime,style: const TextStyle(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      letterSpacing: 0.01,
                    ),),
                  ],),
                  // SizedBox(width: width*24/375,),
                  const Spacer(),
                  Stack(
                    children: [
                      Container(
                        height: 14,
                        child: Row(children: [
                          Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF828282)
                            ),
                          ),

                          Container(
                            height: 1,
                            width: width*182/375,
                            color: const Color(0xFFD4D4D4),
                          ),

                          Container(
                            height: 8,
                            width: 8,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF828282)
                            ),
                          ),
                        ],),
                      ),

                      Positioned(
                          left: width*95/375,
                          child: SvgPicture.asset(AppIcon.airplane)),
                    ],
                  ),

                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('DXB',style: TextStyle(
                        color: Color(0xFF555555),
                        letterSpacing: 0.01,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),),
                      Text(landingTime,style: const TextStyle(
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        letterSpacing: 0.01,
                      ),),
                    ],),

                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Text('$stops Stop',style: const TextStyle(
                  color: Color(0xFF7F7F7F),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.01,
                ),),
                SizedBox(width: width*103/375,),
                const Text('+1 Days',style: TextStyle(
                  color: Color(0xFFEB5757),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.01,
                ),
              ),
            ],),
              const SizedBox(height: 6,),
              Row(children: [
                SvgPicture.asset(AppIcon.info),
                const SizedBox(width: 5,),
                const Text('FLIGHT INFO',style: TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.01,
                ),),
                const Spacer(),
                Text('\$$price',style: const TextStyle(
                  color: Color(0xFF6760D4),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.01,
                ),),
              ],)
          ],),
        ),
      ),
    );
  }
}
