import 'package:get/get.dart';
import 'package:my_ecommerce_app/core/constants/app_routes.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{
 late String verifyCode;

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.login);
  }
  
  @override
  checkCode() {
  }
  @override
  void onInit() {
    super.onInit();
  }
}
