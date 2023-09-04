import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  int _seconds = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 55, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20.0), // Space from the AppBar
            Text(
              'Almost there',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Please enter the 6-digit code sent to your \nemail for verification',
              maxLines: 2,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < 6; i++)
                    Container(
                      width: 40.0,
                      height: 40,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value){
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurpleAccent),
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurpleAccent)
                          ),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              onPressed: () {
                // Handle OTP verification here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
                padding: EdgeInsets.all(16.0),
              ),
              child: Text(
                'VERIFY',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: InkWell(
                onTap: () {
                  // Handle clickable text action here
                },
                child: Text(
                  'Didn\'t receive any code? Resend again',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Request new code in $_seconds ',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                    color: Colors.grey

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







