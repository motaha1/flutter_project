import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/mustafa/presentation/search_doctors_screen/search_doctors_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
import '../Doctor.dart';
import '../doctor_details_screen/doctor_details_screen.dart';
import '../doctor_screen/widgets/listrectangle506_item_widget.dart';
import '../doctor_screen/widgets/rocmmenddoctor_item_widget.dart';
import 'controller/doctor_controller.dart';
import 'models/listrectangle506_item_model.dart';
import 'models/rocmmenddoctor_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({required this.from});

  final int
      from; //هون اول ما يفوت حسب الرقم من 1-5 بجيب الداتا من الداتا بيس وبحطها بالليست

  @override
  State<DoctorScreen> createState() => _DoctorScreenState(from: from);
}

class _DoctorScreenState extends State<DoctorScreen> {
  // _DoctorScreenState (){

  // }
  List<ListFavItemModel> cat_doctorList = [
    ListFavItemModel("Mustafa", "fffffffff", "", 5, true),
    ListFavItemModel("Mohammed", "hhhhhhhhh", "", 4.5, false),
    ListFavItemModel("Ali", "kkkkkkk", "", 3, true),
    ListFavItemModel("mustafa", "rrrrrrrrr", "", 2.5, false),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
  ];

  List<ListFavItemModel> recom_doctorList = [
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
  ];
  int? from;
  String? recommended;
  static List<SpecialistProfile>? x;
  static adddoctor() async {
    x = await DioHelper.diohelper.alldoctors();
  }

  _DoctorScreenState({required this.from});

  @override
  Widget build(BuildContext context) {
    switch (from) {
      case 1:
        recommended = 'Recommended Doctor';
        break;
      case 2:
        recommended = 'Recommended Nurse';
        break;
      case 3:
        recommended = 'Recommended Physician';
        break;
      case 4:
        recommended = 'Recommended Baby care';
        break;
      case 5:
        recommended = 'Recommended Elderly care';
        break;
      default:
      // code block
    }
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CommonImageView(
                          imagePath: ImageConstant.imgBg,
                          height: getVerticalSize(812.00),
                          width: getHorizontalSize(375.00))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Consumer<AuthProvider>(
                          builder: (context, provider, x) {
                        return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 36.h, right: 10.w),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w,
                                                        right: 20.w),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 30.h,
                                                              width: 30.w,
                                                              onTap: () {
                                                                onTapBtntf();
                                                              },
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleftBluegray500)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 6.h,
                                                                      bottom:
                                                                          6.h),
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    onTapImgSearch();
                                                                  },
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgSearchBluegray500,
                                                                      height:
                                                                          18.00
                                                                              .h,
                                                                      width: 18.00
                                                                          .w)))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 25.h,
                                                    right: 1.w,
                                                    bottom: 15.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(recommended!.tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium18),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5.h,
                                                                  bottom: 2.h,
                                                                  right: 7.w),
                                                          child:
                                                          
                                                          
                                                           Consumer<AuthProvider>(
                                                             builder: (context , provider , x) {
                                                               return Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_see_all"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRubikLight10),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left:
                                                                                2.w,
                                                                            top:
                                                                                3.h,
                                                                            bottom: 2
                                                                                .h),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant
                                                                                    .imgArrowright,
                                                                            height:
                                                                                10.00
                                                                                    .h,
                                                                            width: 5.00
                                                                                .w))
                                                                  ]);
                                                             }
                                                           ))
                                                    ]))),
                                      ])),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      height: 225.00.h,
                                      width: 400.00.w,
                                      child: 
                                      provider.rec_via_type ==null ? Text('nothing') :
                                      
                                      ListView.builder(
                                        padding: EdgeInsets.only(
                                            left: 15.w,
                                            bottom: 0.h,
                                            right: 20.w),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: provider.rec_via_type!.length,
                                        // itemBuilder: (context,index) => cat_doctor();
                                        itemBuilder: (context, index) {
                                          return rec_doctor(
                                              provider.rec_via_type![index]);
                                        },
                                      ))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.w,
                                      top: 15.h,
                                      right: 285.w,
                                      bottom: 15.h),
                                  child: Text("lbl_category".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style: AppStyle.txtRubikMedium18)),
                              Expanded(
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: SingleChildScrollView(
                                          child: Container(
                                              height:
                                                  135 * cat_doctorList.length.h,
                                              width: 518.w,
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15.w,
                                                                    top: 10.h,
                                                                    right: 5.w,
                                                                    bottom: 2),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  provider.specialtypelist ==
                                                                          null
                                                                      ? Text(
                                                                          'error')
                                                                      : ListView.builder(
                                                                          physics: NeverScrollableScrollPhysics(),
                                                                          shrinkWrap: true,
                                                                          itemCount: provider.specialtypelist!.length,
                                                                          itemBuilder: (context, index) {
                                                                            return cat_doctor(provider.specialtypelist![index]);
                                                                          }),
                                                                ]))),
                                                  ])))))
                            ]);
                      }))
                ]))));
  }

  onTapBtntf()  {


    Get.back();
  }

  onTapImgSearch() async {

        Provider.of<AuthProvider>(context, listen: false).city = '';
    Provider.of<AuthProvider>(context, listen: false).home = '';
    Provider.of<AuthProvider>(context, listen: false).type = '';

    await Provider.of<AuthProvider>(context, listen: false).getsearchdoctor();
    Get.to(SearchDoctorsScreen());
    //Get.toNamed(AppRoutes.searchDoctorsScreen);
  }

  Widget cat_doctor(SpecialistProfile special) => GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.doctorScreen);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorDetailsScreen(
                Doctor: special /* فقط للتذكر :) */,
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 7.0.h,
            right: 3.w,
            bottom: 7.0.h,
          ),
          decoration: AppDecoration.outlineBlack900141.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 9.w, top: 11.h, bottom: 11.h, right: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.00.r),
                  child: CommonImageView(
                    url: special.user?.avatar ??
                        'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740',
                    height: 82.00.h,
                    width: 82.00.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 72.00.h,
                width: 230.00.w,
                margin: EdgeInsets.only(
                  left: 15.w,
                  top: 16.h,
                  right: 5.w,
                  bottom: 16.h,
                ),
                child: Stack(
                  // alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 3.w,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                right: 10.w,
                              ),
                              child: Text(
                                special.user?.username ?? 'Mohammad Taha',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRubikMedium18,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 5.h, right: 10.w, bottom: 5.h),
                              child: Text(
                                special.medicalType ?? 'Dental',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRubikLight14,
                              ),
                            ),
                            Expanded(
                              child: RatingBar.builder(
                                itemSize: 20.0,
                                initialRating: special.rattingScore!.starsAvg,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(
                            // left: 50.w,
                            right: 0.w,
                            bottom: 60.h,
                          ),
                          child: IconButton(
                            iconSize: 20,
                            icon: special.Fav == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(Icons.favorite_border),
                            onPressed: () {
                              setState(() {
                                if (special.Fav == true)
                                  special.Fav = false;
                                else
                                  special.Fav = true;
                              });
                            },
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget rec_doctor(SpecialistProfile special) => GestureDetector(
        onTap: () {
          // Get.toNamed(AppRoutes.doctorScreen);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DoctorDetailsScreen(
          //       Doctor: recom_doctorList /* فقط للتذكر :) */,
          //     ),
          //   ),
          // );
        },
        child: IntrinsicWidth(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 20.w,
              ),
              decoration: AppDecoration.outlineBlack90014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.00.r),
                        topRight: Radius.circular(12.00.r),
                        bottomLeft: Radius.circular(2.00.r),
                        bottomRight: Radius.circular(2.00.r),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgRectangle508131X136,
                        height: 150.00.h,
                        width: 185.00.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        top: 5.h,
                        right: 21.w,
                      ),
                      child: Text(
                        special.user?.username ?? 'Othman Othman',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikMedium14,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 23.w,
                        top: 2.h,
                        right: 23.w,
                      ),
                      child: Text(
                        special.medicalType ??'Medicine',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikLight10,
                      ),
                    ),
                  ),
                  Container(
                    height: 25.h,
                    child: RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 15.0,
                      initialRating: special.rattingScore!.starsAvg,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
