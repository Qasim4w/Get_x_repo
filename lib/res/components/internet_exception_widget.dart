import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback ontap;
   InternetExceptionWidget({super.key ,
     required this.ontap
   });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.cloud_off_outlined,size: 50,color:Colors.red,)),
          SizedBox(height: 30),
          Center(child: Text('No internet \n check your mobile internet connection ',textAlign: TextAlign.center,)),
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
