import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 35, 16, 15),
                child: Column(
                  children: [
                    Text("GET STARTED",
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    Text("by creating a new account",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14
                      ),)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.fromLTRB(18, 5, 18, 0),
                child:
                Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),

                        suffixIcon: Icon(Icons.person, color: Colors.black,),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Your Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        suffixIcon: Icon(Icons.email, color: Colors.black,),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextFormField(
                      controller: numberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),

                        suffixIcon: Icon(Icons.phone, color: Colors.black,),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(height: 25,),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Strong Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        suffixIcon: Icon(Icons.lock, color: Colors.black,),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.3),
                      ),
                    ),],),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(value: _isChecked,
                          activeColor: Colors.deepPurpleAccent,
                          onChanged: (value){
                            setState(() {
                              _isChecked = value;
                            });
                          }),
                      const Text("By checking this box, you accept the",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),),
                    ],
                  ),
                  SizedBox(width: 0,),
                  Material(
                    child: TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(decoration: TextDecoration.none)
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: RichText(
                            text: const TextSpan(
                                children: [
                                  TextSpan(text: "Terms ",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  TextSpan(text:"and ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),),
                                  TextSpan( text: "Conditions",
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ]
                            )),
                      ),),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
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
                        Navigator.of(context).pushNamed('/loginScreen');
                      },
                      child: Text("Next",
                          style: TextStyle(fontSize: 22, color: Colors.white)),

                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Padding(
                padding: EdgeInsets.fromLTRB(90, 0, 90, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Already a member?",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    Material(
                      child: TextButton(onPressed: (){},
                        style: TextButton.styleFrom(
                            textStyle: const TextStyle(decoration: TextDecoration.none)
                        ),
                        child: GestureDetector(
                          onTap: (){
                              Navigator.of(context).pushNamed('/loginScreen');
                          },
                          child: Text("Log in ",
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
