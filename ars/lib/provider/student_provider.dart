import 'package:ars/models/section_model.dart';
import 'package:ars/models/student_model.dart';
import 'package:ars/models/teacher_model.dart';
import 'package:ars/services/student_api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StudentProvider with ChangeNotifier{
  List <StudentModel> studentList = [];
  List <SectionModel> sectionList = [];
  List <TeacherModel> teacherList = [];

  List <StudentModel> get getStudentLists {
    return studentList;
  }

   List <SectionModel> get getSectionLists {
    return sectionList;
  }

   List <TeacherModel> get geTeacherLists {
    return teacherList;
  }

  Future <List <StudentModel>> fetchAllStudent () async{
    studentList = await StudentApiService.getStudents();
    return studentList;
  }

    Future <List <SectionModel>> fetchSection () async{
    sectionList = await StudentApiService.getSection();
    return sectionList;
  }

  Future <List <TeacherModel>> fetchTeachers () async{
    teacherList = await StudentApiService.getTeacher();
    return teacherList;
  }
}