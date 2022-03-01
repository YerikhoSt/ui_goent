import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_goent/pages/on_board_screen.dart';
import 'package:ui_goent/theme.dart';
import 'package:ui_goent/pages/home/main_page.dart';
import 'package:ui_goent/providers/google_sign_in.dart';
import 'package:ui_goent/widgets/media_query.dart';
import 'package:ui_goent/widgets/rounded_button.dart';
import 'package:ui_goent/widgets/text_form_field.dart';
import 'package:ui_goent/wrapper.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _textController = TextEditingController();

  var defaultMargin;

  get extraBold => null;

  get semiBold => null;

  get regular => null;

  get bold => null;



  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome back', style: titleTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 24,
            ),)
          ],
        ),
      );
    }

    Widget body(){
      return Container(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            const CustomTextField(hint: 'Email'),
            const SizedBox(height: 24,),
            const CustomTextFieldPass(hint: 'Password'),
            const SizedBox(height: 24,),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: GestureDetector(
                child: Text('Forgot Password?', style: poppinsOrange.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold
                ),),
                onTap: ()=> Navigator.pushNamed(context, '/forgot'),
              ),
            ),
            const SizedBox(height: 56,),
            RoundedButton(text: 'Login', textColor: Colors.white, press: (){}, backgroundColor: colorPrimary, isGoogle: false),
            Padding(
              padding: const EdgeInsets.only(top: 28, bottom: 28),
              child: Row(
                children: [
                  const Expanded(child: Divider(color: dotColorOnboard,thickness: 2.5,)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text('OR', style: nunitoTitle.copyWith(
                      color: colorText2,
                      fontSize: 14,
                      fontWeight: bold
                    ),),
                  ),
                  const Expanded(child: Divider(color: dotColorOnboard,thickness: 2.5)),
                ],
              ),
            ),
            RoundedButton(text: 'Login With Google', textColor: colorPrimary, press: (){}, backgroundColor: Colors.white, isGoogle: true),
            SizedBox(height: displayHeight(context) * 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account? ", style: poppinsSubTitle.copyWith(
                  fontWeight:regular,
                  fontSize: 12,
                ),),
                GestureDetector(
                  onTap: (){Navigator.pushNamed(context, '/sign-up');},
                  child: Text('Create Account', style: poppinsOrange.copyWith(
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
          padding: const EdgeInsets.only(left: 0, right: 0, top: 45),
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

/*  onPressed: () {
  final provider = Provider.of<GoogleSignInProvider>(context,listen: false );
  provider.googleLogin();
  }*/
  }
}
