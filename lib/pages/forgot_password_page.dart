import 'package:flutter/material.dart';
import 'package:ui_goent/widgets/rounded_button.dart';
import 'package:ui_goent/widgets/text_form_field.dart';

import '../theme.dart';


class ForgotPasswordPage extends StatelessWidget {
  var defaultMargin;

  ForgotPasswordPage({Key? key}) : super(key: key);

  get regular => null;

  get extraBold => null;

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: const EdgeInsets.only(top: 45),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password', style: titleTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 24,
              ),),
              const SizedBox(height: 8,),
              Text('Enter the email associated with your account', style: poppinsSubTitle.copyWith(
                fontWeight: regular,
                fontSize: 14,
              ),)
            ],
          ),
        ),
      );
    }

    Widget body(){
      return Container(
        margin: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            const CustomTextField(hint: 'Email'),
            const SizedBox(height: 56,),
            RoundedButton(text: 'Submit', textColor: Colors.white, press: ()=> Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false), backgroundColor: colorPrimary, isGoogle: false)
          ],
        ),
      );
    }



    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: defaultMargin, left: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              body()
            ],
          ),
        ),
      ),
    );
  }
}
