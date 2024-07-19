import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_page_route.dart';

abstract class StartController extends GetxController{
   goToLoginScreen(context2);
   goToSinUpScreen(context);
}
class StartControllerImp extends StartController{
  @override
  goToLoginScreen(context2) {
    Navigator.push(
            context2,
            CustomPageRouteBuilder2(),
          );
  }
  @override
  goToSinUpScreen(context) {
    Navigator.push(
            context,
            CustomPageRouteBuilder(),
          );
     
  }

}