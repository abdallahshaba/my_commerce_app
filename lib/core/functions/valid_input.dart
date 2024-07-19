
import 'package:get/get.dart';

validInput(String value , int max , int min , String type){
    
    if (value.isEmpty) {
      return "Field is required";
    }
     if (value.length > max){
      return "Cant't be larger than $max";
    }
     if (value.length < min){
      return "Cant't be less than $min";
    }

     if (type =="username"){
      if(!GetUtils.isUsername(value)){
        return "Not valid username";
      }
     }
     if (type =="email"){
      if(!GetUtils.isEmail(value)){
        return "Not valid email";
      }
     }
     if (type =="phone"){
      if(!GetUtils.isPhoneNumber(value)){
        return "Not valid phone";
      }
     }
}