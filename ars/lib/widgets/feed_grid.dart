
import 'package:ars/models/student_model.dart';
import 'package:ars/models/teacher_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Utils/app_color.dart';
import '../screens/report_screen_details.dart';

class FeedGridWidget extends StatelessWidget {
  const FeedGridWidget({Key? key,  this.isStudent=false, }) : super(key: key);
  final bool isStudent;
  @override
  Widget build(BuildContext context) {
    dynamic studentModelProvider = isStudent? Provider.of<StudentModel>(context) : Provider.of<TeacherModel>(context);
    return  GestureDetector(
                          onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ReportScreenDetail())),
                          child: Card(
                                      child: Column(
                                        
                                        children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(12),
                                          child: FancyShimmerImage(
                                            height: MediaQuery.of(context).size.height*.13,
                                      width: double.infinity,
                       
                                    boxFit: BoxFit.fill,
                                            imageUrl: isStudent? 'https://iamibdul.pythonanywhere.com'+studentModelProvider.image: studentModelProvider.image)),
                                      const SizedBox(height: 5,),
                                        Expanded(child: Text(studentModelProvider.name,style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,)))
                                      ]
                                      ))
                        );
                      
  }
}
//'https://placeimg.com/640/480/any'
 