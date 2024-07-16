import 'package:get/get.dart';
import 'package:my_ecommerce_app/core/constants/app_routes.dart';

abstract class StartController extends GetxController{
   goToLoginScreen();
   goToSinUpScreen();
}
class StartControllerImp extends StartController{
  @override
  goToLoginScreen() {
    Get.toNamed(AppRoutes.login);
  }
  @override
  goToSinUpScreen() {
    Get.toNamed(AppRoutes.signUp);
  }

}