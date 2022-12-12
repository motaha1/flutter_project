import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class chat_screen extends StatelessWidget {
  Doctor doctor;
  chat_screen(this.doctor);
  TextEditingController x = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<Special, AuthProvider>(
          builder: (context, provider, provider2, w) {
        return Column(
          children: [
            TextField(
              controller: x,
            ),
            ElevatedButton(
                onPressed: () {
                  provider2.sendMessage('mudy2012@gmail.com' , DateTime.now().toString() , x.text);
                },
                child: Text('send'))
          ],
        );
      }),
    );
  }
}
