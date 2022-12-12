import 'package:final_grad_proj/youtube/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(child:
      Column(
        children: [
          Text('add tasks') , 
          input(title: 'patiant name', hint: 'enter patiant name  ') , 
           input(title: 'date', hint: DateFormat.yMd().format(DateTime.now())) , 

        ],
      )
       ),
    );
  }
}
