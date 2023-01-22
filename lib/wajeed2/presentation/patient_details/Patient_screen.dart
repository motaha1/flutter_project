import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/core/utils/image_constant.dart';
import 'package:final_grad_proj/wajeed2/presentation/spacialist_screen_details/date.dart';
import 'package:final_grad_proj/wajeed2/theme/app_style.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import "package:final_grad_proj/wajeed2/core/app_export.dart";
import 'package:final_grad_proj/wajeed2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_text_form_field.dart';
import 'package:final_grad_proj/widgets/custom_icon_button.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


import 'UserUpdate.dart';

class patientScreen extends StatelessWidget {
  TextEditingController firstNameLastController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController dDMMYYYYController = TextEditingController();

  TextEditingController LocationController = TextEditingController();

  TextEditingController CertificatesController = TextEditingController();
  TextEditingController GenderController = TextEditingController();
  TextEditingController SpecialtyController = TextEditingController();
  TextEditingController BloodGroupController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Rx<PatientDetailsScreentwoModel> patientDetailsScreentwoModelObj =
      PatientDetailsScreentwoModel().obs;

  RxString radioGroup = "".obs;

  static List<String> itemL = ['Nablus', 'Hebron', 'Ramallah'];
 
  static List<String> itemS = [
    'flu',
    'Covid',
    'Dental caries',
    'cancer',
    'arteries'
  ];
  static List<String> itemB = ['-O', '+O', '-A', '+A', '-B', '+B', 'AB'];

  String Name = "";
  String Phone = "";

  static String Birthday = " ";
  static String Location = "";
  String Gender = "";
  static String History = "";
  static String BloodGroup = "";

  @override
  Widget build(BuildContext context) {
    // Birthday = patientDetailsScreentwoModelObj.value.dateOneTxt.value.toString();
    return SafeArea(
        child: Scaffold(
            // backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Container(
                          width: size.width,
                          child: Consumer<AuthProvider>(
                            builder: (context , provider , x) {
                              return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: size.width,
                                        padding: EdgeInsets.only(
                                            top: 30.h, bottom: 30.h),
                                        decoration: AppDecoration.fillIndigoA400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL30),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomAppBar(
                                                  height: getVerticalSize(56.00),
                                                  leadingWidth: 50,
                                                  leading: CustomIconButton(
                                                      height: 30.h,
                                                      width: 30.w,
                                                      margin: EdgeInsets.only(
                                                          left: 20.w),
                                                      onTap: () {
                                                        onTapBtnArrowleft(context);
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft)),
                                                  title: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 19.w),
                                                      child: Text("Profile",
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtOverpassBold24
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 35.h),
                                                  child: Text("Set up your profile",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOverpassBold24
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 12.h),
                                                  child: Text(
                                                      "You can modify information with ease.",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoBold14
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.41)))),
                                              Container(
                                                  height: (100.h),
                                                  width: (100.w),
                                                  margin:
                                                      EdgeInsets.only(top: 30.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CommonImageView(
                                                          url:
                                                              provider?.user_api?.user?.avatar ?? 'https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20shirt,%20hairstyle_md.png',
                                                          height: (100.h),
                                                          width: (100.w),
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons
                                                                .camera_alt_rounded,
                                                            color: Colors.white,
                                                            size: 25,
                                                          ),
                                                          onPressed: () {
                                                            //Get.toNamed(AppRoutes.homeContainerScreen);
                                                          },
                                                        ),
                                                      ]))
                                            ])),
                                    Container(
                                        width: size.width,
                                        margin: EdgeInsets.only(top: 14.h),
                                        decoration: AppDecoration.fillGray50,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 20.w),
                                                  child: Text(
                                                      "Personal information",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium18
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))),
                                              Container(
                                                  height: (400.h),
                                                  width: size.width,
                                                  margin:
                                                      EdgeInsets.only(top: 12.h),
                                                  child: SingleChildScrollView(
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topCenter,
                                                          children: [
                                                        Align(
                                                            alignment:
                                                                Alignment.topCenter,
                                                            child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                        left: 20.w,
                                                                        right:
                                                                            20.w),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                          padding:
                                                                              EdgeInsets
                                                                                  .only(
                                                                            left: 20
                                                                                .w,
                                                                            bottom:
                                                                                3.h,
                                                                          ),
                                                                          child: Text(
                                                                              "Full Name",
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style: AppStyle
                                                                                  .txtRubikMedium14
                                                                                  .copyWith(height: getVerticalSize(1.00)))),
                                                                      CustomTextFormField(
                                                                          width:
                                                                              335.w,
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          controller:
                                                                              firstNameLastController,
                                                                          hintText:
                                                                              provider.user_api?.user?.username ??'Mohammad Taha',
                                                                          suffix:
                                                                              Container(
                                                                            child:
                                                                                IconButton(
                                                                              icon:
                                                                                  Icon(
                                                                                Icons.edit,
                                                                                color: Color.fromARGB(
                                                                                    103,
                                                                                    43,
                                                                                    148,
                                                                                    1),
                                                                                size:
                                                                                    25,
                                                                              ),
                                                                              onPressed:
                                                                                  () {
                                                                                //firstNameLastController.
                                                                              },
                                                                            ),
                                                                          ),
                                                                          validator:
                                                                              (value) {
                                                                            Name = value
                                                                                .toString();
                                                                            return null;
                                                                          }),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 20
                                                                                  .w,
                                                                              bottom: 1
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child: Text(
                                                                              "Phone",
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style: AppStyle
                                                                                  .txtRubikMedium14
                                                                                  .copyWith(height: getVerticalSize(1.00)))),
                                                                      CustomTextFormField(
                                                                          width:
                                                                              335,
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          controller:
                                                                              mobileNoController,
                                                                          hintText:
                                                                              provider.user_api?.user?.mobile ??'0599389138',
                                                                          margin: EdgeInsets.only(
                                                                              top: 3
                                                                                  .h),
                                                                          suffix:
                                                                              Container(
                                                                            child:
                                                                                IconButton(
                                                                              icon:
                                                                                  Icon(
                                                                                Icons.edit,
                                                                                color: Color.fromARGB(
                                                                                    103,
                                                                                    43,
                                                                                    148,
                                                                                    1),
                                                                                size:
                                                                                    25,
                                                                              ),
                                                                              onPressed:
                                                                                  () {
                                                                                //Get.toNamed(AppRoutes.homeContainerScreen);
                                                                              },
                                                                            ),
                                                                          ),
                                                                          validator:
                                                                              (value) {
                                                                            Phone =
                                                                                value.toString();
                                                                            return null;
                                                                          }),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 20
                                                                                  .w,
                                                                              bottom: 1
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child: Text(
                                                                              "Email",
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style: AppStyle
                                                                                  .txtRubikMedium14
                                                                                  .copyWith(height: getVerticalSize(1.00)))),
                                                                      CustomTextFormField(
                                                                          width:
                                                                              335,
                                                                          focusNode:
                                                                              FocusNode(),
                                                                          controller:
                                                                              emailController,
                                                                          hintText:
                                                                              provider.user_api?.user?.email ??'hellopatient@gmail.com',
                                                                          margin: EdgeInsets.only(
                                                                              top: 3
                                                                                  .h),
                                                                          suffix:
                                                                              Container(
                                                                            child:
                                                                                IconButton(
                                                                              icon:
                                                                                  Icon(
                                                                                Icons.edit,
                                                                                color: Color.fromARGB(
                                                                                    103,
                                                                                    43,
                                                                                    148,
                                                                                    1),
                                                                                size:
                                                                                    25,
                                                                              ),
                                                                              onPressed:
                                                                                  () {
                                                                                //Get.toNamed(AppRoutes.homeContainerScreen);
                                                                              },
                                                                            ),
                                                                          ),
                                                                          validator:
                                                                              (value) {
                                                                            //   email = value.toString();
                                                                            return null;
                                                                          }),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 20
                                                                                  .w,
                                                                              bottom: 1
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child: Text(
                                                                              "Birthday Date",
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style: AppStyle
                                                                                  .txtRubikMedium14
                                                                                  .copyWith(height: getVerticalSize(1.00)))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment
                                                                                  .center,
                                                                          child: GestureDetector(
                                                                              onTap: () {
                                                                                onTapRowdateone();
                                                                              },
                                                                              child: Container(
                                                                                  margin: EdgeInsets.only(
                                                                                    //left: 14.w,
                                                                                    top: 4.h,
                                                                                    //right: 5.w
                                                                                  ),
                                                                                  decoration: AppDecoration.txtOutlineBluegray50028.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                    Padding(padding: EdgeInsets.only(left: 15.w, top: 12.h, bottom: 12.h), child: Obx(() => Text(patientDetailsScreentwoModelObj.value.dateOneTxt.value, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight14))),
                                                                                    Padding(padding: EdgeInsets.only(top: 12.h, right: 6.w, bottom: 12.h), child: CommonImageView(svgPath: ImageConstant.imgCalendar, height: getSize(24.00), width: getSize(24.00)))
                                                                                  ])))),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 14
                                                                                  .w,
                                                                              top: 10
                                                                                  .h,
                                                                              right: 14
                                                                                  .w,
                                                                              bottom: 12
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_gender"
                                                                                  .tr,
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style:
                                                                                  AppStyle.txtRubikMedium14)),
                                                                      Obx(() => Row(
                                                                              children: [
                                                                                CustomRadioButton(
                                                                                    text: "lbl_male".tr,
                                                                                    iconSize: 16,
                                                                                    value: patientDetailsScreentwoModelObj.value.radioList[0],
                                                                                    groupValue: radioGroup.value,
                                                                                    margin: EdgeInsets.only(left: 20.w, bottom: 10.h),
                                                                                    onChange: (value) {
                                                                                      radioGroup.value = value;
                                                                                    }),
                                                                                CustomRadioButton(
                                                                                    text: "lbl_female".tr,
                                                                                    iconSize: 16,
                                                                                    value: patientDetailsScreentwoModelObj.value.radioList[1],
                                                                                    groupValue: radioGroup.value,
                                                                                    margin: EdgeInsets.only(left: 40.w, bottom: 15.h),
                                                                                    onChange: (value) {
                                                                                      radioGroup.value = value;
                                                                                    })
                                                                              ])),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 14
                                                                                  .w,
                                                                              right: 14
                                                                                  .w,
                                                                              bottom: 10
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                  "lbl_location".tr,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: AppStyle.txtRubikMedium14),
                                                                              SizedBox(
                                                                                width:
                                                                                    10.w,
                                                                              ),
                                                                              DropdownButtomLocation(),
                                                                            ],
                                                                          )),
                                                                      // Padding(
                                                                      //     padding: EdgeInsets.only(
                                                                      //         left: 14
                                                                      //             .w,
                                                                      //         right: 14
                                                                      //             .w,
                                                                      //         bottom: 10
                                                                      //             .h,
                                                                      //         top: 10
                                                                      //             .h),
                                                                      //     child:
                                                                      //         Row(
                                                                      //       mainAxisAlignment:
                                                                      //           MainAxisAlignment.start,
                                                                      //       crossAxisAlignment:
                                                                      //           CrossAxisAlignment.center,
                                                                      //       children: [
                                                                      //         Text(
                                                                      //             "Certificates",
                                                                      //             overflow: TextOverflow.ellipsis,
                                                                      //             textAlign: TextAlign.left,
                                                                      //             style: AppStyle.txtRubikMedium14),
                                                                      //         SizedBox(
                                                                      //           width:
                                                                      //               10.w,
                                                                      //         ),
                                                                      //         DropdownButtomCertificates(),
                                                                      //       ],
                                                                      //     )),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 14
                                                                                  .w,
                                                                              right: 14
                                                                                  .w,
                                                                              bottom: 10
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                  "Patient History",
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: AppStyle.txtRubikMedium14),
                                                                              SizedBox(
                                                                                width:
                                                                                    10.w,
                                                                              ),
                                                                              DropdownButtomPatientH(),
                                                                            ],
                                                                          )),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 14
                                                                                  .w,
                                                                              right: 14
                                                                                  .w,
                                                                              bottom: 10
                                                                                  .h,
                                                                              top: 10
                                                                                  .h),
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Text(
                                                                                  " Blood Group",
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: AppStyle.txtRubikMedium14),
                                                                              SizedBox(
                                                                                width:
                                                                                    10.w,
                                                                              ),
                                                                              DropdownButtomBloodG(),
                                                                            ],
                                                                          )),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment
                                                                                  .bottomCenter,
                                                                          child: Container(
                                                                              height: (120.h),
                                                                              width: size.width,
                                                                              child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                CustomButton(
                                                                                  width: 262.w,
                                                                                  text: "Update",
                                                                                  margin: EdgeInsets.only(bottom: 30.h),
                                                                                  shape: ButtonShape.RoundedBorder28,
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  onTap: () => {
                                                                                    onTapBtnUpdate()},
                                                                                  
                                                                                ),
                                                                              ])))
                                                                    ]))),
                                                      ]))),
                                            ]))
                                  ]);
                            }
                          ),
                        ))))));
  }

  onTapBtnUpdate() async{
    Gender = radioGroup.value.toString();

    UserUpdate user = UserUpdate(
      Gender: Gender,
      BloodGroup: BloodGroup,
      Birthday: Birthday,
     
      Location: Location,
      Name: Name,
      Phone: Phone,
      History: History 
    );
    EasyLoading.show(status: 'Loading ....') ; 
    await Future.delayed(Duration(seconds: 1)) ; 
    EasyLoading.showSuccess('its save!') ; 
    EasyLoading.dismiss() ; 
    
  }

  Future<void> onTapRowdateone() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: patientDetailsScreentwoModelObj.value.selectedDateOneTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      patientDetailsScreentwoModelObj.value.selectedDateOneTxt = dateTime;
      patientDetailsScreentwoModelObj.value.dateOneTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }

  onTapBtnArrowleft(BuildContext context) {
    // Navigator.pop(context);
    Get.toNamed(AppRoutes.Specialist_screen);
  }
}

/////DropdownButtomPatientH
class DropdownButtomPatientH extends StatefulWidget {


  @override
  State<DropdownButtomPatientH> createState() =>
      DropdownButtonExampleStatespecialty();
}

class DropdownButtonExampleStatespecialty
    extends State<DropdownButtomPatientH> {
  String dropdownValue = patientScreen.itemS.first;

  @override
  Widget build(BuildContext context) {
    //textfirst = itemN.first;
    return DropdownButton<String>(
      value: dropdownValue,
      //icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 71, 179, 241)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 71, 179, 241),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          patientScreen.History = value!;
          dropdownValue = value!;
        });
      },
      items:
          patientScreen.itemS.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}



/////DropdownButtomBloodG
class DropdownButtomBloodG extends StatefulWidget {


  @override
  State<DropdownButtomBloodG> createState() =>
      DropdownButtonExampleStateBloodG();
}

class DropdownButtonExampleStateBloodG extends State<DropdownButtomBloodG> {
  String dropdownValue = patientScreen.itemB.first;

  @override
  Widget build(BuildContext context) {
    //textfirst = itemN.first;
    return DropdownButton<String>(
      value: dropdownValue,
      //icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 71, 179, 241)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 71, 179, 241),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          patientScreen.BloodGroup = value!;
          dropdownValue = value!;
        });
      },
      items:
          patientScreen.itemB.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/////DropdownButtomLocation
class DropdownButtomLocation extends StatefulWidget {


  @override
  State<DropdownButtomLocation> createState() =>
      DropdownButtonExampleStateLocation();
}

class DropdownButtonExampleStateLocation extends State<DropdownButtomLocation> {
  String dropdownValue = patientScreen.itemL.first;

  @override
  Widget build(BuildContext context) {
    //textfirst = itemN.first;
    return DropdownButton<String>(
      value: dropdownValue,
      //icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 71, 179, 241)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 71, 179, 241),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          patientScreen.Location = value!;
          dropdownValue = value!;
        });
      },
      items:
          patientScreen.itemL.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}