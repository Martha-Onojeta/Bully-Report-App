import 'dart:convert';

import 'package:flutter/material.dart';

class StudentModel with ChangeNotifier {
  int studentId;
  String name, parentNumber, gender, image, className;
  StudentModel(
      {required this.className,
      required this.gender,
      required this.image,
      required this.parentNumber,
      required this.studentId,
      required this.name});

  factory StudentModel.fromJson(dynamic json) {
    return StudentModel(
        className: json['division']['title'] ?? '',
        gender: json['gender'] ?? '',
        image: json['image'] ?? 'https://placeimg.com/640/480/any',
        parentNumber: json['parent']['phone_number'] ?? '',
        studentId: json['id'] ?? '',
        name: json['name'] ?? '');
  }
  static List<StudentModel> studentFromSnapshot(List studentSnapshot) {
    return studentSnapshot.map((e) => StudentModel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['studentId'] = studentId;
    data['studentName'] = name;
    data['parentNumber'] = parentNumber;
    data['className'] = className;
    data['gender'] = gender;
    data['image'] = image;
    return data;
  }
}



/*
class StudentModel {
  int? id;
  String? name;
  Parent? parent;
  Division? division;
  Null? image;
  String? gender;

  StudentModel(
      {this.id,
      this.name,
      this.parent,
      this.division,
      this.image,
      this.gender});

  StudentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parent =
        json['parent'] != null ? new Parent.fromJson(json['parent']) : null;
    division = json['division'] != null
        ? new Division.fromJson(json['division'])
        : null;
    image = json['image'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.parent != null) {
      data['parent'] = this.parent!.toJson();
    }
    if (this.division != null) {
      data['division'] = this.division!.toJson();
    }
    data['image'] = this.image;
    data['gender'] = this.gender;
    return data;
  }
}

class Parent {
  int? id;
  String? name;
  String? phoneNumber;

  Parent({this.id, this.name, this.phoneNumber});

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone_number'] = this.phoneNumber;
    return data;
  }
}

class Division {
  String? title;
  int? section;

  Division({this.title, this.section});

  Division.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    section = json['section'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['section'] = this.section;
    return data;
  }
}
 */