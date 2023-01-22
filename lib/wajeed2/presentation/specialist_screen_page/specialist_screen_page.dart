import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_m_screen/notification_m_screen.dart';
import 'package:final_grad_proj/presentation/help_center_screen/controller/help_center_controller.dart';
import 'package:final_grad_proj/presentation/help_center_screen/help_center_screen.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/controller/privacy_policy_controller.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed/presentation/login_screen/login_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/models/userPatient.dart';
//import 'package:final_grad_proj/wajeed2/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_barS.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../specialist_screen_page/widgets/listdw_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_image.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_drop_down.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_search_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SpecialistScreenPage extends StatefulWidget {


  @override
  State<SpecialistScreenPage> createState() => MyWidgetStateS();
}

class MyWidgetStateS extends State<SpecialistScreenPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  static String Date_now = DateTime.now().toString().split(" ")[0];

  static int i = 0;

  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
     Provider.of<AuthProvider>(context , listen: false).date_special = DateTime.now().toString().split(" ")[0] ; 
    Provider.of<AuthProvider>(context , listen: false).view_appoiment_for_specail('upcoming') ; 
    return SafeArea(
      child: Consumer<AuthProvider>(
        builder: (context , provider ,x) {
          return AdvancedDrawer(
            backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
            child: Scaffold(
              body: Container(
                height: 812,
                width: size.width,
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    height: (812.h),
                    width: size.width,
                    margin: EdgeInsets.only(
                      bottom: 18.h,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: (812.h),
                                width: size.width,
                                margin: EdgeInsets.only(
                                  bottom: 10.h,
                                ),
                                child: Stack(alignment: Alignment.topLeft, children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 10.h,
                                          ),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: size.width,
                                                  child: Stack(
                                                    alignment: Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Container(
                                                          margin: EdgeInsets.only(
                                                            bottom: 10.h,
                                                          ),
                                                          decoration: AppDecoration
                                                              .gradientIndigoA400IndigoA401
                                                              .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderBL20,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              CustomAppBar(
                                                                  height:
                                                                      getVerticalSize(
                                                                    56.00,
                                                                  ),
                                                                  leadingWidth: 68,
                                                                  leading: Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                            top: 12.h,
                                                                            left:
                                                                                26.w,
                                                                            right:
                                                                                5.w),
                                                                    child: ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        getHorizontalSize(
                                                                          21.00,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                  url: provider?.user_api?.user?.avatar ??
                                  'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740' ,
                                                                        height:
                                                                            getSize(
                                                                          50.00,
                                                                        ),
                                                                        width:
                                                                            getSize(
                                                                          50.00,
                                                                        ),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  actions: [
                                                                    IconButton(
                                                                      icon: Icon(
                                                                        Icons
                                                                            .location_city,
                                                                        color: Colors
                                                                            .white,
                                                                        size: 25,
                                                                      ),
                                                                      onPressed: () {
                                                                        // onTap_chat_Bot();
                                                                      },
                                                                    ),
                                                                    IconButton(
                                                                      icon: Icon(
                                                                        Icons
                                                                            .notification_add,
                                                                        color: Colors
                                                                            .white,
                                                                        size: 25,
                                                                      ),
                                                                      onPressed: ()async {

                                                                                                        EasyLoading.show(
                                                        status: 'loading...');

                                                    await provider
                                                        .getnotification();
                                                    EasyLoading.dismiss();

                                                    Get.to(
                                                        NotificationMScreen());
                                                                        // onTap_chat_Bot();
                                                                      },
                                                                    ),
                                                                    IconButton(
                                                                      icon: Icon(
                                                                        Icons
                                                                            .dark_mode,
                                                                        color: Colors
                                                                            .white,
                                                                        size: 25,
                                                                      ),
                                                                      onPressed: () {
                                                                        // onTap_chat_Bot();
                                                                      },
                                                                    )
                                                                  ]),
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                    left: 26.w,
                                                                    top: 25.h,
                                                                    right: 19.w,
                                                                    bottom: 10.h,
                                                                  ),
                                                                  child: RichText(
                                                                    text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "Good Day"
                                                                                  .tr,
                                                                          style:
                                                                              TextStyle(
                                                                            color: ColorConstant
                                                                                .black903,
                                                                            fontSize:
                                                                                getFontSize(
                                                                              20,
                                                                            ),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .w400,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text: " ",
                                                                          style:
                                                                              TextStyle(
                                                                            color: ColorConstant
                                                                                .pinkA200,
                                                                            fontSize:
                                                                                getFontSize(
                                                                              20.sp,
                                                                            ),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .w400,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              provider?.user_api?.user?.username ??'Mohammad Taha',
                                                                          style:
                                                                              TextStyle(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            fontSize:
                                                                                (22.sp),
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .w400,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                  alignment: Alignment
                                                                      .topLeft,
                                                                  child: Container(
                                                                    margin: EdgeInsets
                                                                        .only(
                                                                      left: 40.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Enjoy managing your tasks",
                                                                      style: TextStyle(
                                                                          color: Color
                                                                              .fromARGB(
                                                                                  255,
                                                                                  45,
                                                                                  51,
                                                                                  61)),
                                                                    ),
                                                                  )),
                                                              CustomSearchView(
                                                                width: 327.w,
                                                                focusNode:
                                                                    FocusNode(),
                                                                hintText:
                                                                    "msg_search_for_your"
                                                                        .tr,
                                                                margin:
                                                                    EdgeInsets.only(
                                                                  left: 24.w,
                                                                  top: 10.h,
                                                                  right: 24.w,
                                                                ),
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                prefix: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                    left: 22.w,
                                                                    top: 18.h,
                                                                    right: 10.w,
                                                                    bottom: 18.h,
                                                                  ),
                                                                  child:
                                                                      CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSearch,
                                                                  ),
                                                                ),
                                                                prefixConstraints:
                                                                    BoxConstraints(
                                                                  minWidth: getSize(
                                                                    14.sp,
                                                                  ),
                                                                  minHeight: getSize(
                                                                    14.sp,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ])))
                                ]))),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 23.w, right: 23.w, bottom: 30.h, top: 190.h),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: TableCalendar(
                              firstDay: DateTime.utc(2023, 1, 1),
                              // DateTime.now(),
                              lastDay: DateTime.utc(2030, 3, 4),
                              focusedDay: _focusedDay,
                              calendarFormat: _calendarFormat,
                              selectedDayPredicate: (day) {
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                if (!isSameDay(_selectedDay, selectedDay)) {
                                  setState(() async{
                                    _selectedDay = selectedDay;
                                    _focusedDay = focusedDay;
                                    Date_now = _selectedDay.toString().split(" ")[0];
                                    debugPrint(_selectedDay.toString().split(" ")[0]);
          
                                  provider.date_special = Date_now ; 
                                  EasyLoading.show(status: 'loading ...') ; 
                                  await provider.view_appoiment_for_specail('upcoming') ;
                                  EasyLoading.dismiss() ;  
          
                                  });
                                }
                              },
                              onFormatChanged: (format) {
                                if (_calendarFormat != format) {
                                  setState(() {
                                    _calendarFormat = format;
                                  });
                                }
                              },
                              onPageChanged: (focusedDay) {
                                _focusedDay = focusedDay;
                              },
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 20.w, top: 460.h, bottom: 15.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Patient List",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    "                             $Date_now",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                margin: EdgeInsets.only(top: 580.h),
                                child: 
                                provider.po?.length == null ? Text('loading ...') :
                                
                                ListView.builder(
                                    itemCount: provider.po!.length,
                                    itemBuilder: (context, index) {
                                     
                                      return list(provider.po![index]);
                                    })))
                      ],
                    ),
                  ),
                ]),
              ),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {}),
            ),


                  drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Consumer<AuthProvider>(builder: (context, provider, x) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 128.0,
                    height: 128.0,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      provider.user_api.user.avatar ??
                          'https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20shirt,%20hairstyle_md.png',
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    onTap: () {
          
                    },
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('My Profile'),
                  ),
            
   
                  ListTile(
                    onTap: () {
                      Get.put(PrivacyPolicyController());

                      Get.to(PrivacyPolicyScreen());
                    },
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('Privacy & Policy'),
                  ),
                  ListTile(
                    onTap: () {
                      Get.put(HelpCenterController());
                      Get.to(HelpCenterScreen());
                    },
                    leading: Icon(Icons.help_center),
                    title: Text('Help Center'),
                  ),
      

          
                  ListTile(
                    onTap: () async {
                      EasyLoading.show(status: 'loading....');

                      await provider.how_i_am_talk_api();
                      EasyLoading.dismiss();

                      // Get.to(ThreeScreen_new('1'));
                      Get.to(ChatPage());
                    },
                    leading: Icon(Icons.chat_rounded),
                    title: Text('chat'),
                  ),

                                     ListTile(
                    onTap: () {
                      Get.defaultDialog(title:'logout' , middleText: 'are you sure to logout ?'  ,textCancel: 'cancel' , onCancel: () {
                        
                      },
                      textConfirm: 'yes' , 
                      onConfirm: () {
                        Get.to(MyWidgetLogin());
                      },
                      ); 
                    },
                    leading: Icon(Icons.logout),
                    title: Text('Logout' , style: TextStyle(color: Colors.red)),
                  ),
                  Spacer(),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Text('Terms of Service | Privacy Policy'),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
          );
        }
      ),
    );
  }

  Widget list(AppoimentApi api) {
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
                               url : api.patient?.user?.avatar ?? 'https://t4.ftcdn.net/jpg/03/89/56/99/360_F_389569987_a6MzM3KqGnnIT0e3CeDMokEOtrQngRF7.webp',
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
                        padding:
                            EdgeInsets.only(left: 12.w, top: 3.h, bottom: 0.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                 api.patient?.user
                                          ?.username ??
                                      'Othman othamn',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRubikRomanMedium20.copyWith(
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
              Consumer<AuthProvider>(
                builder: (context , provider ,x) {
                  return Expanded(
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
                                  Container(
                                      height: 25.h,
                                      width: 25.w,
                                      margin: EdgeInsets.only(
                                          left: 10.w, top: 5.h, bottom: 20.h),
                                      child: IconButton(
                                        icon: Icon(Icons.cancel , 
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
                                      )),
                                  Container(
                                      height: 25.h,
                                      width: 25.w,
                                      margin: EdgeInsets.only(
                                          left: 10.w, top: 5.h, bottom: 20.h),
                                      child: IconButton(
                                        icon: Icon(Icons.done ,
                                            color: Color.fromARGB(255, 6, 10, 252),
                                            ),
                                        onPressed: () => {

                              Get.defaultDialog(

                                          middleText: 'Are you Sure you done this appoiment !' , 

                                          textConfirm: 'Confirm' , 
                                          textCancel: 'Cancel'  , 
                                          onConfirm: () {
                                                                                    setState(() async {
                                          EasyLoading.show(
                                              status: 'loading ....');
                                          await provider.doneappoimnet(
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
                                      )),
                                ],
                              ),
                            ])
                      ],
                    ),
                  );
                }
              ),
            ]),
      ),
    ));
  }
}
