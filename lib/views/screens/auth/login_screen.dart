import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/controllers/auth/login_controller.dart';
import 'package:my_ecommerce_app/core/class/handling_dara_request.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/core/functions/valid_input.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_text_field.dart';

class LoginScreen extends GetView<LoginControllerImp> {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: GetBuilder<LoginControllerImp>(builder:(controller) => HandlingDataRequest(
        statusRequest: controller.statusRequest, 
        widget: Form(
          key: controller.formState,
          child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [ Column(
              children: [
                const SizedBox(height: 80,),
                Container(
                  height: 190,
                  width: 190,
                  child: Image.asset(AppImageAsset.appLogo , fit: BoxFit.fill,),
                ),
               const SizedBox(height: 40,),
               const Text("Login" , style: Styles.boldtextStyle26,),
              const SizedBox(height: 25,),
            
                CustomTextFormAuth(
                  valid:(value) {
                  return validInput(value!, 20, 2, "email");
                },
                hinttext: "Enter Email", 
                labeltext: "Email", 
                iconData: Icons.email_outlined, 
                mycontroller: controller.email, 
                 isNumber: false
                ),
                const SizedBox(height: 15,),
                CustomTextFormAuth(
                valid:(value) {
                  return validInput(value!, 20, 2, "password");
                },
                hinttext: "Enter Password", 
                labeltext: "Password", 
                iconData: Icons.security_outlined, 
                mycontroller: controller.password, 
                 isNumber: false
                ),
                const SizedBox(height: 15,),
                MaterialButton(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 165),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: ()async{
                    await controller.login();
                  } , 
                  color: AppColors.blue2,
                  child: const Text("Login" , style: Styles.boldtextStyle18,),
                  )
            
              ],
            ),
                ]  ),
                ),
        )
        ), )
      );
  }
}