import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/screenthree_firebase.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/test.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/screens_test/chat_doctor.dart';
import 'package:final_grad_proj/wajeed2/presentation/Specialist_Schedule/Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

class splash_test extends StatelessWidget {
  const splash_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, provider, w) {
      return Container(
        child: Center(
            child: ElevatedButton(
          child: Text('hello doctor'),
          onPressed: () async {
            //   EasyLoading.show(status: 'loading...');

            //  await provider.gethowiamtalk();
            //  EasyLoading.dismiss();
            // provider.gethowiamtalk() ;
           // provider.getuserchat('motaha@engineer.com');
          //  provider.date_special = DateTime.now().toString().split(" ")[0] ;  
          // await provider.view_appoiment_for_specail('') ; 
          //  Get.to(SpecialistSchedule()) ; 
await provider.how_i_am_talk_api() ; 

            // Get.to(ThreeScreen_new('1'));
  Get.to(ChatPage());

          },
        )),
      );
    });
  }
}
