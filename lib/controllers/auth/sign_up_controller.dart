import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/functions/crud.dart';
import 'package:my_ecommerce_app/core/functions/handling_data.dart';
import 'package:my_ecommerce_app/core/functions/status_request.dart';
import 'package:my_ecommerce_app/data/data_source/remote/auth_remotr/sign_up_remote.dart';

abstract class SignUpController extends GetxController{
  signUp();
}
class SignUpControllerImp extends SignUpController{

  GlobalKey<FormState> formState = GlobalKey();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController(); 

  SignUpData signUpData = SignUpData(Get.put(Crud()));
  late StatusRequest statusRequest;




  @override
  signUp() async{
    if (formState.currentState!.validate()) {
  statusRequest = StatusRequest.loading;
  update();
  var response = await signUpData.viewData(
    username.text, email.text, password.text, phone.text);

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        print("============================================success = ${response}");
      }
      else{
        Get.defaultDialog(
              title: "ُWarning",
              titleStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: AppColors.blue2),
              middleText: "Phone Number Or Email Already Exists",
              middleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              );
          statusRequest = StatusRequest.faliure;
      }
    }
    update();
}
else {}

  }


@override
  void onInit() {
    super.onInit();
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}

