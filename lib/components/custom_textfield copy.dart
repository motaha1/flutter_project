import 'package:flutter/material.dart';

class CustomTextfield1 extends StatelessWidget {

  final TextEditingController controller;

  //final TextInputType textInputType;

  final String label;
  CustomTextfield1({
    Key? key,

    required this.label,
    required this.controller,
   
   // this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
     // keyboardType: textInputType,
 
      controller: controller,
      
      decoration: InputDecoration(
          label: Text(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
