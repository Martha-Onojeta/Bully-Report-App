import 'package:ars/screens/student_screen.dart';
import 'package:ars/widgets/feed_container_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/app_color.dart';
import '../widgets/app_bar.dart';
import '../widgets/feed_widget.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({Key? key}) : super(key: key);

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
            title: 'Gender',
            iconData: Icons.arrow_back_ios,
          ),
          const SizedBox(height: 30,),
         FeedContainer(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                 const Text('What\'s the Gender?',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                const SizedBox(height: 15,),
                   GestureDetector(
                    onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> const StudentScreen(text: 'Student',isTeacher: true,))),
                    child: const FeedWidget(text: 'Male', icon: Icons.people_outline_outlined)),
                   const SizedBox(height: 30,),
                   const FeedWidget(text: 'Female', icon: Icons.people_outline_outlined),
        ]
        )
         )
          ],
      )),
    );
  }
}