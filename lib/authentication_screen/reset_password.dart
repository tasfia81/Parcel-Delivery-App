
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Core/AppRoute/app_route.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure=true;
  bool _obscureText=true;

  void _showDialog(){
    showDialog(context: context, builder: (context) => Padding(
      padding: const EdgeInsets.all(24),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        icon: Image.asset('assets/image/Check-duotone.png',height: 78,width: 78,),
        title: const Text('Password Changed!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF139F25)),
        ),
        content: const Text('Your can now use your new password to login to your account.',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),
      
        ),
        actions: [
          Center(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF139F25),
                borderRadius: BorderRadius.circular(26),
              ),
              child: TextButton(onPressed: (){
                Get.offAllNamed(AppRoute.signIn); // signIn page e niye jabe
      
              }, child: Text('Login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),)),
            ),
          )
        ],
      ),
    ));
  }
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
              'Reset Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff139F25),
              ),
            ),
          ),
          SizedBox(height: 16,),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Please set a new password to secure your account\nand regain access',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff757575),
              ),
            ),
          ),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                SizedBox(height: 8,),
                TextFormField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      hintText: "Create a password",
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _obscureText =! _obscureText;
                        });

                      }, icon: Icon(
                        _obscureText ? Icons.visibility_off_outlined : Icons.visibility,

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

                Text('Confirm New Password',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff000000)),),
                SizedBox(height: 10,),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      hintText: "Re-enter your new password",
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

                Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        onTap: _showDialog,
                        child: Container(
                          height: 48,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Color(0xff139F25),
                          ),
                          child: Center(
                              child: Text('Save Changes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),)),
                        ),
                      ),
                    ),

                  ],
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
