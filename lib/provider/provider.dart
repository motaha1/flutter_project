import 'package:final_grad_proj/helper/db_helper.dart';
import 'package:final_grad_proj/gsk_2022/models/task_model.dart';
import 'package:flutter/material.dart';

class TodoClass extends ChangeNotifier {
  TodoClass() {
    // getAllTasks();
  }
  bool isDarkMode = false;
  changeIsDarkMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  String? date;
  String? time;
  TextEditingController namecontroller = TextEditingController();
  String? selected_date_appoiment;
  String? doctorname;
  //TextEditingController  = TextEditingController();

  List<TaskModel> allTasks = [];
  List<TaskModel> selecttime = [];
  List<TaskModel> inCompleteTasks = [];

  getAllTasks() async {
      allTasks = await DbHelper.dbHelper.getAllTasks();
    selecttime = allTasks.where((element) => element.date ==selected_date_appoiment).toList();
    //   inCompleteTasks =
    //       allTasks.where((element) => !element.isComplete!).toList();
      notifyListeners();
  }

  insertNewTask() async {
    TaskModel taskModel =
        TaskModel(name: namecontroller.text, date: date , time: time);
    namecontroller.clear();
    await DbHelper.dbHelper.insertNewTask(taskModel);
    getAllTasks();
  }

  deleteTask(TaskModel taskModel) async {
    await DbHelper.dbHelper.deleteTask(taskModel);
    getAllTasks();
  }

  // updateTask(TaskModel taskModel) async {
  //   await DbHelper.dbHelper.updateTask(taskModel);
  //   getAllTasks();
  // }
}
