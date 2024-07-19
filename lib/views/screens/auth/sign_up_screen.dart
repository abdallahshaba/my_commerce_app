import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/controllers/auth/sign_up_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/core/functions/valid_input.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_text_field.dart';

class SignUpScreen extends GetView<SignUpControllerImp> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Form(
        key: controller.formState,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Column(
              children: [
                const SizedBox(height: 70,),
                Container(
                  height: 180,
                  width: 180,
                  child: Image.asset(AppImageAsset.appLogo , fit: BoxFit.fill,),
                ),
               const SizedBox(height: 40,),
               const Text("Sign Up" , style: Styles.boldtextStyle26,),
               const SizedBox(height: 25,),
            
               CustomTextFormAuth(
                valid: (value) {
                  return validInput(value!, 10, 2, "username");
                },
                hinttext: "Enter Username", 
                labeltext: "Username", 
                iconData: Icons.person_2_outlined, 
                mycontroller: controller.username, 
                 isNumber: false
                ),
               const SizedBox(height: 15,),
                CustomTextFormAuth(
                  valid: (value) {
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
                  valid: (value) {
                  return validInput(value!, 10, 2, "password");
                },
                hinttext: "Enter Password", 
                labeltext: "Password", 
                iconData: Icons.security_outlined, 
                mycontroller: controller.password, 
                 isNumber: false
                ),
                const SizedBox(height: 15,),
                CustomTextFormAuth(
                  valid: (value) {
                  return validInput(value!, 12, 2, "phone");
                },
                hinttext: "Enter Phone", 
                labeltext: "Phone", 
                iconData: Icons.phone_android_outlined, 
                mycontroller: controller.phone, 
                 isNumber: true
                ),
            
                const SizedBox(height: 25,),
                MaterialButton(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 155),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: ()async{
                    await controller.signUp();
                  } , child: Text("Sign Up" , style: Styles.boldtextStyle18,),
                  color: AppColors.blue2,
                  )
            
              ],
            ),
        ]  ),
        ),
      )
      );
  }
}