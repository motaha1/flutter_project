import 'dart:developer';
import 'dart:io';

import 'package:final_grad_proj/gsk_2022/models/task_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DbHelper {
  late Database database;
  static DbHelper dbHelper = DbHelper();

  final String tableName = "tasks";
  final String idColumnName = "id";
  final String nameColumnName = "name";
  final String dateColumnName = "date";
  final String timeColumnName = "time";

  initDatabase() async {
    database = await createDatabaseConnection();
  }

  Future<Database> createDatabaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    return openDatabase('$folderPath/task9.db', version: 1,
        onCreate: (db, version) {
      db.execute('''CREATE TABLE $tableName (
            $idColumnName INTEGER PRIMARY KEY AUTOINCREMENT, 
            $nameColumnName TEXT, 
            $dateColumnName TEXT  ,
            $timeColumnName TEXT )''');

      log('its open');
    });
  }

  Future<int> insertNewTask(TaskModel taskModel) async {
    int i = await database.insert(tableName, taskModel.toMap());
    return i;
  }

  Future<List<TaskModel>> getAllTasks() async {
    List<Map<String, dynamic>> data = await database.query(tableName);
    return data.map((e) => TaskModel.fromMap(e)).toList();
  }

  Future<int> deleteTask(TaskModel taskModel) async {
    int count = await database
        .delete(tableName, where: 'id=?', whereArgs: [taskModel.id]);
    return count;
  }

  // updateTask(TaskModel taskModel) async {
  //   bool newValue = !(taskModel.isComplete!);
  //   database.update(tableName, {isCompleteColumnName: newValue},
  //       where: 'id=?', whereArgs: [taskModel.id]);
  // }
}
