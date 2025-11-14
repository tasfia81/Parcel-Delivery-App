import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/image/bike_one.png",
      "title": "Welcome to [App Name],",
      "desc": "Your go-to solution for fast, reliable parcel\ndelivery. Whether you're sending or receiving, we\nmake it easy and quick."
    },
    {
      "image": "assets/image/bike_two.png",
      "title": "Fast Deliveries, Anytime",
      "desc": "Need a quick delivery? Simply book a ride, and\nwe’ll take care of the rest. Trust us to get your\nparcels to their destination, safely and on time."
    },
    {
      "image": "assets/image/delivery_man.png",
      "title": "Ready to Deliver?",
      "desc": "Let’s get your parcels moving! With just a few\ntaps, your package is on its way. Speedy, secure,\nand hassle-free deliveries—every time."
    },
  ];

  void onPageChanged(int index) {
    currentPage = index;
    update(); // UI update
  }

  void nextPage() {
    if (currentPage < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed('/signup');
    }
  }
}


