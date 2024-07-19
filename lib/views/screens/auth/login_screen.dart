import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/app_image_asset.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';
import 'package:my_ecommerce_app/views/widgets/auth/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
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
              hinttext: "Enter Email", 
              labeltext: "Email", 
              iconData: Icons.email_outlined, 
              mycontroller: email, 
               isNumber: false
              ),
              const SizedBox(height: 15,),
              CustomTextFormAuth(
              hinttext: "Enter Password", 
              labeltext: "Password", 
              iconData: Icons.security_outlined, 
              mycontroller: password, 
               isNumber: false
              ),
              const SizedBox(height: 15,),
              MaterialButton(
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 165),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: (){} , child: Text("Login" , style: Styles.boldtextStyle18,),
                color: AppColors.blue2,
                )
          
            ],
          ),
      ]  ),
      )
      );
  }
}