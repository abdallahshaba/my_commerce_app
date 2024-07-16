import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_ecommerce_app/core/constants/app_routes.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/onBording_list.dart';

abstract class OnBordingController extends GetxController {
  onPageChanged(int index);
  next();
  skip();
}

class OnBordingControllerImp extends OnBordingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  onPageChanged(index) {
    currentPage = index;
    update();
  }

  @override
  next() {
    currentPage++;
    if (currentPage > onBordingList.length - 1) {
      Get.toNamed(AppRoutes.startScreen);
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  skip() {
    pageController.jumpToPage(2);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
