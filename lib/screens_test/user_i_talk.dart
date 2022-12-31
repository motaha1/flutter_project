
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import 'chat_doctor.dart';

class CardFb2 extends StatelessWidget {
final Doctor doctor ; 

  const CardFb2(
      {required this.doctor,

      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() {
        Get.to(send(doctor)) ;
      }, 
      child: GestureDetector(
         // onTap: onPressed,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.5),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(10, 20),
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Colors.grey.withOpacity(.05)),
              ],
            ),
            child: Row(
              children: [
                Image.network('https://d2pas86kykpvmq.cloudfront.net/images/humans-3.0/ava-1.png', height: 59, fit: BoxFit.cover),
                const SizedBox(
                  width: 15,
                ),
                Text(doctor.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                const Spacer(),
                Text(
                  doctor.city,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ],
            ),
          ),
      ),
    );
  }
}