import 'package:get/get.dart';

validText(String val, int min, int max, String type){
  if(type == "userName"){
    if(!GetUtils.isUsername(val)){
      return "not valid userName";
    }
  }

  if(type == "email"){
    if(!GetUtils.isEmail(val)){
      return "not valid Email";
    }
  }

  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "not valid Phone";
    }
  }

  if(type == "password"){
    if(!GetUtils.isPassport(val)){
      return "not valid Password";
    }
  }

  if(val.isEmpty){
    return "can't be Empty ";
  }

  if(val.length < min){
    return "can't be large $min ";
  }

  if(val.length > max){
    return "can't be large $max ";
  }
}