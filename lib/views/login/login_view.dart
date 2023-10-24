import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_x_repo/res/components/round_button.dart';
import 'package:get_x_repo/view_models/controllers/loginViewModel/login_View_model.dart';

import '../../utils/utils.dart';

class LoginView extends StatefulWidget {
   LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
final loginVM = Get.put(LoginViewModel());



final _formkey = GlobalKey<FormState>();
@override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key:_formkey ,
          child: Column(
            children: [
              TextFormField(controller: loginVM.emailController.value,
                validator: (value){
                if(value!.isEmpty){
                  Utils.toastMessage('Enter email');
                }
                },
                decoration: InputDecoration(hintText: 'Enter your Email',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10,),
              TextFormField(

                validator: (value){
                  if(value!.isEmpty){
                    Utils.toastMessage('Enter Passsword');
                  }
                },
                controller:loginVM.passwordController.value,
                decoration: InputDecoration(hintText: 'Enter your password',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10,),
              Obx(() => RoundButton(ontap: (){if(_formkey.currentState!.validate()){
                loginVM.login();
                print('***********************Login button press*****************************');
              }}, title: 'Login', loading: loginVM.loading.value))


            ],
          ),
        ),
      ),
    );
  }
}
