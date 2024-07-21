import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomTextTitleAuth extends StatelessWidget {
  const CustomTextTitleAuth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text , style: Styles.boldtextStyle28, textAlign: TextAlign.center,);
  }
}