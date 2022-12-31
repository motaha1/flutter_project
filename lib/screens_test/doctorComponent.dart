import 'dart:developer';

import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:final_grad_proj/screens_test/chat_doctor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../gsk_2022/another/presentation/time_picker/screenthree_firebase.dart';

class DoctorWidget extends StatelessWidget {
  Doctor doctor;
  DoctorWidget(this.doctor);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 2)),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                child: SizedBox(
                    width: double.infinity,
                    height: 170,
                    child: Image.network(
                      'https://images.pexels.com/photos/4021775/pexels-photo-4021775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                  right: 15,
                  top: 10,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              // Provider.of<Special>(context, listen: false)
                              //     .deleteCategory(category);
                              Get.off(() => chat_screen());
                              //  Get.off(() => chat_screen(doctor));
                            },
                            icon: Icon(Icons.medical_services_sharp)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {
                              Provider.of<AuthProvider>(context, listen: false)
                                  .getuserchat('mudy2012@gmail.com');
                            },
                            icon: Icon(Icons.edit)),
                      ),
                    ],
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'name' + ': ' + doctor.name,
                  ),
                  Text(
                    'city' + ': ' + doctor.city,
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  //   AppRouter.appRouter.goToWidget(AddNewProduct(category.id!));
                  Get.to(ThreeScreen_new('mudy2012@engineer.com'));
                },
                child: Text('appoiments')),
          )
        ],
      ),
    );
  }
}
