import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBordingController extends GetxController{
   onPageChanged(int index);
   nextPage();
   skip();
}

class OnBordingControllerImp extends OnBordingController{
   
   var currentPage = 0.obs;
   var pageController = PageController();


  @override
  onPageChanged(index) {
    currentPage.value = index;
  }
  
  @override
  nextPage() {
    if (currentPage.value <3) {
      pageController.animateTo(
        currentPage.value+1, 
        duration: const Duration(milliseconds: 300), 
        curve: Curves.ease
        );
    }
  }
  
  @override
  skip() {
    pageController.jumpToPage(2);
  }
  
}