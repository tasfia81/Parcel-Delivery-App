import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
import 'package:login_apps/authentication_screen/sign_in.dart';

// void _showDialog(){
//   showDialog(context: context, builder: (context) => AlertDialog(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(20),
//     ),
//     icon: Image.asset('assets/image/Check-duotone.png'),
//     title: const Text('Password Changed!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF139F25)),
//     ),
//     content: const Text('Your can now use your new password to login to your account.',
//       style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFF757575)),
//
//     ),
//     actions: [
//       Center(
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Color(0xFF139F25),
//             borderRadius: BorderRadius.circular(25),
//           ),
//           child: TextButton(onPressed: (){
//             Get.offAllNamed(AppRoute.signIn); // signIn page e niye jabe
//
//           }, child: Text('Login',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),)),
//         ),
//       )
//     ],
//   ));
// }