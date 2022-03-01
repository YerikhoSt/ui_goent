import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_goent/theme.dart';
import 'package:ui_goent/providers/google_sign_in.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    var myMenuItems = <String>[
      'Logout',
      'Profile',
      'Setting',
    ];

    void  onSelect(item, BuildContext context) {
      switch (item) {
        case 'Logout':
          final provider = Provider.of<GoogleSignInProvider>(context,listen: false );
          provider.googleLogout();
          break;
        case 'Profile':
          print('Profile clicked');
          break;
        case 'Setting':
          print('Setting clicked');
          break;
      }
    }

    Widget floatingActionButton() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 66, right: 35),
        child: FloatingActionButton(
          backgroundColor: colorAccent,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      );
    }


    return Scaffold(
      floatingActionButton: floatingActionButton(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.eleven_mp),
        ),
        title: const Center(
            child: Text(
          'Turnamen',
        /*  style: whiteMontserrat.copyWith(fontWeight: semiBold, fontSize: 20),*/
        )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
              onSelected: (item) => onSelect(item, context),
              itemBuilder: (BuildContext context) {
                return myMenuItems.map((String choice) {
                  return PopupMenuItem<String>(
                    child: Text(choice),
                    value: choice,
                  );
                }).toList();
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Profile',
            /*  style: primaryColorMontserrat.copyWith(
                  fontSize: 24, fontWeight: semiBold),*/
            ),
            const SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(user!.photoURL!),
              radius: 40,
            ),
            const SizedBox(
              height: 15,
            ),
            Text('name:' + user.displayName!),
            const SizedBox(
              height: 5,
            ),
            Text('Firebase id: ' + user.uid),

            const SizedBox(
              height: 5,
            ),
            Text('email: ' + user.email!),
          ],
        ),
      ),
    );
  }
}
