import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_ecommerce_app/core/constants/app_routes.dart';
import 'package:my_ecommerce_app/views/screens/auth/login_screen.dart';
import 'package:my_ecommerce_app/views/screens/auth/sign_up_screen.dart';
import 'package:my_ecommerce_app/views/screens/auth/start_screen.dart';
import 'package:my_ecommerce_app/views/screens/auth/verifycode_sign_up.dart';
import 'package:my_ecommerce_app/views/screens/home/home.dart';
import 'package:my_ecommerce_app/views/screens/onBording/on_bording_screen.dart';

List<GetPage<dynamic>>? getPages = [
   GetPage(name: AppRoutes.onBordingScreen, page:() => const OnboardingScreen(),),
   GetPage(name: AppRoutes.home, page:() => const HomeScreen(),),
   GetPage(name: AppRoutes.startScreen, page:() => const StartScreen(),),
   GetPage(name: AppRoutes.login, page:() =>  LoginScreen(),),
   GetPage(name: AppRoutes.signUp, page:() =>  SignUpScreen(),),
   GetPage(name: AppRoutes.verifyCodeSignUp, page:() => const VerifyCodeSignUpScreen(),),
];