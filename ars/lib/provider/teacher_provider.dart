import 'package:flutter/material.dart';

import '../models/student_model.dart';
import '../models/teacher_model.dart';
import '../services/student_api.dart';

class TeachetProvider with ChangeNotifier{
  List <TeacherModel> teacherList = [];



   List <TeacherModel> get geTeacherLists {
    return teacherList;
  }

  

  Future <List <TeacherModel>> fetchTeachers () async{
    teacherList = await StudentApiService.getTeacher();
    return teacherList;
  }
}