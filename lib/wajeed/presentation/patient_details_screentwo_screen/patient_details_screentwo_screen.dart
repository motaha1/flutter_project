import 'controller/patient_details_screentwo_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_radio_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const List<String> item = ['Nablus', 'Hebron', 'Ramallah'];
const List<String> item2 = ['Heart', 'Leg', 'Hand'];
const List<String> item3 = ['Distans', ' 2', ' 3'];

class PatientDetailsScreentwoScreen
    extends GetWidget<PatientDetailsScreentwoController> {
  static int Page = 0;

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
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.Background,
                                  height: 812.h,
                                  width: 375.w)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomAppBar(
                                        height: (56.h),
                                        leadingWidth: 50.w,
                                        leading: AppbarStack(
                                            margin: EdgeInsets.only(left: 20.w),
                                            onTap: onTapStackarrowleft),
                                        title: AppbarTitle(
                                            text: "lbl_patient_details".tr,
                                            margin:
                                                EdgeInsets.only(left: 19.w))),
                                    Container(
                                        margin: EdgeInsets.only(
                                            left: 20.w, top: 24.h, right: 20.w),
                                        decoration: AppDecoration
                                            .outlineBlack9000c
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 11,
                                                      bottom: 6,
                                                      right: 5,
                                                      left: 20),
                                                  child: Text("Step 2/2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Container(
                                                  height: (5.h),
                                                  width: (180.w),
                                                  margin: EdgeInsets.only(
                                                      left: 14,
                                                      top: 18,
                                                      bottom: 13,
                                                      right: 20),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Container(
                                                                height: (5.h),
                                                                width: (180.w),
                                                                decoration: BoxDecoration(
                                                                    color:
                                                                        ColorConstant
                                                                            .indigoA4004c,
                                                                    borderRadius:
                                                                        BorderRadius.circular((2
                                                                            .r))),
                                                                child: ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular((2
                                                                            .r)),
                                                                    child: LinearProgressIndicator(
                                                                        value:
                                                                            1,
                                                                        backgroundColor:
                                                                            ColorConstant
                                                                                .indigoA4004c,
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(ColorConstant.indigoA400))))),
                                                      ]))
                                            ])),
                                    Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(
                                            left: 20.w, top: 24.h, right: 20.w),
                                        decoration: AppDecoration
                                            .outlineBlack9000c
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 15.w,
                                                      top: 26.h,
                                                      right: 15.w),
                                                  child: Text("Date".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapRowdateone();
                                                      },
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 4.h,
                                                                  right: 5.w),
                                                          decoration: AppDecoration
                                                              .txtOutlineBluegray50028
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder12),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            4.w,
                                                                        top: 12
                                                                            .h,
                                                                        bottom: 12
                                                                            .h),
                                                                    child: Obx(() => Text(
                                                                        controller
                                                                            .patientDetailsScreentwoModelObj
                                                                            .value
                                                                            .dateOneTxt
                                                                            .value,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRubikLight14))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 12
                                                                            .h,
                                                                        right:
                                                                            6.w,
                                                                        bottom: 5
                                                                            .h),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCalendar,
                                                                        height: getSize(
                                                                            24.00),
                                                                        width: getSize(
                                                                            24.00)))
                                                              ])))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14,
                                                      top: 10,
                                                      right: 14,
                                                      bottom: 12),
                                                  child: Text("lbl_gender".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Obx(() => Row(children: [
                                                    CustomRadioButton(
                                                        text: "lbl_male".tr,
                                                        iconSize: 16,
                                                        value: controller
                                                            .patientDetailsScreentwoModelObj
                                                            .value
                                                            .radioList[0],
                                                        groupValue: controller
                                                            .radioGroup.value,
                                                        margin: EdgeInsets.only(
                                                            left: 20),
                                                        onChange: (value) {
                                                          controller.radioGroup
                                                              .value = value;
                                                        }),
                                                    CustomRadioButton(
                                                        text: "lbl_female".tr,
                                                        iconSize: 16,
                                                        value: controller
                                                            .patientDetailsScreentwoModelObj
                                                            .value
                                                            .radioList[1],
                                                        groupValue: controller
                                                            .radioGroup.value,
                                                        margin: EdgeInsets.only(
                                                            left: 40),
                                                        onChange: (value) {
                                                          controller.radioGroup
                                                              .value = value;
                                                        })
                                                  ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.w, right: 14.w),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("lbl_location".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium14),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      DropdownButtomLocation(),
                                                    ],
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 14.w,
                                                      top: 22.h,
                                                      right: 14.w),
                                                  child: Text(
                                                    "lbl_history_patient".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                  )),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.w,
                                                      top: 17.h,
                                                      right: 40.w),
                                                  child: Text(
                                                      "msg_what_is_the_mem".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 18.w,
                                                      top: 7.h,
                                                      right: 18.w),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        DropdownButtomH_Member_Suffer(),
                                                        Expanded(
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6.w,
                                                                      top:
                                                                          22.h),
                                                              child: Text(
                                                                  "The Number of selected member  1"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikLight12)),
                                                        )
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.w,
                                                      top: 29.h,
                                                      right: 19.w),
                                                  child: Text(
                                                      "What chronic illnesses do you have?"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.w,
                                                      top: 7.h,
                                                      right: 19.w),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        DropdownButtomH_Chronic_illesses(),
                                                        Expanded(
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6.w,
                                                                      top:
                                                                          22.h),
                                                              child: Text(
                                                                  "The Number of selected illnesses  1"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikLight12)),
                                                        )
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.w,
                                                      top: 10.h,
                                                      right: 19.w,
                                                      bottom: 12.h),
                                                  child: Text(
                                                      "Do you suffer from allergies?"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium14)),
                                              Obx(() => Row(children: [
                                                    CustomRadioButton(
                                                        text: "Yes".tr,
                                                        iconSize: 16,
                                                        value: controller
                                                            .patientDetailsScreentwoModelObj
                                                            .value
                                                            .radioList1[0],
                                                        groupValue: controller
                                                            .radioGroup1.value,
                                                        margin: EdgeInsets.only(
                                                          left: 20.w,
                                                          bottom: 10.h,
                                                        ),
                                                        onChange: (value) {
                                                          controller.radioGroup1
                                                              .value = value;
                                                        }),
                                                    CustomRadioButton(
                                                        text: "No".tr,
                                                        iconSize: 16,
                                                        value: controller
                                                            .patientDetailsScreentwoModelObj
                                                            .value
                                                            .radioList1[1],
                                                        groupValue: controller
                                                            .radioGroup1.value,
                                                        margin: EdgeInsets.only(
                                                          left: 40.w,
                                                          bottom: 15.h,
                                                        ),
                                                        onChange: (value) {
                                                          controller.radioGroup1
                                                              .value = value;
                                                        })
                                                  ]))
                                            ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapButton();
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 20.w,
                                                top: 25.h,
                                                right: 20.w,
                                                bottom: 50.h),
                                            decoration: AppDecoration
                                                .fillIndigoA400
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          right: 120,
                                                          left: 120),
                                                      child: Text("Continue".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOverpassBold24WhiteA700)),
                                                ])))
                                  ]))
                        ]))))));
  }

  onTapStackarrowleft() {
    Get.toNamed(AppRoutes.patientDetailsScreenoneScreen);
  }

  Future<void> onTapRowdateone() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate:
            controller.patientDetailsScreentwoModelObj.value.selectedDateOneTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.patientDetailsScreentwoModelObj.value.selectedDateOneTxt =
          dateTime;
      controller.patientDetailsScreentwoModelObj.value.dateOneTxt.value =
          dateTime.format(DD_MM_YYYY);
    }
  }

  onTapButton() {
    Page = 2; //userPatient
    Get.toNamed(AppRoutes.verifyOtpScreen);
  }
}

////ComboBox 1
class DropdownButtomLocation extends StatefulWidget {


  @override
  State<DropdownButtomLocation> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtomLocation> {
  String dropdownValue = item.first;

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
          dropdownValue = value!;
        });
      },
      items: item.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

////ComboBox 2
class DropdownButtomH_Member_Suffer extends StatefulWidget {


  @override
  State<DropdownButtomH_Member_Suffer> createState() =>
      _DropdownButtonExampleState2();
}

class _DropdownButtonExampleState2
    extends State<DropdownButtomH_Member_Suffer> {
  String dropdownValue = item2.first;

  @override
  Widget build(BuildContext context) {
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
          dropdownValue = value!;
        });
      },
      items: item2.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

////ComboBox 3
class DropdownButtomH_Chronic_illesses extends StatefulWidget {


  @override
  State<DropdownButtomH_Chronic_illesses> createState() =>
      _DropdownButtonExampleState3();
}

class _DropdownButtonExampleState3
    extends State<DropdownButtomH_Chronic_illesses> {
  String dropdownValue = item3.first;

  @override
  Widget build(BuildContext context) {
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
          dropdownValue = value!;
        });
      },
      items: item3.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
