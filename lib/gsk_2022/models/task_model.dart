import 'dart:convert';

import 'package:flutter/material.dart';

class TaskModel {
  int? id;
  String? name;
  String ? date;
  String ? time;

  TaskModel({
    this.id,
    this.name,
    this.date,
    this.time
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'date': date,
      'time': time,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id']?.toInt(),
      name: map['name'],
      date: map['date'],
      time: map['time'],
     // isComplete: map['isComplete'] == 1 ? true : false,
    );
  }
}