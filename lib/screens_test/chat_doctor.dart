import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:final_grad_proj/screens_test/user_i_talk.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class chat_screen extends StatelessWidget {
  // Doctor doctor;
  // chat_screen(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer2<Special, AuthProvider>(
          builder: (context, provider, provider2, w) {
        return Column(
          children: [

        Expanded(
          child: ListView.builder(
                itemCount: provider2.howiamtalk_user.length,
                itemBuilder: (context, index) {
                  return CardFb2(doctor:provider2.howiamtalk_user[index] );
                }), 
        ) , 
       
          ],
        );
      }),
    );
  }
}



class send extends StatelessWidget {
  Doctor doctor  ; 
  send(this.doctor); 
  //const MyWidget({Key? key}) : super(key: key);
  TextEditingController x = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Center(
  child: Consumer<AuthProvider>(
    builder: (context , provider , w) {
      return Column(
        children: [
         Center(
           child: TextField(
                    controller: x,
                  ),
         ),
                ElevatedButton(
                    onPressed: () {
                      provider.sendMessage(doctor.email??'xxxxxxx' , DateTime.now().toString() , x.text);
                    },
                    child: Text('send'))
        ],
      );
    }
  )
  ,
),

    ) ; 
  }
}
