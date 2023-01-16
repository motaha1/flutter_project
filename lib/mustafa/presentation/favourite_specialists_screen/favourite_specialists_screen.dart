import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/models/favr.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../Doctor.dart';
import '../doctor_details_screen/doctor_details_screen.dart';
import '../favourite_specialists_screen/widgets/gridfavorite_item_widget.dart';
import '../favourite_specialists_screen/widgets/listellipse141_six_item_widget.dart';
import 'controller/favourite_specialists_controller.dart';
import 'models/gridfavorite_item_model.dart';
import 'models/listellipse141_six_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FavouriteSpecialistsScreen extends StatefulWidget {
  @override
  State<FavouriteSpecialistsScreen> createState() =>
      _FavouriteSpecialistsScreenState();
}

class _FavouriteSpecialistsScreenState
    extends State<FavouriteSpecialistsScreen> {
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? txt_cont = TextEditingController();

  static List<ListFavItemModel> Fav_List = [
    ListFavItemModel("Mustafa", "fffffffff", "", 5, true),
    ListFavItemModel("Mohammed", "hhhhhhhhh", "", 4.5, false),
    ListFavItemModel("Ali", "kkkkkkk", "", 3, true),
    ListFavItemModel("Ali", "kkkkkkk", "", 3, true),
    ListFavItemModel("mustafa", "rrrrrrrrr", "", 2.5, false),
    ListFavItemModel("mustafa", "rrrrrrrrr", "", 2.5, false),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
    ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true)
  ];

  static List<Favr> Fav_ListSearch = [];
  bool homeIcon = false;
  bool favIcon = true;
  bool commentIcon = false;
  bool chatIcon = false;
  @override
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
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                      imagePath: ImageConstant.imgBg,
                                      height: 812.00.h,
                                      width: 375.00.w)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Consumer<AuthProvider>(
                                      builder: (context, provider, x) {
                                    return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  width: size.width,
                                                  margin: EdgeInsets.only(
                                                      top: 36.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 30.h,
                                                            width: 30.w,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 20.w),
                                                            onTap: () {
                                                              onTapBtntf();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleftBluegray500)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 19.w,
                                                                    top: 5.h,
                                                                    bottom:
                                                                        4.h),
                                                            child: Text(
                                                                "Favourite Specialists"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRubikMedium18))
                                                      ]))),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 20.w,
                                                right: 20.w,
                                                top: 10.h),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: TextField(
                                              controller: txt_cont,
                                              focusNode: _textFocusNode,
                                              cursorColor: Colors.black,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder:
                                                      InputBorder.none,
                                                  hintText: 'Search here',
                                                  contentPadding:
                                                      EdgeInsets.all(20)),
                                              onChanged: (value) {
                                                setState(() {
                                                  Fav_ListSearch = provider
                                                      .favspecial!
                                                      .where((element) => element
                                                          .specialist!
                                                          .user!
                                                          .username!
                                                          .contains(
                                                              value /*.toLowerCase()*/))
                                                      .toList();
                                                  if (txt_cont!
                                                          .text.isNotEmpty &&
                                                      Fav_List!.length == 0) {
                                                    print(
                                                        'foodListSearch length ${Fav_List!.length}');
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                          Expanded(
                                              child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: SingleChildScrollView(
                                                      child: Container(
                                                          height: 135 *
                                                              Fav_List.length.h,
                                                          width: 518.w,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(left: 15.w, top: 10.h, right: 5.w, bottom: 2),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          GridView.builder(
                                                                              shrinkWrap: true,
                                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 170.00.w, crossAxisCount: 2, mainAxisSpacing: 15.00.w, crossAxisSpacing: 15.00.h),
                                                                              physics: BouncingScrollPhysics(),
                                                                              itemCount: txt_cont!.text.isNotEmpty ? Fav_ListSearch!.length : provider.favspecial!.length,
                                                                              itemBuilder: (context, index) {
                                                                                // if Fav_List[index].Fav==true
                                                                                return fav_spic(txt_cont!.text.isNotEmpty ? Fav_ListSearch![index] : provider.favspecial![index], index);
                                                                              }),
                                                                        ]))),
                                                              ])))))
                                        ]);
                                  })),
                            ]))))));
  }

  Widget fav_spic(Favr Fav_List, int index) => GestureDetector(
        onTap: () {
          // Get.toNamed(AppRoutes.doctorScreen);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => DoctorDetailsScreen(
          //       Doctor: Fav_List.specialist /* فقط للتذكر :) */,
          //     ),
          //   ),
          // );
        },
        child: IntrinsicWidth(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(
                right: 15.w,
              ),
              decoration: AppDecoration.outlineBlack9000f1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child:
                        Consumer<AuthProvider>(builder: (context, provider, x) {
                      return Padding(
                          padding: EdgeInsets.only(
                            // left: 50.w,
                            right: 0.w,
                            bottom: 0.h,
                          ),
                          child: IconButton(
                            iconSize: 20,
                            icon: Fav_List.Fav == true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(Icons.favorite_border),
                            onPressed: () {
                              setState(() async {
                                Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .favspecial!
                                    .removeAt(index);
                                // del(Fav_List);
                                // Fav_List.removeWhere((element) => element.id == 21);
                                if (Fav_List.Fav == true) {
                                  Fav_List.Fav = false;

                                  EasyLoading.show(status: 'Loading......');
                                  await provider.fav_comp(
                                      Fav_List.specialist!.id.toString());
                                  EasyLoading.dismiss();
                                } else {
                                  Fav_List.Fav = true;

                                    EasyLoading.show(status: 'Loading......') ;
                                      await provider
                                          .fav_comp(Fav_List.specialist!.id.toString());
                                           EasyLoading.dismiss() ; 
                                }
                              });
                            },
                          ));
                    }),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 31.w,
                        top: 0.h,
                        right: 31.w,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          42.00.h,
                        ),
                        child: CommonImageView(
                          url :Fav_List.specialist!.user?.avatar ??
                                'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740' , 
                          height: 84.00.h,
                          width: 84.00.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      top: 0.h,
                      right: 10.w,
                    ),
                    child: Text(
                      Fav_List.specialist?.user?.username ?? 'Othman Othman',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRubikMedium15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      top: 0.h,
                      right: 5.w,
                      bottom: 5.h,
                    ),
                    child: Text(
                      Fav_List.specialist?.medicalType ?? 'Dental',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRubikRegular12IndigoA400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  onTapBtntf() {
    Get.back();
  }
}
