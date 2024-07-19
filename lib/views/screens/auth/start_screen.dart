import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/controllers/start_cont/start_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/views/widgets/start/custom_button_start.dart';

class StartScreen extends GetView<StartControllerImp> {
  const StartScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    Get.put(StartControllerImp());
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
           const SizedBox(height: 120,),
            // ignore: sized_box_for_whitespace
            Container(
              height: 190,
              width: 190,
              child: Image.asset(AppImageAsset.appLogo , fit: BoxFit.fill,),
            ),
           const SizedBox(height: 20,),
           const Text("Online Store" , style: Styles.boldtextStyle30,),
           const SizedBox(height: 80,),
           CustomButtonStartScreen(
            text: "Create account", 
            color: AppColors.blue2 , 
            onPressed: () {
              controller.goToSinUpScreen(context);
           },
           ),
           const SizedBox(height: 20,),
            CustomButtonStartScreen(
              text: "Login", 
              color: AppColors.primaryColor2 , 
              onPressed: () {
                controller.goToLoginScreen(context);
           },
           ),
          ],
        ),
      ),
    );
  }
}
