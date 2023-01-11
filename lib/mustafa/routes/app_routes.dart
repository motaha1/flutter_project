
import 'package:final_grad_proj/mustafa/presentation/users_screen/users_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/users_screen/binding/users_binding.dart';

import 'package:final_grad_proj/mustafa/presentation/forgot_p_screen/forgot_p_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/forgot_p_screen/binding/forgot_p_binding.dart';

import 'package:final_grad_proj/mustafa/presentation/home_container_screen/home_container_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/menu_screen/menu_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/menu_screen/binding/menu_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_m_screen/notification_m_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_m_screen/binding/notification_m_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/settings_screen/settings_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/settings_screen/binding/settings_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_s_screen/notification_s_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/notification_s_screen/binding/notification_s_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/profile_screen/profile_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/profile_screen/binding/profile_binding.dart';

import 'package:final_grad_proj/mustafa/presentation/favourite_specialists_screen/favourite_specialists_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/favourite_specialists_screen/binding/favourite_specialists_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/update_pass_screen/update_pass_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/update_pass_screen/binding/update_pass_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/doctor_screen/doctor_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/doctor_screen/binding/doctor_binding.dart';

import 'package:final_grad_proj/mustafa/presentation/search_doctors_screen/search_doctors_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/search_doctors_screen/binding/search_doctors_binding.dart';

import 'package:final_grad_proj/mustafa/presentation/help_center_screen/help_center_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/help_center_screen/binding/help_center_binding.dart';
import 'package:final_grad_proj/mustafa/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:final_grad_proj/mustafa/presentation/doctor_details_screen/binding/doctor_details_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String walkthroughOneScreen = '/walkthrough_one_screen';

  static String walkthroughTwoScreen = '/walkthrough_two_screen';

  static String walkthroughThreeScreen = '/walkthrough_three_screen';

  static String walkthroughFourScreen = '/walkthrough_four_screen';

  static String welcomeScreen = '/welcome_screen';

  static String usersScreen = '/users_screen';

  static String signUpScreen = '/sign_up_screen';

  static String patientDetailsScreenoneScreen =
      '/patient_details_screenone_screen';

  static String patientDetailsScreentwoScreen =
      '/patient_details_screentwo_screen';

  static String verifyOtpScreen = '/verify_otp_screen';

  static String phoneSuccessScreen = '/phone_success_screen';

  static String loginScreen = '/login_screen';

  static String forgotPScreen = '/forgot_p_screen';

  static String verifyEmailCodeScreen = '/verify_email_code_screen';

  static String resetPScreen = '/reset_p_screen';

  static String homeContainerScreen = '/home_container_screen';

  static String menuScreen = '/menu_screen';

  static String privacyPolicyScreen = '/privacy_policy_screen';

  static String notificationMScreen = '/notification_m_screen';

  static String settingsScreen = '/settings_screen';

  static String notificationSScreen = '/notification_s_screen';

  static String profileScreen = '/profile_screen';

  static String logOutScreen = '/log_out_screen';

  static String favouriteSpecialistsScreen = '/favourite_specialists_screen';

  static String updatePassScreen = '/update_pass_screen';

  static String doctorScreen = '/doctor_screen';

  static String nurseScreen = '/nurse_screen';

  static String physicianScreen = '/physician_screen';

  static String babyCareScreen = '/baby_care_screen';

  static String elderlyCareScreen = '/elderly_care_screen';

  static String searchDoctorsScreen = '/search_doctors_screen';

  static String searchNurseScreen = '/search_nurse_screen';

  static String searchPhysicianScreen = '/search_physician_screen';

  static String searchBabyCareScreen = '/search_baby_care_screen';

  static String searchElderlyCareScreen = '/search_elderly_care_screen';

  static String helpCenterScreen = '/help_center_screen';

  static String doctorDetailsScreen = '/doctor_details_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [


 
    GetPage(
      name: forgotPScreen,
      page: () => ForgotPScreen(),
      bindings: [
        ForgotPBinding(),
      ],
    ),
 
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: menuScreen,
      page: () => MenuScreen(),
      bindings: [
        MenuBinding(),
      ],
    ),
    GetPage(
      name: privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      bindings: [
        PrivacyPolicyBinding(),
      ],
    ),
    GetPage(
      name: notificationMScreen,
      page: () => NotificationMScreen(),
      bindings: [
        NotificationMBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: notificationSScreen,
      page: () => NotificationSScreen(),
      bindings: [
        NotificationSBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),

    GetPage(
      name: favouriteSpecialistsScreen,
      page: () => FavouriteSpecialistsScreen(),
      bindings: [
        FavouriteSpecialistsBinding(),
      ],
    ),
    GetPage(
      name: updatePassScreen,
      page: () => UpdatePassScreen(),
      bindings: [
        UpdatePassBinding(),
      ],
    ),
    // GetPage(
    //   name: doctorScreen,
    //   page: () => DoctorScreen(from: ,),
    //   bindings: [
    //     DoctorBinding(),
    //   ],
    // ),


    GetPage(
      name: searchDoctorsScreen,
      page: () => SearchDoctorsScreen(),
      bindings: [
        SearchDoctorsBinding(),
      ],
    ),


    GetPage(
      name: helpCenterScreen,
      page: () => HelpCenterScreen(),
      bindings: [
        HelpCenterBinding(),
      ],
    ),
    // GetPage(
    //   name: doctorDetailsScreen,
    //   page: () => DoctorDetailsScreen(),
    //   bindings: [
    //     DoctorDetailsBinding(),
    //   ],
    // ),


  ];
}
