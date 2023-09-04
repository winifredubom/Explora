import 'package:andis_assignment/Screens/loginScreen.dart';
import 'package:andis_assignment/Screens/mainScreen.dart';
import 'package:andis_assignment/Screens/onBoardScreens.dart';
import 'package:andis_assignment/Screens/signupScreen.dart';
import 'package:andis_assignment/Screens/verifyScreen.dart';
import 'package:andis_assignment/Screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcomeScreen',
      routes: {
        '/welcomeScreen': (context) => MainScreen(),
        '/onBoardScreens' : (context) => OnBoardingScreen(),
        '/loginScreen' : (context) => LoginScreen(),
        '/signupScreen' : (context) => SignUpScreen(),
        '/otpScreen': (context) => Verify(),
        '/mainScreen' : (context) => WelcomeScreen()
      },
    );
  }
}
