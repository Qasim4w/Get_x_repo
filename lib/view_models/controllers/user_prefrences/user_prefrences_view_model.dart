import 'package:get/get.dart';
import 'package:get_x_repo/models/login/login_resonse_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {

  Future<bool> saveUser(LoginResonseModel loginResonseModel)async{
SharedPreferences sp =await SharedPreferences.getInstance();
sp.setString('token', loginResonseModel.token.toString());
print(sp.setString('token', loginResonseModel.token.toString()));


    return true;
  }
  Future<LoginResonseModel> getUser( )async{
    SharedPreferences sp =await SharedPreferences.getInstance();
   String? token = sp.getString('token');


    return LoginResonseModel(
      token: token
    );
  }
  Future<bool> removeUser()async{
    SharedPreferences sp =await SharedPreferences.getInstance();
    sp.remove('token');
    return true;
  }
}