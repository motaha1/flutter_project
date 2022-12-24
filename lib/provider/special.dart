import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_grad_proj/data_repositories/firestore_helper.dart';
import 'package:final_grad_proj/models/chat_model.dart';
import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:flutter/cupertino.dart';

class Special extends ChangeNotifier {
  Special() {
    getAllDoctors();
  }

  List<Doctor>? allCategories;

  getAllDoctors() async {
    allCategories = await FirestoreHelper.firestoreHelper.getAllDoctors();
    notifyListeners();
  }
}
