import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient%20Records/models/userPatient.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient%20Records/widgets/Patient_Records_widget.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screen/models/usercall.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_search_view.dart';
import '../calls_screen/widgets/calls_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientSchedule extends StatefulWidget {
  @override
  State<PatientSchedule> createState() => MyWidgetState();
}

class MyWidgetState extends State<PatientSchedule> {
  static String NameUser = "";
  static int i = 0;
  int from = 0  ;  

  // List<userPatient> Upcoming = [
  //   userPatient(Name: "Ahmad", Date: "Date_now.toString()", time: "Anas"),
  //   userPatient(Name: "Mohammad", Date: "wajeed", time: "Anas"),
  //   userPatient(Name: "Wajeed", Date: "Ahmad", time: "Anas"),
  //   userPatient(Name: "Ali", Date: "Mohammad", time: "Anas"),
  // ];

  List<userPatient> Done = [
    userPatient(Name: "Ahmad", Date: "Date_now.toString()", time: "Anas"),
    userPatient(Name: "888", Date: "wajeed", time: "Anas"),
    userPatient(Name: "Wajeed", Date: "Ahmad", time: "Anas"),
    userPatient(Name: "Ali", Date: "Mohammad", time: "Anas"),
  ];
  List<userPatient> cancel = [
    userPatient(Name: "11", Date: "Date_now.toString()", time: "Anas"),
    userPatient(Name: "Mohammad", Date: "wajeed", time: "Anas"),
    userPatient(Name: "Wajeed", Date: "Ahmad", time: "Anas"),
    userPatient(Name: "Ali", Date: "Mohammad", time: "Anas"),
  ];

  // static List<userPatient> GlobalList =[
  //   userPatient(Name: "Ahmad", Date: "Date_now.toString()", time: "Anas"),
  //   userPatient(Name: "Mohammad", Date: "wajeed", time: "Anas"),
  //   userPatient(Name: "Wajeed", Date: "Ahmad", time: "Anas"),
  //   userPatient(Name: "Ali", Date: "Mohammad", time: "Anas"),
  // ];
    DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    List<AppoimentApi>? GlobalList = Provider.of<AuthProvider>(context).po1;

    return SafeArea(
        child: Consumer<AuthProvider>(builder: (context, provider, x) {
      return Scaffold(
        body: Container(
            height: 812,
            width: size.width,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: CommonImageView(
                      imagePath: ImageConstant.BackgroundChat,
                      height: 812.h,
                      width: 375.w)),
    
              Align(
                  alignment: Alignment.topCenter,
                  child:DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 100,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.black,
                  selectedTextColor: Colors.white,
                  inactiveDates: [
            
                  ],
                  onDateChange: (date) async {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                      // print(_selectedValue.toString().split(" ")[0]);
                      print(provider.date);
                      provider.date_patient =
                          _selectedValue.toString().split(" ")[0];
                      print( provider.date_patient);
                    });
EasyLoading.show(status: 'loading....') ; 
                    await provider.view_appoiment_for_patient('');
                    EasyLoading.dismiss() ; 
                  },
                )),
              Row(
                children: [
                  CustomButton(
                      width: 97.w,
                      text: "Comming",
                      margin: EdgeInsets.only(
                          left: 17.w, top: 120.h, right: 17.w, bottom: 45.h),
                      shape: ButtonShape.RoundedBorder28,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: () => {
                       

                            setState(() async {
                              //GlobalList = Upcoming;
                              from = 1 ; 

                              EasyLoading.show(status: 'loading');
                              await provider
                                  .view_appoiment_for_patient('upcoming');
                              GlobalList = provider.po1;
                              EasyLoading.dismiss();
                            })
                          },
                      alignment: Alignment.topLeft),
                  CustomButton(
                      width: 90.w,
                      text: "Done",
                      margin: EdgeInsets.only(
                          left: 5.w, top: 120.h, right: 10.w, bottom: 45.h),
                      shape: ButtonShape.RoundedBorder28,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: () => {
                            setState(() async {
                              from = 2 ; 
                              //GlobalList = Done;
                              EasyLoading.show(status: 'loading');
                              await provider.view_appoiment_for_patient('done');
                              GlobalList = provider.po1;

                              EasyLoading.dismiss();
                            })
                          },
                      alignment: Alignment.topCenter),
                  CustomButton(
                      width: 90.w,
                      text: "Cancel",
                      margin: EdgeInsets.only(
                          left: 5.w, top: 120.h, right: 17.w, bottom: 45.h),
                      shape: ButtonShape.RoundedBorder28,
                      padding: ButtonPadding.PaddingAll13,
                      onTap: () => {
                            setState(() async {
                               from = 3 ; 
                              EasyLoading.show(status: 'loading');
                              await provider
                                  .view_appoiment_for_patient('cancelled');
                              GlobalList = provider.po1;

                              EasyLoading.dismiss();
                              // GlobalList = cancel;
                            })
                          },
                      alignment: Alignment.topRight),
                ],
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(top: 160.h),
                      child: ListView.builder(
                          itemCount: GlobalList!.length,
                          itemBuilder: (context, index) {
                           
                            return list(GlobalList![index]);
                          })))
            ])),

      );
    }));
  }

  onTap_arrow_back() {
    Get.toNamed(AppRoutes.Chatspacialist);
  }

  onTap_chat_Bot() {
    Get.toNamed(AppRoutes.Messagescreen_Bot);
  }

  Widget list(AppoimentApi api) {
    return Consumer<AuthProvider>(builder: (context, provider, x) {
      return Card(
          //alignment: Alignment.bottomLeft,
          child: GestureDetector(
        onTap: () {
          // CallsScreen.i = index;
          // onTapRowtime!();
        },
        child: Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            top: 12.5.h,
            right: 24.w,
            bottom: 12.5.h,
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: (52.h),
                        width: (52.w),
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  (26.r),
                                ),
                                child: CommonImageView(
                                  url: api.specialist?.user?.avatar ??'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740',
                                  height: (52.h),
                                  width: (52.w),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.w, top: 3.h, bottom: 0.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                 api.specialist?.user
                                          ?.username ??
                                      'Othman othamn',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRubikRomanMedium20.copyWith(
                                    height: 1.20.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 3.h, right: 10.w, bottom: 0.h),
                                  child: Text(
                                    "${api.date ?? 'Othman othamn'} \n  ${api.start} to ${api.end}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRubikRomanLight12Gray601
                                        .copyWith(
                                      height: 1.25.h,
                                    ),
                                  ),
                                ),
                              ])),
                    ]),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                               ( from==0|| from ==2) ?
                                Container(
                                    height: 25.h,
                                    width: 25.w,
                                    margin: EdgeInsets.only(
                                        left: 10.w, top: 5.h, bottom: 20.h),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Color.fromARGB(255, 250, 50, 0),
                                      ),
                                      onPressed: () => {

                                        Get.defaultDialog(

                                          middleText: 'Are you Sure to cancle appoiment !' , 

                                          textConfirm: 'Confirm' , 
                                          textCancel: 'Cancel'  , 
                                          onConfirm: () {
                                                                                    setState(() async {
                                          EasyLoading.show(
                                              status: 'loading ....');
                                          await provider.deleteappoimnet(
                                              api!.id
                                                  .toString());
EasyLoading.dismiss() ; 


                                          ///GlobalList.removeAt(0);
                                        }) ; 
                                          },
                                          onCancel: () {
                                            
                                          },
                                        )

                                      },
                                    ))  : Text('.') , 
//                                 Container(
//                                     height: 25.h,
//                                     width: 25.w,
//                                     margin: EdgeInsets.only(
//                                         left: 10.w, top: 5.h, bottom: 20.h),
//                                     child: IconButton(
//                                       icon: Icon(
//                                         Icons.done,
//                                         color: Color.fromARGB(255, 6, 10, 252),
//                                       ),
//                                       onPressed: () => {

//                                    Get.defaultDialog(

//                                           middleText: 'Are you Sure you done this appoiment !' , 

//                                           textConfirm: 'Confirm' , 
//                                           textCancel: 'Cancel'  , 
//                                           onConfirm: () {
//                                                                                     setState(() async {
//                                           EasyLoading.show(
//                                               status: 'loading ....');
//                                           await provider.doneappoimnet(
//                                               api!.id
//                                                   .toString());
// EasyLoading.dismiss() ; 


//                                           ///GlobalList.removeAt(0);
//                                         }) ; 
//                                           },
//                                           onCancel: () {
                                            
//                                           },
//                                         )





//                                       },
//                                     )),
                              ],
                            ),
                          ])
                    ],
                  ),
                ),
              ]),
        ),
      ));
    });
  }
}
