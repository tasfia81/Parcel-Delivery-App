
import 'package:flutter/material.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:get/get.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Verify OTP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff139F25),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Enter your OTP which has been sent to your phone\nand completely verify your account.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff757575),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: PinCodeTextField(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 58,
                fieldWidth: 58,
                activeFillColor: Colors.white,
                activeColor: Color(0xFFD7D7D7),
                selectedColor: Colors.white,
                //bselectedFillColor: Colors.green,
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.white,
              enableActiveFill: true,
              //errorAnimationController: errorController,
              //controller: textEditingController,
              onCompleted: (v) {
                print("Completed");
              },
              onChanged: (value) {
                print(value);
                // setState(() {
                //   currentText = value;
                // });
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              }, appContext: context,
            ),

          ),
          SizedBox(height: 10,),
          Column(
            children: [
              Center(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoute.resetPassword);
                  },
                  child: Container(
                    height: 48,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Color(0xff139F25),
                    ),
                    child: Center(child: Text('Verify',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),)),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
