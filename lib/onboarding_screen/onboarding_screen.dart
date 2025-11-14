import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_apps/Core/AppRoute/app_route.dart';
import '../View/Screen/Controller/onboarding_controller.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<OnboardingController>(
        builder: (_) => Column(
          children: [
            ///========================= PageView ==================================
            Expanded(
              flex: 8,
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.onboardingData.length,
                onPageChanged: controller.onPageChanged,
                itemBuilder: (context, index) {
                  final item = controller.onboardingData[index];
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(item["image"]!, height: 264,width: 375,),
                        const SizedBox(height: 30),
                        Text(
                          item["title"]!,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF139F25)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          item["desc"]!,
                          style: const TextStyle(fontSize: 12,fontWeight:FontWeight.w400, color: Color(0xFF000000)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            ///======================== Dots ===============================
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.onboardingData.length,
                    (index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: controller.currentPage == index ? 12 : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: controller.currentPage == index
                        ? Color(0xff272727)
                        : Color(0xffD7D7D7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ///======================= Button =============================
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.signUp);
                },
                child: Container(
                  height: 48,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff139F25),
                  ),
                  child: Center(child: Text('Sign Up',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffFFFFFF)),)),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.signIn);
                },
                child: Container(
                  height: 48,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: BoxBorder.all(color: Color(0xff139F25)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Center(child: Text('Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff333333)),)),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}


