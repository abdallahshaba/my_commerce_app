

import 'package:my_ecommerce_app/api_links.dart';
import 'package:my_ecommerce_app/core/functions/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  loginViewData(String email , String password)async{
    var response = await crud.postData(AppLinks.login, {
      "email" : email,
      "password" : password,
    }); 
    return response.fold((l) => l, (r) => r);
  }
}