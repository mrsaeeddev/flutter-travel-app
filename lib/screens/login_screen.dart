import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/splash.png')),
              ),
              Text('Sign In',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
              RaisedButton(
                child: Text("Sign In"),
              ),
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignUpScreen(),
                  ),
                ),
                child: Text("Didn't sign up yet?"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
