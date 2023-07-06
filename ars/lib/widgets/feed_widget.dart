import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({Key? key, required this.text, required this.icon, }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return 
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width*1,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    border:  const Border(
                    top: BorderSide(width: 1.0, color: AppColor.primaryColor),
                    left: BorderSide(width: 1.0, color: AppColor.primaryColor),
                    right: BorderSide(width: 1.0, color: AppColor.primaryColor),
                    bottom: BorderSide(width: 1.0, color: AppColor.primaryColor),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, color: AppColor.primaryColor,),
                      const SizedBox(height: 5,),
                      Text(text, style: TextStyle(color: AppColor.primaryColor,),)
                    ],
                  ),
                )
    ;
  }
}