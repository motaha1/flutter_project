import 'package:final_grad_proj/components/custom_textfield%20copy.dart';
import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
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
  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();

  String? value2;

  var Where = ['هوية فلسطينية', 'هوية الداخل الفلسطيني المحتل '];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Consumer<AuthProvider>(builder: (context, provider, x) {
      return Column(
        children: [
          CustomTextfield2(label: provider.user_api.user.username.toString()),
          CustomTextfield2(label: provider.date.toString()),
          CustomTextfield2(
              label: (provider.start.toString() +
                  ' -- ' +
                  provider.end.toString())),
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
                              print(value.toString()) ; 
                              provider.not();
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

                              EasyLoading.showSuccess(
                                  "تم التاكيد ${provider.fullname}");
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
    }));
  }
}



