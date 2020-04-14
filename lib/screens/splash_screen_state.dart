import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/splash_screen.dart';

import 'login_screen.dart';

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LogInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                child: Image.asset('assets/images/splash.png'),
                width: 200,
                height: 300,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 4,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
