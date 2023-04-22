import 'package:flutter/material.dart';
import 'package:project_1/pages/Lobby.dart';
import 'package:project_1/pages/Login.dart';
import 'package:project_1/pages/Register.dart';
import 'package:project_1/pages/home_page.dart';
import 'package:project_1/pages/details_page.dart';
import 'package:project_1/pages/member.dart';
import 'package:project_1/pages/comment_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) =>  LobbyPage(),
        "/login": (BuildContext context) => LoginPage(),
        "/register": (BuildContext context) => RegisterPage(),
        "/homepage": (BuildContext context) => HomePage(),
        "/memberpage": (BuildContext context) => MemberPage(),
        "/detailpage": (BuildContext context) => DetailPage(),
        "/commentpage": (BuildContext context) => CommentPage(),
        //"/register": (BuildContext context) => LoginPage(),
      },
      initialRoute: "/",
    );
  }
}
