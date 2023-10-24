import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_x_repo/repository/login_repository/login_repository.dart';
import 'package:get_x_repo/res/routes/routes.dart';
import 'package:get_x_repo/res/routes/routes_name.dart';
import 'package:get_x_repo/utils/utils.dart';
import 'package:get_x_repo/view_models/controllers/user_prefrences/user_prefrences_view_model.dart';

import '../../../models/login/login_resonse_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  final userprefrence = UserPreference();
  final emailController = TextEditingController().obs;
  RxBool loading = false.obs;
  final passwordController = TextEditingController().obs;

  void login() {
    loading.value = true;
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      loading.value = false;
      Get.delete<LoginViewModel>();
      Utils.toastMessage( value['message']);
      userprefrence
          .saveUser(LoginResonseModel.fromJson(value))
          .then((value)  {Get.toNamed(RoutesName.homeView);})
          .onError((error, stackTrace) => null);
    }).onError((error, stackTrace) {
      Utils.snackBar('Error!  view_model', error.toString());
      loading.value = false;
      print('$error');
    });
  }
}
