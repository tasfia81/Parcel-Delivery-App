
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          //Icon(Icons.arrow_back_ios),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Forgot Password',
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
                'Enter the phone number associated with\nyour account and we’ll send you OTP to reset\nyour password',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w200,
                  color: Color(0xff757575),
                ),
              ),
            ),
            SizedBox(height:20 ,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Phone',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                  SizedBox(height: 10,),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: "Ex: +980010101010",
                       // prefixText: 'Ex: +98',
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
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.verifyOTP);
                    },
                    child: Center(
                      child: Container(
                        height: 48,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff139F25),
                        ),
                        child: Center(child: Text('Confirm',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffFFFFFF)),)),
                      ),
                    ),
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
