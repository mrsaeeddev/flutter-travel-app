import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              Text('Sign Up',
                  style:
                      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your username'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your email'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your password'),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text("Sign Up"),
              ),
              FlatButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LogInScreen(),
                  ),
                ),
                child: Text("Didn't sign in yet?"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
