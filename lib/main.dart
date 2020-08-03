import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home.dart';
// import 'package:flutterapp/pages/login_screen.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    navigateToLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[700],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pizza.gif'), fit: BoxFit.cover)),
          )),
        ],
      ),
    );
  }

  void navigateToLogin() {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage())));
  }
}
