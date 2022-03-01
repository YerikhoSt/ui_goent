import 'package:flutter/material.dart';
import 'package:ui_goent/widgets/media_query.dart';
import 'package:ui_goent/widgets/rounded_button.dart';
import 'package:ui_goent/widgets/text_form_field.dart';

import '../theme.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  get extraBold => null;

  get regular => null;

  get semiBold => null;

  get bold => null;

  @override
  Widget build(BuildContext context) {
    Widget Header(){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create New Account', style: titleTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 24,
            ),)
          ],
        ),
      );
    }

    Widget Body(){
      return Container(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            const CustomTextField(hint: 'Username'),
            const SizedBox(height: 24,),
            const CustomTextField(hint: 'Email'),
            const SizedBox(height: 24,),
            const CustomTextFieldPass(hint: 'Password'),
            const SizedBox(height: 24,),
            const CustomTextFieldPass(hint: 'Confirm Password'),
            const SizedBox(height: 56,),
            RoundedButton(text: 'Login', textColor: Colors.white, press: (){}, backgroundColor: colorPrimary, isGoogle: false),
            Padding(
              padding: const EdgeInsets.only(top: 28, bottom: 28),
              child: Row(
                children: [
                  const Expanded(child: const Divider(color: dotColorOnboard,thickness: 2.5,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text('OR', style: nunitoTitle.copyWith(
                        color: colorText2,
                        fontSize: 14,
                        fontWeight: bold
                    ),),
                  ),
                  const Expanded(child: const Divider(color: dotColorOnboard,thickness: 2.5)),
                ],
              ),
            ),
            RoundedButton(text: 'Login With Google', textColor: colorPrimary, press: (){}, backgroundColor: Colors.white, isGoogle: true),
            SizedBox(height: displayHeight(context) * 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have account? ', style: poppinsSubTitle.copyWith(
                  fontWeight:regular,
                  fontSize: 12,
                ),),
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: Text('Login', style: poppinsOrange.copyWith(
                    fontWeight:semiBold,
                    fontSize: 12,
                  ),),
                ),
              ],
            )
          ],
        ),
      );
    }


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Body()
            ],
          ),
        ),
      ),
    );
  }
}
