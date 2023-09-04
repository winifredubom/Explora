import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/10808.jpg", width: 500, height: 350,),
            ),
            Container(
              child: Text("Welcome to Home",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25
                ),),
            ),
          ],
        ),
      ),
    );
  }
}

