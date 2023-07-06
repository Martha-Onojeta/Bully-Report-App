import 'package:ars/Utils/vars.dart';
import 'package:ars/screens/class_screen.dart';
import 'package:ars/widgets/feed_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Utils/app_color.dart';
import '../provider/student_provider.dart';
import '../widgets/app_bar.dart';
import '../widgets/feed_widget.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final studentProvider = Provider.of<StudentProvider>(context);
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
            title: 'Section',
            iconData: Icons.arrow_back_ios,
          ),
          const SizedBox(height: 30,),
          FeedContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text('What\'s the Section',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                const SizedBox(height: 15,),
                   GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ClassScreen(itemData: ['JSS 1','JSS 2','JSS 3',],)));
                    },
                    child: const FeedWidget(text: 'JSS', icon: Icons.people_outline_outlined)),
                   const SizedBox(height: 30,),
                   GestureDetector(
                     onTap: (){
                      // ignore: prefer_const_constructors
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ClassScreen(itemData: ['SSS 1', 'SSS 1', 'SSS 1',],)));
                    },
                    child: const FeedWidget(text: 'SSS', icon: Icons.people_outline_outlined)),
        ]
        ),
          )
          ],
      )),
    );
  }
}

