import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:my_ecommerce_app/core/functions/status_request.dart';

class Crud  {
   Future<Either<StatusRequest , Map>> postData (String link, Map data)async{

    try {
  var response = await http.post(Uri.parse(link) , body: data);
  print(response.body);
  if (response.statusCode==200) {
  Map responseBody = jsonDecode(response.body);
  print("=============================${responseBody}");
  return Right(responseBody);
  }
  else{
    return const Left(StatusRequest.serverFaliure);
  }
}  catch (e) {
  return const Left(StatusRequest.exceptionFaliure);
}

   }
}