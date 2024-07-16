import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomTextButoonOnBording extends GetView<OnBordingControllerImp> {
  const CustomTextButoonOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){
          controller.skip();
        }, child: const Text("Skip" , style: Styles.boldtextStyle16,));
  }
}