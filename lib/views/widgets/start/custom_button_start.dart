import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomButtonStartScreen extends StatelessWidget {
  const CustomButtonStartScreen({super.key, this.onPressed, required this.text, required this.color});
  final void Function()? onPressed;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
               onTap: onPressed,
              child: Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color
              ),
               child:  Center(child: Text(text , style: Styles.boldtextStyle20,)),
                         ),
            );
  }
}