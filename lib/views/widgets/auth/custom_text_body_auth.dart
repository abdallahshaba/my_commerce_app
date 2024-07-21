import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomTextBodyAuth extends StatelessWidget {
  const CustomTextBodyAuth({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text( text ,
                   style: Styles.boldtextStyle18.copyWith(
                    color:const Color.fromARGB(255, 142, 134, 134) , fontWeight: FontWeight.normal , fontSize: 16),
                     textAlign: TextAlign.center,);
  }
}