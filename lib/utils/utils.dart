import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utils{
  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static toastMessage(String msg){
    Fluttertoast.showToast(msg: msg,backgroundColor: Colors.green,gravity: ToastGravity.SNACKBAR);
  }
  static snackBar(String title,String msg){
    Get.snackbar(title, msg);
  }
}