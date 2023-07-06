import 'package:ars/Utils/app_color.dart';
import 'package:ars/screens/section_screen.dart';
import 'package:ars/screens/student_screen.dart';
import 'package:ars/widgets/app_bar.dart';
import 'package:ars/widgets/feed_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../widgets/feed_widget.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
            title: 'Section',
            iconData: Icons.arrow_back_ios,
          ),
          const SizedBox(height: 30,),
         FeedContainer(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text('Who is the Culprit',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                const SizedBox(height: 15,),
                   GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SectionScreen()));
                    },
                    child: const FeedWidget(text: 'STUDENT', icon: Icons.people_outline_outlined)),
                   const SizedBox(height: 30,),
                   GestureDetector(
                  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentScreen(text: 'Teacher', )));
                    },
                  child: FeedWidget(text: 'TEACHER', icon: Icons.people_outline_outlined)),
        ]
        ),
         )
                   
        ],
      )),
    );
  }
}

    