import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
            child: Text("Almost there",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25
              ),),
          ),
          SizedBox(height: 20,),
          Text("Please enter the 6-digit code sent to your\nemail for verification",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20
            ),),
          SizedBox(height: 20,),
          OtpCode()
        ],
      ),

    );
  }
}

class OtpCode extends StatelessWidget {
  const OtpCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 68,
            width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
               FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1) {},
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value){
              if (value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            style: Theme.of(context).textTheme.headlineMedium,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    ));
  }
}

