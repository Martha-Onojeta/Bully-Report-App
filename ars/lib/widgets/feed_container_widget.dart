

import 'package:flutter/material.dart';

import '../Utils/app_color.dart';

class FeedContainer extends StatelessWidget {
  const FeedContainer({Key? key, this.child}) : super(key: key);
  final  child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 1,
              margin: const EdgeInsets.symmetric(horizontal: 10),
               padding: const EdgeInsets.only(left: 20,right: 20, top: 30, bottom: 30),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: child
    );
  }
}