import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/bot.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/mustafa/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/favourite_specialists_screen/favourite_specialists_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_m_screen/notification_m_screen.dart';
import 'package:final_grad_proj/presentation/help_center_screen/controller/help_center_controller.dart';
import 'package:final_grad_proj/presentation/help_center_screen/help_center_screen.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/controller/privacy_policy_controller.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/settings_screen/settings_screen.dart';
import 'package:final_grad_proj/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed/presentation/login_screen/login_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient_Schedule/Patient_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/patient_details/Patient_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_image_view.dart';
import '../Doctor.dart';
import '../doctor_screen/doctor_screen.dart';
import '../home_page/widgets/specialist1_item_widget.dart';
import '../home_page/widgets/specialist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/specialist1_item_model.dart';
import 'models/specialist_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

List<ListFavItemModel> Fav_List = [
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

List<ListFavItemModel> pup_doctorList = [
  ListFavItemModel("Mustafa", "fffffffff", "", 5, true),
  ListFavItemModel("Mohammed", "hhhhhhhhh", "", 4.5, false),
  ListFavItemModel("Ali", "kkkkkkk", "", 3, true),
  ListFavItemModel("mustafa", "rrrrrrrrr", "", 2.5, false),
  ListFavItemModel("mustafa", "fffrrrrsdfsffffff", "", 5, true),
];

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController(HomeModel().obs));
  final _advancedDrawerController = AdvancedDrawerController();

  List<SpecialistProfile>? allspecial;
  _HomePageState() {
    void load_special() async {
      allspecial = await DioHelper.diohelper.getallspecial();
    }
  }
  //List <SpecialistProfile> allspecial = DioHelper.diohelper.getallspecial() ;

  @override
  Widget build(BuildContext context) {
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
      child: SafeArea(
        child: Scaffold(
          //           appBar: AppBar(
          //   //title: const Text('Advanced Drawer Example'),
          //   leading: IconButton(
          //     onPressed: _handleMenuButtonPressed,
          //     icon: ValueListenableBuilder<AdvancedDrawerValue>(
          //       valueListenable: _advancedDrawerController,
          //       builder: (_, value, __) {
          //         return AnimatedSwitcher(
          //           duration: Duration(milliseconds: 250),
          //           child: Icon(
          //             value.visible ? Icons.clear : Icons.menu,
          //             key: ValueKey<bool>(value.visible),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // ),
          backgroundColor: ColorConstant.gray50,
          body: Container(
            decoration: AppDecoration.fillGray50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 220.00.h,
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
                          decoration: AppDecoration.gradientIndigoA400IndigoA401
                              .copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL20,
                          ),
                          child: Consumer<AuthProvider>(
                              builder: (context, provider, x) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: size.width,
                                    margin: EdgeInsets.only(
                                      top: 20.h,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 25.w,
                                        right: 25.w,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              21.00.r,
                                            ),
                                            child: Expanded(
                                              child: InkWell(
                                                onTap: _handleMenuButtonPressed,
                                                child: CommonImageView(
                                                  url: Provider.of<
                                                                  AuthProvider>(
                                                              context)
                                                          .user_api
                                                          .user
                                                          .avatar ??
                                                      'https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20shirt,%20hairstyle_md.png',
                                                  height: 60.00.h,
                                                  width: 60.00.w,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 0.h,
                                              bottom: 0.h,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                IconButton(
                                                  icon: const Icon(
                                                    Icons.notifications,
                                                    color: Colors.white,
                                                  ),
                                                  onPressed: () async {
                                                    // Get.toNamed(AppRoutes
                                                    //     .notificationMScreen);
                                                    EasyLoading.show(
                                                        status: 'loading...');

                                                    await provider
                                                        .getnotification();
                                                    EasyLoading.dismiss();

                                                    Get.to(
                                                        NotificationMScreen());
                                                  },
                                                ),
                                                // CommonImageView(
                                                //   svgPath:
                                                //       ImageConstant.imgNotification,
                                                //   height: 24.00.h,
                                                //   width: 24.00.w,
                                                // ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 16.w,
                                                  ),
                                                  child: InkWell(
                                                      onTap: () async {
                                                        EasyLoading.show(
                                                            status:
                                                                'loading...');
                                                        await provider.getfav();
                                                        EasyLoading.dismiss();
                                                        Get.to(
                                                            FavouriteSpecialistsScreen());
                                                      },
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color: Colors.white,
                                                      )

                                                      // CommonImageView(
                                                      //   svgPath: ImageConstant
                                                      //       .imgGroup3637,
                                                      //   height: 24.00.h,
                                                      //   width: 24.00.w,
                                                      // ),
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
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 26.w,
                                      top: 23.h,
                                      right: 26.w,
                                    ),
                                    child: Text(
                                      Provider.of<AuthProvider>(context,
                                              listen: true)
                                          .user_api
                                          .user
                                          .username, //user name
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOverpassBold24WhiteA700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 26.w,
                                      top: 3.h,
                                      right: 26.w,
                                      bottom: 45.h,
                                    ),
                                    child: Text(
                                      "msg_looking_for_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOverpassLight16WhiteA700,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                      // CustomSearchView(
                      //   width: 327.w,
                      //   focusNode: FocusNode(),
                      //   controller: controller.group3620Controller,
                      //   hintText: "msg_search_for_your".tr,
                      //   margin: EdgeInsets.only(
                      //     left: 24.w,
                      //     top: 10.h,
                      //     right: 24.w,
                      //   ),
                      //   variant: SearchViewVariant.OutlineBlack90011,
                      //   shape: SearchViewShape.CircleBorder25,
                      //   fontStyle: SearchViewFontStyle.OverpassRegular13,
                      //   alignment: Alignment.bottomCenter,
                      //   prefix: Container(
                      //     margin: EdgeInsets.only(
                      //       left: 22.w,
                      //       top: 18.h,
                      //       right: 10.w,
                      //       bottom: 18.h,
                      //     ),
                      //     child: CommonImageView(
                      //       svgPath: ImageConstant.imgSearch,
                      //     ),
                      //   ),
                      //   prefixConstraints: BoxConstraints(
                      //     minWidth: 14.00.w,
                      //     minHeight: 14.00.h,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 20.h,
                        bottom: 5.h,
                      ),
                      child: Consumer<AuthProvider>(
                          builder: (context, provider, w) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 9.w,
                                right: 10.w,
                              ),
                              child: Text(
                                "lbl_top_categories".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOverpassSemiBold16,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 9.w,
                                  top: 8.h,
                                  right: 6.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      decoration: AppDecoration
                                          .outlineBlack9000c1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                              onTap: () async {
                                                provider.specialtype = 'DOCTOR';
                                                EasyLoading.show(
                                                    status: 'loading...');
                                                await provider.getspecialtype();
                                                await provider.rec_by_type();
                                                EasyLoading.dismiss();

                                                // Get.toNamed(AppRoutes.doctorScreen);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DoctorScreen(
                                                      from: 1,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.only(
                                                  left: 8.w,
                                                  top: 7.h,
                                                  right: 8.w,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25,
                                                ),
                                                child: Container(
                                                  height: 48.00.h,
                                                  width: 48.00.w,
                                                  decoration: AppDecoration
                                                      .gradientRed200PinkA100
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 12.h,
                                                                  bottom: 12.h,
                                                                  left: 12.w,
                                                                  right: 12.w),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgIconsaxbroken,
                                                            height: 24.00.h,
                                                            width: 24.00.w,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 11.w,
                                              top: 7.h,
                                              right: 11.w,
                                              bottom: 24.h,
                                            ),
                                            child: Text(
                                              "Doctor".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOverpassLight11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: AppDecoration
                                          .outlineBlack9000c1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () async {
                                              provider.specialtype = 'NURSE';
                                              EasyLoading.show(
                                                  status: 'loading...');
                                              await provider.getspecialtype();
                                              await provider.rec_by_type();
                                              print(provider.specialtypelist![0]
                                                  .user!.avatar);
                                              EasyLoading.dismiss();

                                              // Get.toNamed(AppRoutes.doctorScreen);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DoctorScreen(
                                                    from: 2,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.only(
                                                left: 8.w,
                                                top: 7.h,
                                                right: 8.w,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder25,
                                              ),
                                              child: Container(
                                                height: 48.00.h,
                                                width: 48.00.w,
                                                decoration: AppDecoration
                                                    .gradientTealA400TealA700
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 16.h,
                                                                bottom: 16.h,
                                                                left: 16.w,
                                                                right: 16.w),
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCut,
                                                          height: 16.00.h,
                                                          width: 15.00.w,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.w,
                                                top: 8.h,
                                                right: 15.w,
                                                bottom: 23.h,
                                              ),
                                              child: Text(
                                                "Nurse".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtOverpassLight11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: AppDecoration
                                          .outlineBlack9000c1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                              onTap: () async {
                                                provider.specialtype =
                                                    'PHYSICIAN';
                                                EasyLoading.show(
                                                    status: 'loading...');
                                                await provider.getspecialtype();
                                                await provider.rec_by_type();
                                                EasyLoading.dismiss();
                                                // Get.toNamed(AppRoutes.doctorScreen);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DoctorScreen(
                                                      from: 3,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.only(
                                                  left: 8.w,
                                                  top: 7.h,
                                                  right: 8.w,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25,
                                                ),
                                                child: Container(
                                                  height: 48.00.h,
                                                  width: 48.00.w,
                                                  decoration: AppDecoration
                                                      .gradientOrange200DeeporangeA200
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 15.w,
                                                            top: 16.h,
                                                            right: 15.w,
                                                            bottom: 16.h,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBag,
                                                            height: 16.00.h,
                                                            width: 16.00.w,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 7.w,
                                              top: 8.h,
                                              right: 10.w,
                                              bottom: 21.h,
                                            ),
                                            child: Text(
                                              "Physician".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOverpassLight11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: AppDecoration
                                          .outlineBlack9000c1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () async {
                                              provider.specialtype =
                                                  'BABY_CARE';
                                              EasyLoading.show(
                                                  status: 'loading...');
                                              await provider.getspecialtype();
                                              await provider.rec_by_type();
                                              EasyLoading.dismiss();
                                              // Get.toNamed(AppRoutes.doctorScreen);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DoctorScreen(
                                                    from: 4,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.only(
                                                left: 8.w,
                                                top: 7.h,
                                                right: 8.w,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder25,
                                              ),
                                              child: Container(
                                                height: 48.00.h,
                                                width: 48.00.w,
                                                decoration: AppDecoration
                                                    .gradientLightblue300BlueA200
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 13.w,
                                                          top: 18.h,
                                                          right: 13.w,
                                                          bottom: 17.h,
                                                        ),
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEye12X22,
                                                          height: 12.00.h,
                                                          width: 22.00.w,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 7.w,
                                              top: 8.h,
                                              right: 7.w,
                                              bottom: 21.h,
                                            ),
                                            child: Text(
                                              "Baby care".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOverpassLight11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: AppDecoration
                                          .outlineBlack9000c1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () async {
                                              provider.specialtype =
                                                  'ELDERLY_CARE';
                                              EasyLoading.show(
                                                  status: 'loading...');
                                              await provider.getspecialtype();
                                              await provider.rec_by_type();
                                              EasyLoading.dismiss();
                                              // Get.toNamed(AppRoutes.doctorScreen);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DoctorScreen(
                                                    from: 5,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.only(
                                                left: 8.w,
                                                top: 7.h,
                                                right: 8.w,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder25,
                                              ),
                                              child: Container(
                                                height: 48.00.h,
                                                width: 48.00.w,
                                                decoration: AppDecoration
                                                    .gradientGray600Bluegray902
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder25,
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 16.h,
                                                                bottom: 16.h,
                                                                left: 16.w,
                                                                right: 16.w),
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettings,
                                                          height: 16.00.h,
                                                          width: 16.00.w,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 3.w,
                                              top: 8.h,
                                              right: 3.w,
                                              bottom: 21.h,
                                            ),
                                            child: Text(
                                              "Elderly care".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOverpassLight11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                  top: 22.h,
                                  right: 2.w,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    30.00.r,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder32,
                                        ),
                                        child: Container(
                                          height: 150.00.h,
                                          width: 373.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              30.00.r,
                                            ),
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    30.00.r,
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgFlatlaypills,
                                                    height: 150.00.h,
                                                    width: 373.00.w,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 26.w,
                                                    top: 14.h,
                                                    right: 26.w,
                                                    bottom: 14.h,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 126.00.w,
                                                        margin: EdgeInsets.only(
                                                          left: 1.w,
                                                          right: 10.w,
                                                        ),
                                                        child: Text(
                                                          "msg_save_extra_on"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOverpassBold20
                                                              .copyWith(
                                                            height: 1.05.h,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 123.00.w,
                                                        margin: EdgeInsets.only(
                                                          top: 4.h,
                                                          right: 10.w,
                                                        ),
                                                        child: Text(
                                                          "msg_etiam_mollis_me"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOverpassLight12,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                          height: 4.00.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 10.w,
                                                            top: 4.h,
                                                          ),
                                                          child:
                                                              SmoothIndicator(
                                                            offset: 0,
                                                            count: 3,
                                                            axisDirection:
                                                                Axis.horizontal,
                                                            effect:
                                                                ScrollingDotsEffect(
                                                              spacing:
                                                                  4.5700073,
                                                              activeDotColor:
                                                                  ColorConstant
                                                                      .indigoA400,
                                                              dotColor:
                                                                  ColorConstant
                                                                      .bluegray90026,
                                                              dotHeight: 4.00.h,
                                                              dotWidth: 4.58.w,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
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
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 17.w,
                                  top: 25.h,
                                  right: 17.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "top 5 specialist in this week",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRubikMedium18,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.h,
                                        bottom: 2.h,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikLight12,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.w,
                                              top: 4.h,
                                              bottom: 3.h,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftBluegray500,
                                              height: 6.00.h,
                                              width: 3.00.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 260.00.h,
                                    width: 400.00.w,
                                    child: Expanded(
                                      child: provider.allspecial == null
                                          ? Text('no doctor ')
                                          : ListView.builder(
                                              padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  bottom: 0.h,
                                                  right: 20.w,
                                                  top: 5.h),
                                              scrollDirection: Axis.horizontal,
                                              physics: BouncingScrollPhysics(),
                                              itemCount:
                                                  provider.allspecial!.length,
                                              // itemBuilder: (context,index) => cat_doctor();
                                              itemBuilder: (context, index) {
                                                return pop_doctor(provider
                                                    .allspecial![index]);
                                              },
                                            ),
                                    ))),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 17.w,
                                  top: 17.h,
                                  right: 17.w,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      "recommended from chatbot".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRubikMedium18,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5.h,
                                        bottom: 2.h,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                              EasyLoading.show(
                                                  status:
                                                      'change from chat boot-firebase realtime  ....');
                                              await provider.rec_by_bot();
                                              EasyLoading.dismiss();
                                            },
                                            child: Text(
                                              "lbl_see_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRubikLight12,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.w,
                                              top: 4.h,
                                              bottom: 3.h,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftBluegray500,
                                              height: 6.00.h,
                                              width: 3.00.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 225.00.h,
                                    width: 400.00.w,
                                    child: provider.rec_via_bot == null
                                        ? Text('nothing')
                                        : ListView.builder(
                                            padding: EdgeInsets.only(
                                                left: 15.w,
                                                bottom: 0.h,
                                                right: 20.w,
                                                top: 5.h),
                                            scrollDirection: Axis.horizontal,
                                            physics: BouncingScrollPhysics(),
                                            itemCount:
                                                provider.rec_via_bot!.length,
                                            // itemBuilder: (context,index) => cat_doctor();
                                            itemBuilder: (context, index) {
                                              return fav_spic(
                                                  provider.rec_via_bot![index],
                                                  index);
                                            },
                                          ))),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
                      Get.to(patientScreen());
                    },
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('My Profile'),
                  ),
            
                  ListTile(
                    onTap: () async {
                      print('fffff');
                      provider.date_patient =
                          DateTime.now().toString().split(" ")[0];
                      EasyLoading.show(status: 'loading....');
                      await provider.view_appoiment_for_patient('');
                      EasyLoading.dismiss();
                      Get.to(PatientSchedule());
                    },
                    leading: Icon(Icons.book_rounded),
                    title: Text('Speciallist Records'),
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
                    onTap: () {
                      Get.to(SettingsScreen());
                    },
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(chat_bot());
                    },
                    leading: Icon(Icons.android),
                    title: Text('Chat bot'),
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

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  Widget pop_doctor(SpecialistProfile special) => GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.doctorScreen);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorDetailsScreen(
                Doctor: special,
                //  Doctor: recom_doctorList /* فقط للتذكر :) */,
              ),
            ),
          );
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
                        url: special.user?.avatar ??
                            'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740',
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
                        special.user!.username ?? 'Mohammad Taha',
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
                        "${special.type}",
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
                      initialRating: special.rattingScore!.starsAvg ?? 0,
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

  Widget fav_spic(SpecialistProfile special, int index) => GestureDetector(
        onTap: () {
          // Get.toNamed(AppRoutes.doctorScreen);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorDetailsScreen(
                Doctor: special /* فقط للتذكر :) */,
              ),
            ),
          );
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
              child: Consumer<AuthProvider>(builder: (context, provider, x) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(
                            // left: 50.w,
                            right: 0.w,
                            bottom: 0.h,
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
                              setState(() async {
                                // _FavouriteSpecialistsScreenState.Fav_List.removeAt(index);
                                // del(Fav_List);
                                // Fav_List.removeWhere((element) => element.id == 21);
                                if (special.Fav == true) {
                                  special.Fav = false;
                                  EasyLoading.show(status: 'Loading......');

                                  await provider
                                      .fav_comp(special.id.toString());
                                  EasyLoading.dismiss();
                                } else {
                                  special.Fav = true;
                                  EasyLoading.show(status: 'Loading......');
                                  await provider
                                      .fav_comp(special.id.toString());
                                  EasyLoading.dismiss();
                                }
                              });
                            },
                          )),
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
                            url: special.user?.avatar ??
                                'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740',
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
                        special.user?.username ?? 'Mohammad Taha',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtRubikMedium15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                        top: 4.h,
                        right: 5.w,
                        bottom: 10.h,
                      ),
                      child: Text(
                        special.medicalType ?? 'Dental',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtRubikRegular12IndigoA400,
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
                        // Fav_List.Specialist.tr,
                        special.user?.city ?? 'nablus',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtRubikRegular12IndigoA400,
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
