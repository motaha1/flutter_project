import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/appoiment_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:final_grad_proj/provider/provider.dart';

class showappoiments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: Consumer<TodoClass>(builder: (context, provider, x) {
      return ListView.builder(
          itemCount: provider.allTasks.length,
          itemBuilder: (context, index) {
            return DialogFb3(
              taskModel: provider.allTasks[index],
            );
          });
    }));
  }
}
