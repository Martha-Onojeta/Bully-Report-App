

import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title, required this.iconData, required this.function}) : super(key: key);
  final String title;
  final IconData iconData;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return  Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  function();
                }, icon:  Icon(iconData, color: AppColor.primaryColor,)),
                 Text(title,style: const TextStyle(color: AppColor.primaryColor, fontSize: 24, fontWeight: FontWeight.w500),),
                 IconButton(onPressed: (){}, icon: const Icon(Icons.notification_important_outlined,color: AppColor.primaryColor,))
              ],
            ),
          );
  }
}