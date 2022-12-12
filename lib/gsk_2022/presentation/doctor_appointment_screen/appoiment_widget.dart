import 'package:final_grad_proj/gsk_2022/models/task_model.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;
  TaskWidget(this.taskModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      // child: CheckboxListTile(
      //   secondary: IconButton(
      //       onPressed: () {
      //         Provider.of<TodoClass>(context, listen: false)
      //             .deleteTask(taskModel);
      //       },
      //       icon: Icon(Icons.delete)),
      //   value: true,
      //   onChanged: (v) {
      //     //Provider.of<TodoClass>(context, listen: false).updateTask(taskModel);
      //   },
      //   title: Text(taskModel.name ?? ''),
      // ),

      child: Column(children: [
        Row(
          children: [Text(taskModel.name ?? ''), Text(taskModel.date ?? '')],
        ),
        Text(taskModel.time ?? '')
      ]),
    );
  }
}

class DialogFb3 extends StatelessWidget {
  DialogFb3({Key? key, required this.taskModel}) : super(key: key);
  // final String date ;

  //     final String name ;
  final TaskModel taskModel;
  //String time = taskModel.time ??''  ;

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, secondaryColor]),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Provider.of<TodoClass>(context, listen: false)
                    .deleteTask(taskModel);
              },
              child: CircleAvatar(
                backgroundColor: accentColor.withOpacity(.05),
                radius: 25,
                child: Image.network(
                    //"https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/FlutterBricksLogo-Med.png?alt=media&token=7d03fedc-75b8-44d5-a4be-c1878de7ed52"
                    "https://cdn1.iconfinder.com/data/icons/line-essentials-4/20/169-512.png"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(taskModel.name ?? '',
                style: TextStyle(
                    color: accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 3.5,
            ),
            Text((taskModel.date ?? ''),
                style: TextStyle(
                    color: accentColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 3.5,
            ),
            Text((taskModel.time ?? ''),
                style: TextStyle(
                    color: accentColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
