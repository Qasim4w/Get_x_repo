import 'package:get/get.dart';
import 'package:get_x_repo/res/routes/routes_name.dart';
import 'package:get_x_repo/views/home/home.dart';
import 'package:get_x_repo/views/login/login_view.dart';
import 'package:get_x_repo/views/splash_screen.dart';

class AppRoutes{
  static approutes ()=>[
    GetPage(name: RoutesName.splashScreen, page: ()=>SplashScreen(),transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.loginView, page: ()=>LoginView(),transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.homeView, page: ()=>HomeView(),transition: Transition.leftToRightWithFade),
  ];
}