import 'package:get/get.dart';
import 'package:get_x_repo/models/home/home_view_model.dart';
import 'package:get_x_repo/repository/home_repository/home_repository.dart';

import '../../../data/response/status.dart';

class HomeViewController extends GetxController {
  final _api = HomeRepository();
  final rxRequestStatus = Status.Loading.obs;
  final userList = UserListModel().obs;
  RxString error ="".obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;

  void setUserModel(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  void userListModel() {
    // setRxRequestStatus(Status.Loading);
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.Completed);
      setUserModel(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.Error);
      print('error on controller ${error}');
      print('error on controller ${stackTrace}');
      setError(error.toString());
    });
  }
  void refreshData() {
    setRxRequestStatus(Status.Loading);
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.Completed);
      setUserModel(value);
    }).onError((error, stackTrace) {
      setRxRequestStatus(Status.Error);
      print('error on controller ${error}');
      print('error on controller ${stackTrace}');
      setError(error.toString());
    });
  }
}
