import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/onBording_list.dart';

class CustomDotOnBording extends StatelessWidget {
  const CustomDotOnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControllerImp>(
          builder: (controller) => Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
              children: [
                ...List.generate(onBordingList.length, (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  height: 10,
                  width:  10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: controller.currentPage==index? AppColors.blue1 :null,
                  border: Border.all(color: AppColors.blue1) , 
                ),
                ))
              ],
             ),
           ),
         );
  }
}