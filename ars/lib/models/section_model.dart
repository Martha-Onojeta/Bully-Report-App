

import 'package:flutter/material.dart';

class SectionModel with ChangeNotifier{
    String title;
    SectionModel({required this.title});
     factory SectionModel.fromJson(dynamic json){
      return SectionModel(
        title: json['title'] ?? ''
        );
    }
    static List<SectionModel> sectionFromSnapshot( List sectionSnapshot){
      return sectionSnapshot.map((e) => SectionModel.fromJson(e)).toList();
    }

  Map <String, dynamic> toJson(){
    final Map<String, dynamic> data = {};
    data['title'] = title;
    return data;
  }
}