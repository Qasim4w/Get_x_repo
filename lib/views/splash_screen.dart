import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_repo/res/components/general_exception_widget.dart';
import 'package:get_x_repo/res/components/internet_exception_widget.dart';
import 'package:get_x_repo/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
SplashServices splashServices =SplashServices();


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashServices.isLogin();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // return GeneralExceptionWidget();
    return  Scaffold(
      body: Scaffold(appBar: AppBar(title: Text('Splash Screen'),),)
    );
  }
}
