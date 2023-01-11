// <<<<<<< HEAD
// import '../search_doctors_screen/widgets/listrectangle511_item_widget.dart';import 'controller/search_doctors_controller.dart';import 'models/listrectangle511_item_model.dart';import 'package:final_grad_proj/mustafa/core/app_export.dart';import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';import 'package:final_grad_proj/mustafa/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class SearchDoctorsScreen extends GetWidget<SearchDoctorsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray52, body: Container(width: size.width, child: SingleChildScrollView(child: Container(height: size.height, width: size.width, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerLeft, child: CommonImageView(imagePath: ImageConstant.imgBg, height: getVerticalSize(812.00), width: getHorizontalSize(375.00))), Align(alignment: Alignment.centerLeft, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(top: 36), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 30, width: 30, margin: getMargin(left: 20), onTap: () {onTapBtntf();}, child: CommonImageView(svgPath: ImageConstant.imgArrowleftBluegray500)), Padding(padding: getPadding(left: 19, top: 5, bottom: 4), child: Text("lbl_doctors".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikBold18Bluegray901))]))), CustomSearchView(width: 335, focusNode: FocusNode(), controller: controller.searchController, hintText: "lbl_search".tr, margin: getMargin(left: 20, top: 34, right: 20), prefix: Container(margin: getMargin(left: 20, top: 21, right: 12, bottom: 20), child: CommonImageView(svgPath: ImageConstant.imgSearch13X13)), prefixConstraints: BoxConstraints(minWidth: getSize(13.00), minHeight: getSize(13.00)), suffix: Padding(padding: EdgeInsets.only(right: getHorizontalSize(15.00)), child: IconButton(onPressed: controller.searchController.clear, icon: Icon(Icons.clear, color: Colors.grey.shade600))), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(11.00), minHeight: getVerticalSize(11.00))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 24, right: 20), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomButton(width: 51, text: "lbl_all".tr, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.RubikMedium14), CustomButton(width: 77, text: "lbl_nablus".tr, margin: getMargin(left: 10, bottom: 1), variant: ButtonVariant.FillTealA70014, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.RubikLight14, suffixWidget: Container(margin: getMargin(left: 10), child: CommonImageView(svgPath: ImageConstant.imgChevronRight))), Container(margin: getMargin(left: 9), decoration: AppDecoration.fillTealA70014.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(left: 16, top: 9, bottom: 10), child: Text("lbl_my_house".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight14IndigoA400)), Padding(padding: getPadding(left: 8, top: 7, right: 2, bottom: 23), child: CommonImageView(svgPath: ImageConstant.imgChevronRight, height: getVerticalSize(5.00), width: getHorizontalSize(10.00)))]))]))), Padding(padding: getPadding(left: 20, top: 24, right: 20, bottom: 2), child: Obx(() => ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: controller.searchDoctorsModelObj.value.listrectangle511ItemList.length, itemBuilder: (context, index) {Listrectangle511ItemModel model = controller.searchDoctorsModelObj.value.listrectangle511ItemList[index]; return Listrectangle511ItemWidget(model);})))]))])))))); }
// onTapBtntf() { Get.back(); }
// }
// =======
import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../search_doctors_screen/widgets/listrectangle511_item_widget.dart';
import 'controller/search_doctors_controller.dart';
import 'models/listrectangle511_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/mustafa/presentation/search_doctors_screen/models/search_doctors_model.dart';

class ListcategItemModel {
  final String Name;
  final String Specialist;
  final String img;
  final double Rating;
  bool Fav;

  ListcategItemModel(@required this.Name, @required this.Specialist,
      @required this.img, @required this.Rating, @required this.Fav);
}

class SearchDoctorsScreen extends StatefulWidget {
  @override
  State<SearchDoctorsScreen> createState() => _SearchDoctorsScreenState();
}

class _SearchDoctorsScreenState extends State<SearchDoctorsScreen> {
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? txt_cont = TextEditingController();
  // List <Listrectangle511ItemModel> listrectangle511ItemList_diplay = List.from(listrectangle511ItemList);

  List<ListcategItemModel> cat_doctorList = [
    ListcategItemModel("Mustafa", "fffffffff", "", 5, true),
    ListcategItemModel("Mohammed", "hhhhhhhhh", "", 4.5, false),
    ListcategItemModel("Ali", "kkkkkkk", "", 3, true),
    ListcategItemModel("mustafa", "rrrrrrrrr", "", 2.5, false),
    ListcategItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
  ];

  bool All = true;
  List<SpecialistProfile>? cat_doctorListSearch;
  String? value;
  String?value3 ; 
  var City = [
    'all',
    'nablus',
    'Jarusalem',
    'Jenen',
    'Ram-Allah',
    'Hebron',
    'Selfet',
    'BetLahem',
    'Areha',
    'TolKarem',
  ];


    var Type = [
      'all' , 
 'ALLERGY AND IMMUNOLOGY',
 'ANESTHESIOLOGY',
    'DERMATOLOGY',
  'DIAGNOSTIC RADIOLOGY',
   'EMERGENCY MEDICINE',
     'FAMILY MEDICINE',
     'INTERNAL MEDICINE',
    'MEDICAL GENETICS',
 'NEUROLOGY',
   'NUCLEAR MEDICINE',
    'OBSTETRICS AND GYNECOLOGY',
   'OPHTHALMOLOGY',
    'PATHOLOGY',
     'PEDIATRICS',
    'PHYSICAL MEDICINE AND REHABILITATION',
     'PREVENTIVE MEDICINE',
     'PSYCHIATRY',
    'RADIATION ONCOLOGY',
  'SURGERY',
     'UROLOGY',
   'OTHER',
  ];





  String? value2;
  var Where = ['all' ,'at home', 'at the clinic'];


//List<String>? type = Provider.of<AuthProvider>(context , listen: true).type ;  


  @override
  Widget build(BuildContext context) {
//List<String>? type = Provider.of<AuthProvider>(context , listen: true).type ;  

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray52,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
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
                                return Consumer<AuthProvider>(
                                    builder: (context, provider, x) {
                                  return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                margin:
                                                    EdgeInsets.only(top: 36.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                              svgPath: ImageConstant
                                                                  .imgArrowleftBluegray500)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.w,
                                                                  top: 5.h,
                                                                  bottom: 4.h),
                                                          child: Text(
                                                              "lbl_doctors".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikBold18Bluegray901))
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
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder:
                                                    InputBorder.none,
                                                hintText: 'Search here',
                                                contentPadding:
                                                    EdgeInsets.all(20)),
                                            onChanged: (value) {
                                              setState(() {
                                                cat_doctorListSearch = provider!
                                                    .searchdoctor!
                                                    .where((element) => element!
                                                        .user!.username!
                                                        .contains(
                                                            value /*.toLowerCase()*/))
                                                    .toList();
                                                if (txt_cont!.text.isNotEmpty &&
                                                    cat_doctorList!.length ==
                                                        0) {
                                                  print(
                                                      'foodListSearch length ${cat_doctorList!.length}');
                                                }
                                              });
                                            },
                                          ),
                                        ),

                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 24.h,
                                                    right: 20.w,
                                                    bottom: 20.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [

                                                      Expanded(
                                                        child: Container(
                                                          decoration: AppDecoration
                                                              .fillTealA70014
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6),
                                                          width: 135.w,
                                                          height: 50,
                                                          margin: EdgeInsets.only(
                                                              left: 10.w),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10.w),
                                                          child: Expanded(
                                                            child: DropdownButton(
                                                              // Initial Value
                                                              value: All == false
                                                                  ? value
                                                                  : null,
                                                              // Down Arrow Icon
                                                              icon: const Icon(Icons
                                                                  .keyboard_arrow_down),
                                                      
                                                              // Array list of items
                                                              items: City.map(
                                                                  (String City) {
                                                                return DropdownMenuItem(
                                                                  value: City,
                                                                  child: Text(
                                                                      City,
                                                                      style: AppStyle
                                                                          .txtRubikLight14IndigoA400),
                                                                );
                                                              }).toList(),
                                                              onChanged: (value) {
                                                                setState(
                                                                    () async {
                                                                  All = false;
                                                                  this.value = (value
                                                                      .toString());
                                                                  provider.city =
                                                                      value
                                                                          .toString();
                                                                                                                                              EasyLoading.show(status: 'loading...');
EasyLoading.show(status: 'loading...');

                                                                 await  provider.getsearchdoctor();
                                                                 EasyLoading.dismiss();

                                                                      
                                                                });
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: AppDecoration
                                                              .fillTealA70014
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6),
                                                          // color: Color(50),
                                                          width: 129.w,
                                                          height: 50,
                                                          margin: EdgeInsets.only(
                                                              left: 10.w),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10.w),
                                                          child: DropdownButton(
                                                            // Initial Value
                                                            value: value2,
                                                            // Down Arrow Icon
                                                            icon: const Icon(Icons
                                                                .keyboard_arrow_down),
                                                            // Array list of items
                                                            items: Where.map(
                                                                (String Where) {
                                                              return DropdownMenuItem(
                                                                value: Where,
                                                                child: Text(Where,
                                                                    style: AppStyle
                                                                        .txtRubikLight14IndigoA400),
                                                              );
                                                            }).toList(),
                                                            onChanged: (value) {
                                                              setState(() async{
                                                              
                                                                this.value2 = (value
                                                                    .toString());
                                                      
                                                                    provider.home = value.toString() ; 
                                                                    EasyLoading.show(status: 'loading...');
                                                                    await provider.getsearchdoctor() ; 
                                                                    EasyLoading.dismiss();

                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ]))),
 /////////////
// provider.type==null ?

SizedBox(height: 10,) , 
   Container(
     decoration: AppDecoration
         .fillTealA70014
         .copyWith(
             borderRadius:
                 BorderRadiusStyle
                     .roundedBorder6),
     // color: Color(50),
    
     margin: EdgeInsets.only(
         left: 10.w),
     padding:
         EdgeInsets.only(
             left: 10.w),
     child: DropdownButton(
       // Initial Value
       value :value3,
       // Down Arrow Icon
       icon: const Icon(Icons
           .keyboard_arrow_down),
       // Array list of items
       items: Type!.map(
           (String Type) {
         return DropdownMenuItem(
           value: Type,
           child: Text(Type,
           style: TextStyle(color: fromHex('#4157ff')),
              ),
         );
       }).toList(),
       onChanged: (value) {
         setState(()async {
           this.value3 = (value
               .toString());
               provider.type = value
               .toString() ; 
              EasyLoading.show(status: 'loading...');

               await provider.getsearchdoctor() ; 
               EasyLoading.dismiss();




                                             
              //  provider.home = value.toString() ; 
              // await provider.getsearchdoctor() ; 
         });
       },
     ),
    )  ,//: Text('Doctors') , 










 ///////////////
                                        // txt_cont!.text.isNotEmpty &&
                                        provider.searchdoctor!.length == 0
                                            ? Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      18.0),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Icon(
                                                          Icons.search_off,
                                                          size: 160,
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Text(
                                                          'No results found,\nPlease try different keyword',
                                                          style: TextStyle(
                                                              fontSize: 30,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.red),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            : Expanded(
                                                child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child:
                                                        SingleChildScrollView(
                                                            child: Container(
                                                                height: 135 *
                                                                    cat_doctorList
                                                                        .length
                                                                        .h,
                                                                width: 518.w,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: 15.w, top: 10.h, right: 5.w, bottom: 2),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                ListView.builder(
                                                                                    physics: NeverScrollableScrollPhysics(),
                                                                                    shrinkWrap: true,
                                                                                    itemCount: txt_cont!.text.isNotEmpty ? cat_doctorListSearch!.length : provider.searchdoctor!.length,
                                                                                    itemBuilder: (context, index) {
                                                                                      return cat_doctor(txt_cont!.text.isNotEmpty ? cat_doctorListSearch![index] : provider.searchdoctor![index]);
                                                                                    }),
                                                                              ]))),
                                                                    ])))))
                                      ]);
                                });
                              }))
                        ]))))));
  }

  Widget cat_doctor(SpecialistProfile special) => Container(
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
              padding:
                  EdgeInsets.only(left: 9.w, top: 11.h, bottom: 11.h, right: 0),
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
              height: 78.00.h,
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
                              special.user?.username ?? 'Othman Othman',
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
                          RatingBar.builder(
                            itemSize: 20.0,
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
      );

  // chang_drop_value(String newValue){
  //   setState(() {
  //     dropdownvalue = newValue!;
  //   });
  // }

  onTapBtntf() {
    Get.back();
  }
}
 Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }