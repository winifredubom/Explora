import 'dart:ui';
import 'package:andis_assignment/Screens/onBoardScreens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  bool _isVisible = true; // A boolean variable to control the visibility of UI elements

  @override
  void initState() {
    super.initState();

    // Start the animation after 2 seconds
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isVisible = false;  // Set _isVisible to false to hide elements
      });
    });

    // Navigate to the welcome page after 6 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => OnBoardingScreen(),  // Navigate to the OnBoardingScreen
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade700,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,  // Control opacity based on _isVisible
                duration: Duration(seconds: 1),
                child: Image.asset("images/logo.jpg", width: 180, height: 200,), // Display the logo image
              ),
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: Text("Explora",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                ),),
            ),
          ],
        ),
      ),
          );
  }
}

