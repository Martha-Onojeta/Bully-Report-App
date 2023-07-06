

import 'package:flutter/material.dart';

class TeacherModel with ChangeNotifier {
  int teacherId;
  String name,
  image;

  TeacherModel({required this.image, required this.teacherId, required this.name});
    factory TeacherModel.fromJson(dynamic json){
      return TeacherModel(
        teacherId: json['id'] ?? '',
        name: json['name'] ?? '',
        image: json['image'] ?? '',
        );
    }
    static List<TeacherModel> teacherFromSnapshot( List teacherSnapshot){
      return teacherSnapshot.map((e) => TeacherModel.fromJson(e)).toList();
    }

  Map <String, dynamic> toJson(){
    final Map<String, dynamic> data = {};
    data['teacherId'] = teacherId;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
  
}
