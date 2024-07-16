import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:my_ecommerce_app/controllers/onBording_cont/on_bording_controller.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/views/widgets/onBording/onBording_list.dart';

class CustomPageView extends GetView<OnBordingControllerImp> {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          );
  }
}