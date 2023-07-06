import 'package:ars/Utils/app_color.dart';
import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  const Button({ Key? key, required this.text,}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
          width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.cardColor,
        ),
        child:
             Center(child: Text(text, style: const TextStyle(color: AppColor.whiteColor,fontWeight: FontWeight.bold,fontSize: 18),))
      );
    
  }
}