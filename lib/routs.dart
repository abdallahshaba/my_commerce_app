import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_ecommerce_app/core/constants/app_routes.dart';
import 'package:my_ecommerce_app/views/screens/onBording/on_bording_screen.dart';

List<GetPage<dynamic>>? getPages = [
   GetPage(name: AppRoutes.onBordingScreen, page:() => const OnboardingScreen(),)
];