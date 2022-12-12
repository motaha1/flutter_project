import 'package:final_grad_proj/core/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class button1 extends StatelessWidget {
  const button1({Key? key, required this.onTap , required this.label}) : super(key: key);
  final Function()? onTap;
  final String label; 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20) , color: Color(0xFF4e5ae8)),
       // color: Color(0xFF4e5ae8),
        child: Text(label),
      ),

    );
  }
}
