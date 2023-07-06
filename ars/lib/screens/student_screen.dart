import 'package:ars/Utils/app_color.dart';
import 'package:ars/models/teacher_model.dart';
import 'package:ars/provider/student_provider.dart';
import 'package:ars/provider/teacher_provider.dart';
import 'package:ars/widgets/app_bar.dart';
import 'package:ars/widgets/feed_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/student_model.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({Key? key, required this.text,  this.isTeacher=false}) : super(key: key);
  final String text;
  final bool isTeacher;

  @override
  State<StudentScreen> createState() => _StudentScreen();
}

class _StudentScreen extends State<StudentScreen> {

   

  

  @override
  Widget build(BuildContext context) {
    final studentProvider =  Provider.of<StudentProvider>(context);
    final teacherPfovider = Provider.of<TeachetProvider>(context);
    return SafeArea(
     child: Scaffold(
       backgroundColor: AppColor.bgColor,
       body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
        AppBarWidget(
          function: (){
            Navigator.pop(context);
          },
          title: widget.text,
          iconData:Icons.arrow_back_ios ,
        ),
          const SizedBox(height: 30,),
          Expanded(
            child: Container(
              
              width: MediaQuery.of(context).size.width* 1,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                 padding: const EdgeInsets.only(left: 20,right: 20, top: 30,bottom: 30),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: SingleChildScrollView(
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text('Select ${widget.text}',style: const TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                    const SizedBox(height: 15,),
                    widget.isTeacher ? FutureBuilder<List<StudentModel>>(
                      future: studentProvider.fetchAllStudent(),
                      builder: (context, snapshot){
                        if(snapshot.connectionState== ConnectionState.waiting){
                          return const Center(child: CircularProgressIndicator());
                        }else if(snapshot.hasError){
                          return Center(child: Text('An error occurred${snapshot.error}'));
                        }else if(snapshot.data == null){
                             return const Center(child: Text('No student has been added yet'));
                            }
                        return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         mainAxisExtent: 150,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 8.0
                        ), 
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index){
                          return ChangeNotifierProvider.value(
                            value: snapshot.data![index],
                            child: const FeedGridWidget(isStudent: true,));
                        });
                      },
                    )
                      : FutureBuilder<List<TeacherModel>>(
                      future: teacherPfovider.fetchTeachers(),
                      builder: (context, snapshot){
                        if(snapshot.connectionState== ConnectionState.waiting){
                          return const Center(child: CircularProgressIndicator());
                        }else if(snapshot.hasError){
                          return Center(child: Text('An error occurred${snapshot.error}'));
                        }else if(snapshot.data == null){
                             return const Center(child: Text('No student has been added yet'));
                            }
                        return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         mainAxisExtent: 150,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 8.0
                        ), 
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index){
                          return ChangeNotifierProvider.value(
                            value: snapshot.data![index],
                            child: FeedGridWidget());
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
       )),
     ),
      
    );
  }
}
