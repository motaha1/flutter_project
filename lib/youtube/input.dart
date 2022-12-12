import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class input extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? cont;
  final Widget? widg; 


  const input({Key? key, required this.title, required this.hint, this.cont , this.widg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
        Text(title)  ,
        Container(
          height: 52 , 
          color: Colors.grey,
          width: 300,

      child: Row(
        children: [
          Expanded(child: 
          TextFormField(
            autofocus: false,
           controller: cont,
           decoration: InputDecoration(hintText: hint), 
          ))
        ],
      ),
          
        )
      ]),
    );
  }
}
