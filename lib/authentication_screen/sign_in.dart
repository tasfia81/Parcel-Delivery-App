
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
import 'package:login_apps/authentication_screen/forgot_password_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<SignIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff139F25),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                'Log in to continue shopping and enjoy\npersonalized offers',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff757575),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email or Phone Number',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your email address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),

                  Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _isObscure =! _isObscure;
                          });

                        }, icon: Icon(
                          _isObscure ? Icons.visibility_off_outlined : Icons.visibility,

                        )),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey.shade100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        )
                    ),

                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap : (){
                          Get.toNamed(AppRoute.forgotPassword);
                        },
                          child: Text('Forgot password?',
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff139F25)),)),
                    
                    ],
                  ),
                  SizedBox(height: 15,),

                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 48,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xff139F25),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Get.toNamed(AppRoute.bottomNavBar);
                            },
                              child: Center(child: Text('Sign Up',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),))),
                        ),
                      ),
                      SizedBox(height: 16,),

                      Center(
                        child: Container(
                          height: 48,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFFFF),
                            border: BoxBorder.all(color: Color(0xffD7D7D7)),

                          ),
                          // child: Image.asset('assets/image/google.png',height: 24,width: 24,),
                          child: Center(
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/image/google.png',height: 24,width: 24,),
                                SizedBox(width: 7,),
                                Text('Continue with Google',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff3A3A3A)),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15,),

                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.signUp);
                        },
                        child: RichText(text: TextSpan(
                            text: "Don’t have an account? ",
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff757575)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Create Account",
                                style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xff139F25)),
                              )
                            ]

                        )),
                      )
                    ],
                  ),


                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
