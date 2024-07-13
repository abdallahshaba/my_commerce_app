import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnBordingControllerImp onboardingController = Get.put(OnBordingControllerImp());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: onboardingController.onPageChanged,
            children: [
              buildPage(
                title: 'Welcome',
                description: 'This is the first page of the onboarding.',
                imagePath: 'assets/images/one.PNG',
              ),
              buildPage(
                title: 'Discover',
                description: 'This is the second page of the onboarding.',
                imagePath: 'assets/images/two.PNG',
              ),
              buildPage(
                title: 'Get Started',
                description: 'This is the third page of the onboarding.',
                imagePath: 'assets/images/three.PNG',
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: onboardingController.currentPage.value == index ? 19 : 8,
                        height: onboardingController.currentPage.value == index ? 19 : 8,
                        decoration: BoxDecoration(
                          color: onboardingController.currentPage.value == index ? Colors.blue : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                }),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: onboardingController.skip,
                      child: Text('Skip'),
                    ),
                    ElevatedButton(
                      onPressed: onboardingController.nextPage,
                      child: Text('Next'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage({required String title, required String description, required String imagePath}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 400),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}