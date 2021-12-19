import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomProgressDialog{
  show(){
    Get.to(()=>const ProgressDialog());
  }

  hide(){
    Get.back();
  }
}

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(backgroundColor: Colors.black26.withOpacity(0.1),
            body:Center(
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.directions_car_rounded, size: 30,color: Theme.of(context).primaryColor,),
                        const SizedBox(height: 5,),
                        Text('Loading...', style: TextStyle(fontSize:8, color: Theme.of(context).primaryColor,))
                      ],
                    ),
                  ),
                  Center(child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.transparent,
                    child: CircularProgressIndicator(strokeWidth: 0.8,color: Theme.of(context).primaryColor,),
                  ),
                  ),
                ],
              ),
            )
        ), onWillPop:()=>Future.value(false));
  }
}