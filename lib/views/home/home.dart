import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_repo/data/response/status.dart';
import 'package:get_x_repo/repository/home_repository/home_repository.dart';
import 'package:get_x_repo/res/components/general_exception_widget.dart';
import 'package:get_x_repo/res/components/internet_exception_widget.dart';
import 'package:get_x_repo/res/routes/routes_name.dart';
import 'package:get_x_repo/view_models/controllers/user_prefrences/user_prefrences_view_model.dart';

import '../../view_models/controllers/home/home_view_model.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UserPreference userPreference = UserPreference();
  final controller = Get.put(HomeViewController());

  @override
  void initState() {
    controller.userListModel();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () {
          userPreference.removeUser().then((value) =>
              Get.toNamed(RoutesName.loginView));
        }, icon: Icon(Icons.logout_outlined))
        ],),
      body: Obx(() {
        switch (controller.rxRequestStatus.value) {
          case Status.Loading:
            return Center(child: CircularProgressIndicator());
          case Status.Error:
            // return
              Text(controller.error.value);
              print('**${controller.error.value}*');
             if(controller.error.value == ' dynamic'){
               return InternetExceptionWidget(ontap: (){
                 controller.refreshData();
               });
             }
             else {
               return GeneralExceptionWidget(ontap: (){
                 controller.refreshData();
               });
             }
          case Status.Completed:
            return ListView.builder(
              itemCount: controller.userList.value.data!.length,
              itemBuilder: (context, index) {
              return Card(
                child: ListTile(title:Text( controller.userList.value.data![index].name),
                subtitle: Text(controller.userList.value.data![index].votingType)),
              );
            },);
        }
        return SizedBox();
      }),

    );
  }
}
