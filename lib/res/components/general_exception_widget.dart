import 'package:flutter/material.dart';

class GeneralExceptionWidget extends StatelessWidget {
  final VoidCallback ontap;
  GeneralExceptionWidget({super.key ,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.cloud_off_outlined,size: 50,color:Colors.red,),),
          SizedBox(height: 30),
          Center(child: Text('We are unable to process the request  \n Please try again latar')),
          SizedBox(height: 30),
          InkWell(
            onTap: ontap,
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.greenAccent, shape: BoxShape.rectangle),
              child: Center(child: Text('Retry')),
            ),
          )
        ],
      ),
    );
  }
}
