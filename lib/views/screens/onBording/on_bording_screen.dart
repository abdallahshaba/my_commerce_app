import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/onBording_list.dart';

class OnboardingScreen extends GetView<OnBordingControllerImp> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Container(
            height: 665,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller.pageController,
              onPageChanged: (value) {
                controller.onPageChanged(value);
              },
              itemCount: onBordingList.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 110,
                  ),
                  Container(
                    height: 440,
                    width: 440,
                    child: Image.asset(
                       onBordingList[index].image! , fit: BoxFit.fill,
                      //  "${AppImageAsset.photo}"
                       ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          onBordingList[index].title!,
                          style: Styles.boldtextStyle28,
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        onBordingList[index].desc!,
                        style: Styles.boldtextStyle16.copyWith(
                            color: const Color.fromARGB(255, 178, 178, 178),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         GetBuilder<OnBordingControllerImp>(
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
         ),

        const SizedBox(height: 40,),
       Padding(
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
       ),
       const SizedBox(height: 6,),
        TextButton(onPressed: (){
          controller.skip();
        }, child: const Text("Skip" , style: Styles.boldtextStyle16,)),
        ],
      ),
    );
  }
}
