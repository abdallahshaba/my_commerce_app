import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/custom_buttononBording.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/custom_dot_onBording.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/custom_page_view.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/custom_textButton_onBording.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
         CustomPageView(),
         CustomDotOnBording(),
         SizedBox(height: 40,),
         CustomButtonOnBording(),
         SizedBox(height: 6,),
         CustomTextButoonOnBording()
        ],
      ),
    );
  }
}
