import 'package:flutter/material.dart';
import 'package:login_apps/authentication_screen/sign_up.dart';
import 'package:login_apps/authentication_screen/sign_in.dart';
import 'package:login_apps/onboarding_screen/onboarding_screen.dart';
//import 'package:login_apps/screen/onboarding_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
    
    return Scaffold(
      backgroundColor: Color(0xFF139F25),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white
          ),
          child: Center(
            child: Text(
            "logo",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
