import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/app_colors.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        child: const Center(child: Text("Home" , style: Styles.boldtextStyle20,),),
      ),
    );
  }
}