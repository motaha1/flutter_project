import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/bot.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:final_grad_proj/screens_test/chat_doctor.dart';
import 'package:final_grad_proj/screens_test/doctorComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../gsk_2022/another/presentation/appoiment_screen_firebase.dart';

class AllDoctorssScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await Provider.of<AuthProvider>(context, listen: false)
                    .getAllappoiment_Paitent();
                Get.to(appoiment_show_patient_firebase());
              },
              icon: Icon(Icons.calendar_month_sharp)),
          IconButton(
              onPressed: () async {
                Get.to(chat_bot());
              },
              icon: Icon(Icons.chat)),
          IconButton(
              onPressed: () async {
                EasyLoading.show(status: 'loading...');
                await Provider.of<AuthProvider>(context, listen: false)
                    .gethowiamtalk();
                //await provider.gethowiamtalk();
                EasyLoading.dismiss();
                Get.to(chat_screen());
              },
              icon: Icon(Icons.chat_bubble_outline)),
        ],
        title: Text('All Doctors'),
      ),
      body: Consumer2<Special, AuthProvider>(
          builder: (context, provider, provider2, w) {
        return provider.allCategories == null
            ? Center(
                child: Text('No Categories Found'),
              )
            : Column(
                children: [
                  Text(provider2.loggedUser!.email),
                  Expanded(
                    child: ListView.builder(
                        itemCount: provider.allCategories!.length,
                        itemBuilder: (context, index) {
                          return DoctorWidget(provider.allCategories![index]);
                        }),
                  ),
                ],
              );
      }),
    );
  }
}
