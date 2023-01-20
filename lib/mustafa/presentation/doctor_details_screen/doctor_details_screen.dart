import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/screenthree_firebase.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/models/user_api.dart';
import 'package:final_grad_proj/mustafa/presentation/home_page/home_page.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:final_grad_proj/mustafa/presentation/favourite_specialists_screen/favourite_specialists_screen.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/widgets/chat_item_widget.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen%20copy/message_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widgets/custom_image_view.dart';
import '../Doctor.dart';
import '../doctor_screen/doctor_screen.dart';
import 'controller/doctor_details_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';

import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({required this.Doctor});

  final SpecialistProfile Doctor;
  @override
  State<DoctorDetailsScreen> createState() =>
      _DoctorDetailsScreenState(special: Doctor);
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  bool Fav = false;
  SpecialistProfile? special;
  _DoctorDetailsScreenState({required this.special});
  //فوق بنحط كل المعلوماات
  //الحمد لله
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                              imagePath: ImageConstant.imgBg,
                              height: 812.00.h,
                              width: 375.00.w)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: size.width,
                                    margin: EdgeInsets.only(top: 36.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomIconButton(
                                              height: 30.h,
                                              width: 30.w,
                                              margin:
                                                  EdgeInsets.only(left: 20.w),
                                              onTap: () {
                                                Get.to(HomePage());
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBluegray500)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 19.w,
                                                  top: 5.h,
                                                  bottom: 4.h),
                                              child: Text("Doctor Details".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikMedium18))
                                        ]))),
                            Container(
                              width: 335.00.w,
                              margin: EdgeInsets.only(
                                left: 7.w,
                                top: 12.h,
                              ),
                              padding: EdgeInsets.only(
                                left: 6.w,
                                top: 18.h,
                                right: 6.w,
                                bottom: 18.h,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  8.00.r,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstant.black90014,
                                    spreadRadius: 2.00.r,
                                    blurRadius: 2.00.r,
                                    offset: Offset(
                                      0,
                                      0,
                                    ),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          url: special?.user?.avatar ??
                                              'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740',
                                          height: 87.00.h,
                                          width: 92.00.w,
                                          radius: BorderRadius.circular(
                                            8.00.r,
                                          ),
                                          margin: EdgeInsets.only(
                                            bottom: 1.h,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 12.w,
                                            top: 1.h,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 85.00.h,
                                                width: 206.00.w,
                                                child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            special?.user
                                                                    ?.username ??
                                                                'Othman othman',
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray900,
                                                              fontSize: 18.sp,
                                                              fontFamily:
                                                                  'Rubik',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 5.h,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: special
                                                                            ?.medicalType ??
                                                                        'Dental / ',
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .bluegray500,
                                                                      fontSize:
                                                                          14.00
                                                                              .sp,
                                                                      fontFamily:
                                                                          'Rubik',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: special
                                                                            ?.type ??
                                                                        'Dental',
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .bluegray500,
                                                                      fontSize:
                                                                          14.00
                                                                              .sp,
                                                                      fontFamily:
                                                                          'Rubik',
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
                                                                          .bluegray500,
                                                                      fontSize:
                                                                          14.00
                                                                              .sp,
                                                                      fontFamily:
                                                                          'Rubik',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                          Container(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 5.h,
                                                              // right: 22.w,
                                                            ),
                                                            height: 20.h,
                                                            child: RatingBar
                                                                .builder(
                                                              ignoreGestures:
                                                                  false,
                                                              itemSize: 15.0,
                                                              initialRating: special
                                                                      ?.rattingScore
                                                                      ?.starsAvg ??
                                                                  0,
                                                              minRating: 0,
                                                              direction: Axis
                                                                  .horizontal,
                                                              allowHalfRating:
                                                                  true,
                                                              itemCount: 5,
                                                              itemPadding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4.0),
                                                              itemBuilder:
                                                                  (context,
                                                                          _) =>
                                                                      Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .amber,
                                                              ),
                                                              onRatingUpdate:
                                                                  (rating) {
                                                                print(rating);
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Consumer<AuthProvider>(
                                                      builder: (context , provider , x) {
                                                        return IconButton(
                                                          iconSize: 20,
                                                          icon: special!.Fav == true
                                                              ? Icon(
                                                                  Icons.favorite,
                                                                  color: Colors.red,
                                                                )
                                                              : Icon(Icons
                                                                  .favorite_border),
                                                          onPressed: () {
                                                            setState(() async{
                                                              // _FavouriteSpecialistsScreenState.Fav_List.removeAt(index);
                                                              // del(Fav_List);
                                                              // Fav_List.removeWhere((element) => element.id == 21);
                                                              if (special!.Fav ==
                                                                  true) {
                                                                special!.Fav =
                                                                    false;
                                                                          EasyLoading.show(status: 'Loading......') ;
                                      await provider
                                          .fav_comp(special!.id.toString());
                                           EasyLoading.dismiss() ; 
                                                              } else {
                                                                special!.Fav = true;
                                                                      EasyLoading.show(status: 'Loading......') ;
                                      await provider
                                          .fav_comp(special!.id.toString());
                                           EasyLoading.dismiss() ; 
                                                                
                                                              }
                                                              DioHelper.diohelper.postfav(
                                                                  Provider.of<AuthProvider>(
                                                                          context,
                                                                          listen:
                                                                              false)
                                                                      .user_api
                                                                      .id
                                                                      .toString(),
                                                                  special!.id
                                                                      .toString());
                                                            });
                                                          },
                                                        );
                                                      }
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10.h,
                                                    right: 22.w,
                                                    bottom: 10.h),
                                                child: Text(
                                                  "Available ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.tealA700,
                                                    fontSize: 13.00.sp,
                                                    fontFamily: 'Rubik',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    onTap: () {
                                      Get.to(ThreeScreen_new(
                                          special!.id.toString()));
                                      // Get.toNamed(AppRoutes.doctorScreen);
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => FavouriteSpecialistsScreen(),
                                      //   ),
                                      // );
                                    },
                                    height: 32.h,
                                    width: 200.w,
                                    text: "Appointment  Now",
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 1.w,
                                top: 29.h,
                              ),
                              padding: EdgeInsets.only(
                                left: 1.h,
                                right: 1.h,
                              ),
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 19.h,
                                      bottom: 19.h,
                                      left: 19.w,
                                      right: 19.w,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.indigoA4000f,
                                      borderRadius: BorderRadius.circular(
                                        45.00.r,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 48.00.h,
                                          width: 52.00.w,
                                          margin: EdgeInsets.only(
                                            top: 2.h,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.00.h,
                                                  width: 52.00.w,
                                                  decoration: BoxDecoration(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  "Patients",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 14.00,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "100+",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 18.00.sp,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 19.h,
                                      bottom: 19.h,
                                      left: 19.w,
                                      right: 19.w,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.indigoA4000f,
                                      borderRadius: BorderRadius.circular(
                                        45.00.r,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 48.00.h,
                                          width: 52.00.w,
                                          margin: EdgeInsets.only(
                                            top: 2.h,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.00.h,
                                                  width: 52.00.w,
                                                  decoration: BoxDecoration(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  "Experience",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 10.00,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "10 yr",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 18.00.sp,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: 19.h,
                                      bottom: 19.h,
                                      left: 19.w,
                                      right: 19.w,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.indigoA4000f,
                                      borderRadius: BorderRadius.circular(
                                        45.00.r,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 48.00.h,
                                          width: 52.00.w,
                                          margin: EdgeInsets.only(
                                            top: 2.h,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: 46.00.h,
                                                  width: 52.00.w,
                                                  decoration: BoxDecoration(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  "Rating",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 14.00.sp,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                  "4.67",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontSize: 18.00.sp,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 25.h,
                              ),
                              alignment: FractionalOffset.center,
                              child:
                                  // CustomImageView(//ddsds
                                  //   imagePath: ImageConstant.imgco,
                                  //   // height: 161.00.h,
                                  //   width: 318.00.w,
                                  //   radius: BorderRadius.circular(
                                  //     10.00.r,
                                  //   ),
                                  //   alignment: Alignment.center,
                                  // ),

                                  Consumer<AuthProvider>(
                                    builder: (context , provider , x) {
                                      return Row(
                                mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                children: [
                                      GestureDetector(
                                        onTap: () {
                                          print('jjj') ; 
                                        provider.chatting = special!.user!.email ;
                                          //dynamic a = special!.user ; 
                                          Get.to(taha_copy(special)) ;  
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => DoctorDetailsScreen(Doctor: Fav_List/* فقط للتذكر :) */,),
                                          //   ),
                                          // );
                                        },
                                        child: CustomImageView(
                                          //ddsds
                                          imagePath: ImageConstant.imgco1,
                                          height: 26.00.h,
                                          width: 26.00.w,
                                          radius: BorderRadius.circular(
                                            10.00.r,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () async{
                                        
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => DoctorDetailsScreen(Doctor: Fav_List/* فقط للتذكر :) */,),
                                          //   ),
                                          // );
                                        },
                                        child: CustomImageView(
                                          //ddsds
                                          imagePath: ImageConstant.imgco2,
                                          height: 26.00.h,
                                          width: 26.00.w,
                                          radius: BorderRadius.circular(
                                            10.00.r,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => DoctorDetailsScreen(Doctor: Fav_List/* فقط للتذكر :) */,),
                                          //   ),
                                          // );
                                        },
                                        child: CustomImageView(
                                          //ddsds
                                          imagePath: ImageConstant.imgco3,
                                          height: 26.00.h,
                                          width: 26.00.w,
                                          radius: BorderRadius.circular(
                                            10.00.r,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => DoctorDetailsScreen(Doctor: Fav_List/* فقط للتذكر :) */,),
                                          //   ),
                                          // );
                                        },
                                        child: CustomImageView(
                                          //ddsds
                                          imagePath: ImageConstant.imgco4,
                                          height: 26.00.h,
                                          width: 26.00.w,
                                          radius: BorderRadius.circular(
                                            10.00.r,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                ],
                              );
                                    }
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 7.w,
                                top: 25.h,
                              ),
                              child: Text(
                                "About",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.black9000f,
                                  fontSize: 17.00.sp,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.17,
                                ),
                              ),
                            ),
                            Container(
                              width: 289.00.w,
                              margin: EdgeInsets.only(
                                left: 7.w,
                                top: 15.h,
                              ),
                              child: Text(
                                "MBBS, Ph.D., Fellow, International College of Surgeons."
                                "\nEx- Professor & Head of Department"
                                "\r\nDepartment of Neurosurgery"
                                "\r\nDhaka Medical College & Hospital",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: ColorConstant.bluegray600,
                                  fontSize: 14.00.sp,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.14,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.only(
                                  left: 7.w,
                                  top: 10.h,
                                ),
                                color: ColorConstant.whiteA700,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.00.r,
                                  ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.only(
                                    top: 8.h,
                                    bottom: 8.h,
                                    left: 8.w,
                                    right: 8.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      10.00.r,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.black90014,
                                        spreadRadius: 2.00.r,
                                        blurRadius: 2.00.r,
                                        offset: Offset(
                                          0,
                                          0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        //ddsds
                                        imagePath:
                                            ImageConstant.imgRectangle523,
                                        height: 180.00.h,
                                        width: 318.00.w,
                                        radius: BorderRadius.circular(
                                          10.00.r,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 121.w,
                                            top: 10.h,
                                            right: 113.w,
                                          ),
                                          child: Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: 12.00.h,
                                                  width: 9.00.w,
                                                  margin: EdgeInsets.only(
                                                    right: 17.w,
                                                  ),
                                                ),
                                                Container(
                                                  height: 35.00.h,
                                                  width: 85.00.w,
                                                  margin: EdgeInsets.only(
                                                    top: 22.h,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu,
                                                        height: 35.00.h,
                                                        width: 100.00.w,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            bottom: 7.h,
                                                          ),
                                                          child: Text(
                                                            "Location",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .indigoA400,
                                                              fontSize:
                                                                  14.00.sp,
                                                              fontFamily:
                                                                  'Rubik',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ))));
  }

  onTapBtntf() {
    Get.back();
  }
}
