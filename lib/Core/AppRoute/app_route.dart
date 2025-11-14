import 'package:get/get.dart';
import 'package:login_apps/Home%20Screen/bottom_nav_bar.dart';
import 'package:login_apps/Home%20Screen/home_page.dart';
import 'package:login_apps/View/Screen/splash_screen.dart';
import 'package:login_apps/authentication_screen/forgot_password_screen.dart';
import 'package:login_apps/authentication_screen/reset_password.dart';
import 'package:login_apps/authentication_screen/sign_in.dart';
import 'package:login_apps/authentication_screen/sign_up.dart';
import 'package:login_apps/authentication_screen/verify_otp.dart';

class AppRoute{
  ///================= Initial Routes ==================
  static const String splashScreen = '/splash_screen';
  static const String signUp = '/sign_up';
  static const String signIn = '/sign_in';
  static const String forgotPassword = '/forgot_password_screen';
  static const String verifyOTP = '/verify_otp';
  static const String resetPassword = '/reset_password';
  static const String homePage = '/home_page';
  static const String bottomNavBar = '/bottom_nav_bar';


  static List<GetPage> routes = [

    ///===================== Authentication Routes =====================
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: signIn, page: () => const SignIn()),
    GetPage(name: signUp, page: () => const SignUp()),
    GetPage(name: forgotPassword, page: () => const ForgotPasswordScreen()),
    GetPage(name: verifyOTP, page: () => const VerifyOtp()),
    GetPage(name: resetPassword, page: () => const ResetPassword()),
    GetPage(name: homePage, page: () => const HomePage()),
    GetPage(name: bottomNavBar, page: () => const BottomNavBar()),


  ];
}