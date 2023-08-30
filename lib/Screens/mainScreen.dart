import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade700,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/real.png", width: 180, height: 180,),
                SizedBox(height: 10,),
                Text("Explora",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25, fontWeight: FontWeight.bold
                      ),
                textAlign: TextAlign.center,),
                 ], ),
                ),
          );
  }
}

