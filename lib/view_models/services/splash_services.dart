import 'dart:async';

import 'package:get/get.dart';
import 'package:get_x_repo/res/routes/routes.dart';
import 'package:get_x_repo/res/routes/routes_name.dart';
import 'package:get_x_repo/view_models/controllers/user_prefrences/user_prefrences_view_model.dart';

class SplashServices{

   UserPreference userPreference =UserPreference();

  void isLogin(){
    userPreference.getUser().then((value) {
      print("token value is ${value.token}");
      if( value.token.toString() == 'null'){
        Timer(Duration(seconds: 3), ()=> Get.toNamed(RoutesName.loginView));
      }else{
        Timer(Duration(seconds: 3), ()=>Get.toNamed(RoutesName.homeView));
      }
    });
    // Timer(Duration(seconds: 3), ()=> Get.toNamed(RoutesName.loginView));
  }
}