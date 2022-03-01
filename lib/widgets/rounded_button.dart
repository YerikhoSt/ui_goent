import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_goent/widgets/media_query.dart';

import '../theme.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor, textColor;
  final VoidCallback press;
  final bool isGoogle;

  RoundedButton(
      {required this.text, required this.textColor, required this.press, required this.backgroundColor, required this.isGoogle});

  get bold => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 40,
      child: TextButton(
        child: isGoogle? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/ic_google.svg', width: displayWidth(context) * 1.8, height: displayHeight(context) * 1.9,),
            const SizedBox(width: 18,),
            Text(text, style: poppinsOrange.copyWith(fontWeight: bold, fontSize: 14, color: textColor),)
          ],
        ):Text(
          text,
          style: poppinsOrange.copyWith(
              fontWeight: bold, fontSize: 14, color: textColor),
        ),
        onPressed: press,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            side: const BorderSide(color: colorPrimary, width: 2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}