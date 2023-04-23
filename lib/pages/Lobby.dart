import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_1/pages/Login.dart';
import 'package:project_1/pages/Register.dart';
import 'package:project_1/pages/home_page.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({Key? key}) : super(key: key);

  //Initialalze firebase
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.done){
              return LoginPage();
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
    );
  }
}