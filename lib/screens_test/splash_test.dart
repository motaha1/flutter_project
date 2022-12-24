import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/screenthree_firebase.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';

class splash_test extends StatelessWidget {
  const splash_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: ElevatedButton(child: Text('hello doctor'),onPressed: () {

Get.to(ThreeScreen_new('mudy2012@engineer.com'));
        
      },)),
    );
  }
}