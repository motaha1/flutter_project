import 'package:final_grad_proj/components/custom_textfield%20copy.dart';
import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/controller/thank_you_screen_controller.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/thank_you_screen_dialog.dart';
import 'package:final_grad_proj/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

class info extends StatefulWidget {
  String idd ; 
  info(this.idd); 
  @override
  State<info> createState() => _infoState(idd);
}

class _infoState extends State<info> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController username = TextEditingController();
  String? idd ; 
_infoState(this.idd) ; 
  String? value2;

  var Where = ['هوية فلسطينية', 'هوية الداخل الفلسطيني المحتل '];



  @override
  Widget build(BuildContext context) {

  TextEditingController username1 = TextEditingController(text: Provider.of<AuthProvider>(context).user_api.user.username);
 
  TextEditingController age = TextEditingController();
  TextEditingController age1 = TextEditingController(text:'22');


  TextEditingController phone = TextEditingController();
  TextEditingController phone1 = TextEditingController(text: Provider.of<AuthProvider>(context).user_api.user.mobile);


    return SafeArea(
      child: Scaffold(
             

appBar:  AppBar(title: Text('ADD INFORMATION' , 

 style: TextStyle( color: Colors.white),

),

backgroundColor: Colors.black,

),

        body: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),

          child: Container(
              child: Consumer<AuthProvider>(builder: (context, provider, x) {
            return Column(
        
        
              children: [
        
                SizedBox(height: 15,) , 
                provider.forme == true
                    ? CustomTextfield1(
                        label: 'patinet name',
                        controller: username1,
                      )
                    : CustomTextfield1(
                        label: 'Patient name',
                        controller: username,
                      ),
                      SizedBox(height: 15,), 
                CustomTextfield2(label: provider.date.toString()),
                      SizedBox(height: 15,), 
                
                CustomTextfield2(
                    label: (provider.start.toString() +
                        ' -- ' +
                        provider.end.toString())),
                      SizedBox(height: 15,), 
        ////////////////////////////////
        ///
        ///
        
                provider.forme == true
                    ? CustomTextfield1(
                        label: 'patient age',
                        controller: age1,
                      )
                    : CustomTextfield1(
                        label: 'patient age',
                        controller: age,
                      ),
                      SizedBox(height: 15,), 
            
        
                      ///////////////
                      ///
                      ///
                provider.forme == true
                    ? CustomTextfield1(
                        label: 'patinet mobile',
                        controller: phone1,
                      )
                    : CustomTextfield1(
                        label: 'patient mobile',
                        controller: phone,
                      ),
                      SizedBox(height: 15,), 
        
        
        
        /////////////////////////////
                ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              DropdownButton(
                                // Initial Value
                                value: value2,
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),
                                // Array list of items
                                items: Where.map((String Where) {
                                  return DropdownMenuItem(
                                    value: Where,
                                    child: Text(
                                      Where,
                                    ),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    this.value2 = (value.toString());
                                    print(value.toString());
                                    //  provider.not();
                                  });
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomTextfield1(
                                label: 'الاسم الاول للمريض حسب الهوية',
                                controller: name,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              CustomTextfield1(
                                label: 'رقم الهوية',
                                controller: id,
                              ),
                              ElevatedButton(
                                  onPressed: () async {
                                    EasyLoading.show(status: 'loading...');
                                    provider.fullname = await DioHelper.diohelper
                                        .palid(name.text, id.text);
        EasyLoading.dismiss() ; 
                                    EasyLoading.showSuccess(
                                        "تم التاكيد ${provider.fullname}");
        
        
        await Future.delayed(const Duration(seconds: 1)) ; 
                                    // Duration(seconds: 10);
                                     EasyLoading.dismiss() ; 
        
                              EasyLoading.show(
                                  status: 'Appointment is being booked ..... ');
        
                              await DioHelper.diohelper.addAppoiment(
        
                                  provider.start!,
                                  provider.end!,
                                  provider.date!,
                                  provider.user_api.id.toString(),
                                  idd!.toString());
        
                                                              // await DioHelper.diohelper.sendsms(
                              //     provider.user_api.user.mobile
                              //         .toString()
                              //         .substring(1),
                              //     'An appointment has been booked for you  from ${provider.start.toString()} to ${provider.end.toString()}');
        
                               EasyLoading.dismiss();
                                  
        
                                 onTapConfirm();
        
        
        await Future.delayed(const Duration(seconds: 2)) ; 
                                                             Get.snackbar('New booking',
                                  'An appointment has been booked for you  from ${provider.start.toString()} to ${provider.end.toString()}');
                                  },
                                  child: Text('DONE'))
                            ],
                          )),
                          height: 350,
                        ),
                        enterBottomSheetDuration: Duration(seconds: 1),
                        exitBottomSheetDuration: Duration(seconds: 1),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(),
                          borderRadius: BorderRadius.circular(40),
                        ),
                      );
                    },
                    child: Text('next'))
              ],
            );
          })),
        ),
      ),
    );
  }
}

onTapConfirm() {
  Get.defaultDialog(
    title: '',
    backgroundColor: Colors.transparent,
    content: ThankYouScreenDialog(
      Get.put(
        ThankYouScreenController(), 
      )
    ),
  );
}
