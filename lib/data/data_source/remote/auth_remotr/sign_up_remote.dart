

import 'package:my_ecommerce_app/api_links.dart';
import 'package:my_ecommerce_app/core/functions/crud.dart';

class SignUpData {
  Crud crud;

  SignUpData(this.crud);

  viewData(String username , String email , String password , String phone)async{
    var response = await crud.postData(AppLinks.signup, {
      "username" : username,
      "email" : email,
      "password" : password,
      "phone" : phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}