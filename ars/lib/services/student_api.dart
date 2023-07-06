import 'dart:developer';
import 'dart:convert';
import 'package:ars/models/section_model.dart';
import 'package:ars/models/student_model.dart';
import 'package:ars/models/teacher_model.dart';
import 'package:http/http.dart' as http;

import '../models/report_modeel.dart';

class StudentApiService {
  static Future<List<StudentModel>> getStudents() async {
    //
    var url = Uri.parse('https://iamibdul.pythonanywhere.com/api/v1/students');
    var response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //log('Response body: ${response.body}');
    var data = jsonDecode(response.body);
    List studentTempList = [];
    for (var v in data) {
      studentTempList.add(v);
      //log(v.toString());
      //print(data.length.toString());
    }
    return StudentModel.studentFromSnapshot(studentTempList);
  }

  static Future<List<SectionModel>> getSection() async {
    //

    var url = Uri.parse('https://iamibdul.pythonanywhere.com/api/v1/sections');
    var response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //log('Response body: ${response.body}');
    var data = jsonDecode(response.body);
    List studentTempList = [];
    for (var v in data) {
      studentTempList.add(v);
      //log(v.toString());
      //print(data.length.toString());
    }
    return SectionModel.sectionFromSnapshot(studentTempList);
  }

  static Future<List<TeacherModel>> getTeacher() async {
    //

    var url = Uri.parse('https://iamibdul.pythonanywhere.com/api/v1/teachers');
    var response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //log('Response body: ${response.body}');
    var data = jsonDecode(response.body);
    List studentTempList = [];
    for (var v in data) {
      studentTempList.add(v);
      //log(v.toString());
      //print(data.length.toString());
    }
    return TeacherModel.teacherFromSnapshot(studentTempList);
  }

 

}
