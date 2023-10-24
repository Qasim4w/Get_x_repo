import 'package:get_x_repo/data/network/network_api_services.dart';
import 'package:get_x_repo/res/app_url/app_url.dart';

class LoginRepository{
  final _apiServices= NetworkApiServices();
  Future<dynamic> loginApi(var data)async{
    final response=await _apiServices.postApi(data, AppUrl.loginUrl);
    return response;
  }
}