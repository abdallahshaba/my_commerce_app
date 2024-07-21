import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/functions/crud.dart';
import 'package:my_ecommerce_app/core/functions/handling_data.dart';
import 'package:my_ecommerce_app/core/functions/status_request.dart';
import 'package:my_ecommerce_app/data/data_source/remote/auth_remotr/login_remote.dart';
import 'package:my_ecommerce_app/views/screens/home/home.dart';

abstract class LoginController extends GetxController {
  login();
  goToHomeScreen();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.put(Crud()));

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await loginData.loginViewData(email.text, password.text);

      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          print(
              "============================================success = ${response}");
          goToHomeScreen();
        } else {
          Get.defaultDialog(
              title: "ُWarning",
              titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.blue2),
              middleText: "Email not found!",
              middleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              actions: [
                Lottie.asset(AppImageAsset.failedFace, height: 220, width: 300),
              ]);
        }
      } else {
        statusRequest = StatusRequest.serverFaliure;
      }
    } else {}
  }




    @override
  goToHomeScreen() {
    Get.offAll(() => const HomeScreen(), transition: Transition.circularReveal, duration: const Duration(seconds: 1));
  }

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
