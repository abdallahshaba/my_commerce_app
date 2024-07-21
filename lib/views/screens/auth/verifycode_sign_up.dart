import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/controllers/auth/verifycode_sign_up_controller.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_text_body_auth.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_text_title_auth.dart';

class VerifyCodeSignUpScreen extends StatelessWidget {
  const VerifyCodeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    VerifyCodeSignUpControllerImp controller = Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            child: const Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verification Code",
                      style: Styles.boldtextStyle20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextTitleAuth(text: "Check Code"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Please Enter The Digit Code Sent To abdallahshaban200@gmail.com'),
                  const SizedBox(
                    height: 30,
                  ),
                  OtpTextField(
                    textStyle: Styles.boldtextStyle16,
                    fieldWidth: 50,
                    borderRadius: BorderRadius.circular(15),
                    numberOfFields: 5,
                    borderColor: const Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToSuccessSignUp();
                    }, // end onSubmit
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
