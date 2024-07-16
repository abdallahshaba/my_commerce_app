import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomButtonOnBording extends GetView<OnBordingControllerImp> {
  const CustomButtonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child:  MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 140 , vertical: 10),
          onPressed: (){
            controller.next();
          },
                color: AppColors.blue2,
                 child: const Text("Continue" , style: Styles.boldtextStyle18,)
                 ),
       );
  }
}