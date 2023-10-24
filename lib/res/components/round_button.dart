import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  String title;
  final VoidCallback ontap;
 final  bool loading;
   RoundButton({super.key,required this.ontap,required this.title, this.loading=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: ontap,
      child: Container(height: 40,width: 60,
        decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(10)),
        child:loading?Center(child: CircularProgressIndicator()): Center(child: Text(title,)),
      ),
    );
  }
}
