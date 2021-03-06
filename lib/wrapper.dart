import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_goent/pages/login_page.dart';
import 'package:ui_goent/pages/home/main_page.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(

        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(snapshot.hasData){
            return const MainPage();
          }
          else if(snapshot.hasError){
            return const Center(child: Text('Something Went Wrong!'),);
          }
          else{
            return const LoginPage();
          }
        },
      ),
    );
  }
}
