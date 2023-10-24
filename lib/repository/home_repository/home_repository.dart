import 'package:get_x_repo/data/network/network_api_services.dart';
import 'package:get_x_repo/models/home/home_view_model.dart';
import 'package:get_x_repo/res/app_url/app_url.dart';

class HomeRepository{
  final _apiServices= NetworkApiServices();
  Future<dynamic> userListApi()async{
    final response=await _apiServices.getApi( AppUrl.userlist);
    return UserListModel.fromJson(response);
  }
}