import 'package:ars/Utils/vars.dart';
import 'package:ars/screens/gender_screen.dart';
import 'package:ars/widgets/feed_container_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/app_color.dart';
import '../widgets/app_bar.dart';
import '../widgets/feed_widget.dart';

class ClassScreen extends StatelessWidget {
  const ClassScreen({Key? key, required this.itemData,  }) : super(key: key);
  final List itemData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          AppBarWidget(
            function: (){
              Navigator.pop(context);
              
            },
            title: 'Class',
            iconData: Icons.arrow_back_ios,
          ),
          const SizedBox(height: 30,),
          FeedContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                 const Text('What\'s the Class?',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                  const SizedBox(height: 30,),
                 ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index) => GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> GenderScreen())),
                    child: FeedWidget(text: itemData[index], icon: Icons.people_outline_outlined)), 
                  separatorBuilder: (context, index) => const SizedBox(height: 30,), itemCount: 3)
              ]
        )
          )
          ],
      )),
    );
  }
}
/*
   SizedBox(height: 25,),
                FeedWidget(text: 'text', icon: Icons.people_outline_outlined),
                SizedBox(height: 25,),
                 FeedWidget(text: 'text', icon: Icons.people_outline_outlined),
                 SizedBox(height: 25,),
                  FeedWidget(text: 'text', icon: Icons.people_outline_outlined)
 */