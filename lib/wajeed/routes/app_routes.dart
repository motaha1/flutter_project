import 'package:final_grad_proj/wajeed/presentation/chat_page/chat_page.dart';

import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/binding/popupB.dart';
import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/popup_bottomsheet.dart';
import 'package:final_grad_proj/wajeed/presentation/splash_screen/splash_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/splash_screen/binding/splash_binding.dart';

import 'package:final_grad_proj/wajeed/presentation/users_screen/users_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/users_screen/binding/users_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screenone_screen/patient_details_screenone_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screenone_screen/binding/patient_details_screenone_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screentwo_screen/patient_details_screentwo_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screentwo_screen/binding/patient_details_screentwo_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/verify_otp_screen/verify_otp_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/verify_otp_screen/binding/verify_otp_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/phone_success_screen/phone_success_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/phone_success_screen/binding/phone_success_binding.dart';
import 'package:final_grad_proj/wajeed/presentation/login_screen/login_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/login_screen/binding/login_binding.dart';

import 'package:final_grad_proj/wajeed/presentation/verify_email_code_screen/verify_email_code_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/verify_email_code_screen/binding/verify_email_code_binding.dart';

import 'package:get/get.dart';
import '../presentation/calls_screen/calls_screen.dart';
import '../presentation/chat_page/binding/chat_binding.dart';
import '../presentation/message_screen/binding/message_binding.dart';
import '../presentation/message_screen/message_screen.dart';
import '../presentation/video_call_screen/video_call_screen.dart';

import '../presentation/video_call_screen/binding/video_call_binding.dart';
//import '../presentation/video_call_screen/video_call_screen.dart';

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

  static String videoCallScreen = '/video_call_screen';

  static String CommentsSp = '/commentsspecialist_screen';

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

  static String Messagescreen = '/message_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String chatpage = '/chat_page';

  static String callsScreen = '/calls_screen';

  static String PopupChat = '/popup_bottomsheet';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),

    GetPage(
      name: callsScreen,
      page: () => CallsScreen(),
      bindings: [
        CallsBinding(),
      ],
    ),
    GetPage(
      name: PopupChat,
      page: () => PopupBottomsheet(),
      bindings: [
        popupB(),
      ],
    ),
    GetPage(
      name: Messagescreen,
      page: () => MyWidgetMS(),
      bindings: [
        MessageBinding(),
      ],
    ),
    GetPage(
      name: chatpage,
      page: () => ChatPage(),
      bindings: [
        CallsBinding(),
      ],
    ),


   

    GetPage(
      name: usersScreen,
      page: () => UsersScreen(),
      bindings: [
        UsersBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: patientDetailsScreenoneScreen,
      page: () => PatientDetailsScreenoneScreen(),
      bindings: [
        PatientDetailsScreenoneBinding(),
      ],
    ),
    GetPage(
      name: patientDetailsScreentwoScreen,
      page: () => PatientDetailsScreentwoScreen(),
      bindings: [
        PatientDetailsScreentwoBinding(),
      ],
    ),
    GetPage(
      name: verifyOtpScreen,
      page: () => VerifyOtpScreen(),
      bindings: [
        VerifyOtpBinding(),
      ],
    ),
    GetPage(
      name: phoneSuccessScreen,
      page: () => PhoneSuccessScreen(),
      bindings: [
        PhoneSuccessBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => MyWidgetLogin(),
      bindings: [
        LoginBinding(),
      ],
    ),

    GetPage(
      name: verifyEmailCodeScreen,
      page: () => VerifyEmailCodeScreen(),
      bindings: [
        VerifyEmailCodeBinding(),
      ],
    ),




    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
