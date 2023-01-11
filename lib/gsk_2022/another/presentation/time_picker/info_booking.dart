import 'package:final_grad_proj/components/custom_textfield%20copy.dart';
import 'package:flutter/material.dart';

import 'package:roundcheckbox/roundcheckbox.dart';

class info extends StatelessWidget {
  
  TextEditingController name = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Container(
  child:   Column(
  
  
  
  children: [
  
      Row(
  
        children: [
  
          CustomTextfield1(
  
  label: 'Patient Name',
  
  controller: name,
  
  
  
    ),
  
  
  
  const SizedBox(width: 30),
  
  Text('iam a patient') , 
  
              RoundCheckBox(
  
                onTap: (selected) {
  
  name.text = 'hello' ; 
  
                },
  
                uncheckedWidget: Icon(Icons.close),
  
                isChecked: true,
  
              ),
  
        ],
  
  
  
  
  
  
  
  
  
      ),
  
  
  
  
  
  
  
  
  
  ],
  
  ),
),


    );
  }
}