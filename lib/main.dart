import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
//import 'package:login_apps/screen/splash_screen.dart';

import 'View/Screen/splash_screen.dart';

void main() => runApp( ParcelDeliveryApp());

class ParcelDeliveryApp extends StatelessWidget {
  ParcelDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: AppRoute.routes,
        home: SplashScreen());
  }
}
