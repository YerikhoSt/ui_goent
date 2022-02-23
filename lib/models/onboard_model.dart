import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_goent/theme.dart';
import 'package:ui_goent/widgets/media_query.dart';


class OnboardingContent extends StatelessWidget {
  final String title;
  final String desc;
  final String imgUrl;


  const OnboardingContent({required this.imgUrl, required this.title, required this.desc}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Stack(
        children: [
          Image.asset(imgUrl, height: displayHeight(context) * 67 ,width: double.infinity,),
         Align(
           alignment: Alignment.bottomCenter,
           child: Container(
             height: displayHeight(context) * 45,
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25) ),
               color: Colors.white,
             ),
             child: Column(
               children: [
                 Padding(
                   padding: EdgeInsets.only(top:  displayHeight(context) * 7.2),
                   child: Text(title, style: nunitoTitle.copyWith(
                     fontSize: 24,
                     fontWeight: FontWeight.w800
                   )),
                 ),
                 SizedBox(height: displayHeight(context) * 1.6 ,),
                 Padding(
                   padding: EdgeInsets.only(right:  displayHeight(context) * 2.5, left:   displayHeight(context) * 2.5 ),
                   child: Text(desc, style: poppinsSubTitle.copyWith(
                     fontSize: 16,
                   ),
                   textAlign: TextAlign.center,),
                 ),
                 SizedBox(height: displayHeight(context) * 9 ),
               ],
             ),
           ),
         ),
         /* Container(
            height: displayWidth(context) * 20,
            color: Colors.black,
          )*/
        ],
      ),
    );
  }
}