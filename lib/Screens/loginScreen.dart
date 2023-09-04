import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
              child: Column(
                children: [
                  //welcome Text
                  Container(
                    padding: const EdgeInsets.fromLTRB(16, 35, 16, 15),
                    child: Column(
                      children: [
                        Text("WELCOME BACK",
                        style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                        Text("sign in to access your account",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
          //email and password textfields
          Container(
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
            child:
            Column(
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),

                    suffixIcon: Icon(Icons.email, color: Colors.black,),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                ),
                SizedBox(height: 30,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    suffixIcon: Icon(Icons.lock, color: Colors.black,),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                  ),
                ),],),),

                 //Remember me checkbox and Forgot password text
                 Row(
                    children: [
                          Flexible(
                              child: Padding(
                     padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child:
                              CheckboxListTile(
                                title: Text("Remember Me"),
                                  activeColor: Colors.deepPurpleAccent,
                                  value: _isChecked,
                                  onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value;
                                  });
                                  },
                              controlAffinity: ListTileControlAffinity.leading,),
                              ),
                            ),
                       Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed('/otpScreen');
                          },
                          child: Text("Forgot Password ?",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 130,
                  ),

                  //next button and register text
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
                        child:
                        TextButton(style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
                          fixedSize: Size(370, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/mainScreen');
                          },
                          child: Text("Next",
                          style: TextStyle(fontSize: 22, color: Colors.white)),

                        ),
                      ),
                       SizedBox(height: 12,),
                       Padding(
                         padding: EdgeInsets.fromLTRB(90, 0, 70, 0),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("New member?",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pushNamed('/signupScreen');
                                  },
                                  child: Text("Register Now",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500
                                    ),),
                                ),
                              ],
                            ),
                       ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
