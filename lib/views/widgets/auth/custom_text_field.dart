import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/core/constants/style.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;
  final String? Function(String?)? valid;

  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.isNumber, this.valid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        validator: valid ,
        style: Styles.boldtextStyle16,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
          errorStyle: Styles.boldtextStyle12.copyWith(color: Colors.red),
            hintText: hinttext,
            hintStyle: Styles.boldtextStyle18.copyWith(color: const Color.fromARGB(255, 113, 108, 108)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(labeltext , style: Styles.boldtextStyle16,)),
            suffixIcon: InkWell(child: Icon(iconData, color: Colors.white,), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                )
                ),
      ),
    );
  }
}