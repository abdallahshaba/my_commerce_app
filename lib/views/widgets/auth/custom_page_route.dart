import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/views/screens/auth/login_screen.dart';
import 'package:my_ecommerce_app/views/screens/auth/sign_up_screen.dart';

class CustomPageRouteBuilder extends PageRouteBuilder {
  CustomPageRouteBuilder()
      : super(
        pageBuilder: (context, animation, secondaryAnimation) => SignUpScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return  FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}

class CustomPageRouteBuilder2 extends PageRouteBuilder {
  CustomPageRouteBuilder2()
      : super(
        pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return  FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      );
}



// ScaleTransition(
//             scale: Tween<double>(begin: 0.0, end: 1.0).animate(
//               CurvedAnimation(
//                 parent: animation,
//                 curve: Curves.easeInOut,
//               ),
//             ),
//             child: child,
//           );