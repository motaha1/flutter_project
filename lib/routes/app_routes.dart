import 'package:final_grad_proj/presentation/splash_screen/splash_screen.dart';
import 'package:final_grad_proj/presentation/splash_screen/binding/splash_binding.dart';
import 'package:final_grad_proj/presentation/walkthrough_one_screen/walkthrough_one_screen.dart';
import 'package:final_grad_proj/presentation/walkthrough_one_screen/binding/walkthrough_one_binding.dart';
import 'package:final_grad_proj/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';
import 'package:final_grad_proj/presentation/walkthrough_two_screen/binding/walkthrough_two_binding.dart';
import 'package:final_grad_proj/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:final_grad_proj/presentation/walkthrough_three_screen/binding/walkthrough_three_binding.dart';
import 'package:final_grad_proj/presentation/walkthrough_four_screen/walkthrough_four_screen.dart';
import 'package:final_grad_proj/presentation/walkthrough_four_screen/binding/walkthrough_four_binding.dart';
import 'package:final_grad_proj/presentation/welcome_screen/welcome_screen.dart';
import 'package:final_grad_proj/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:final_grad_proj/presentation/users_screen/users_screen.dart';
import 'package:final_grad_proj/presentation/users_screen/binding/users_binding.dart';
import 'package:final_grad_proj/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:final_grad_proj/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:final_grad_proj/presentation/patient_details_screenone_screen/patient_details_screenone_screen.dart';
import 'package:final_grad_proj/presentation/patient_details_screenone_screen/binding/patient_details_screenone_binding.dart';
import 'package:final_grad_proj/presentation/patient_details_screentwo_screen/patient_details_screentwo_screen.dart';
import 'package:final_grad_proj/presentation/patient_details_screentwo_screen/binding/patient_details_screentwo_binding.dart';
import 'package:final_grad_proj/presentation/verify_otp_screen/verify_otp_screen.dart';
import 'package:final_grad_proj/presentation/verify_otp_screen/binding/verify_otp_binding.dart';
import 'package:final_grad_proj/presentation/phone_success_screen/phone_success_screen.dart';
import 'package:final_grad_proj/presentation/phone_success_screen/binding/phone_success_binding.dart';
import 'package:final_grad_proj/presentation/login_screen/login_screen.dart';
import 'package:final_grad_proj/presentation/login_screen/binding/login_binding.dart';
import 'package:final_grad_proj/presentation/forgot_p_screen/forgot_p_screen.dart';
import 'package:final_grad_proj/presentation/forgot_p_screen/binding/forgot_p_binding.dart';
import 'package:final_grad_proj/presentation/verify_email_code_screen/verify_email_code_screen.dart';
import 'package:final_grad_proj/presentation/verify_email_code_screen/binding/verify_email_code_binding.dart';
import 'package:final_grad_proj/presentation/reset_p_screen/reset_p_screen.dart';
import 'package:final_grad_proj/presentation/reset_p_screen/binding/reset_p_binding.dart';
import 'package:final_grad_proj/presentation/home_container_screen/home_container_screen.dart';
import 'package:final_grad_proj/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:final_grad_proj/presentation/menu_screen/menu_screen.dart';
import 'package:final_grad_proj/presentation/menu_screen/binding/menu_binding.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:final_grad_proj/presentation/privacy_policy_screen/binding/privacy_policy_binding.dart';
import 'package:final_grad_proj/presentation/notification_m_screen/notification_m_screen.dart';
import 'package:final_grad_proj/presentation/notification_m_screen/binding/notification_m_binding.dart';
import 'package:final_grad_proj/presentation/settings_screen/settings_screen.dart';
import 'package:final_grad_proj/presentation/settings_screen/binding/settings_binding.dart';
import 'package:final_grad_proj/presentation/notification_s_screen/notification_s_screen.dart';
import 'package:final_grad_proj/presentation/notification_s_screen/binding/notification_s_binding.dart';
import 'package:final_grad_proj/presentation/profile_screen/profile_screen.dart';
import 'package:final_grad_proj/presentation/profile_screen/binding/profile_binding.dart';
import 'package:final_grad_proj/presentation/log_out_screen/log_out_screen.dart';
import 'package:final_grad_proj/presentation/log_out_screen/binding/log_out_binding.dart';
import 'package:final_grad_proj/presentation/favourite_specialists_screen/favourite_specialists_screen.dart';
import 'package:final_grad_proj/presentation/favourite_specialists_screen/binding/favourite_specialists_binding.dart';
import 'package:final_grad_proj/presentation/update_pass_screen/update_pass_screen.dart';
import 'package:final_grad_proj/presentation/update_pass_screen/binding/update_pass_binding.dart';
import 'package:final_grad_proj/presentation/doctor_screen/doctor_screen.dart';
import 'package:final_grad_proj/presentation/doctor_screen/binding/doctor_binding.dart';
import 'package:final_grad_proj/presentation/nurse_screen/nurse_screen.dart';
import 'package:final_grad_proj/presentation/nurse_screen/binding/nurse_binding.dart';
import 'package:final_grad_proj/presentation/physician_screen/physician_screen.dart';
import 'package:final_grad_proj/presentation/physician_screen/binding/physician_binding.dart';
import 'package:final_grad_proj/presentation/baby_care_screen/baby_care_screen.dart';
import 'package:final_grad_proj/presentation/baby_care_screen/binding/baby_care_binding.dart';
import 'package:final_grad_proj/presentation/elderly_care_screen/elderly_care_screen.dart';
import 'package:final_grad_proj/presentation/elderly_care_screen/binding/elderly_care_binding.dart';
import 'package:final_grad_proj/presentation/search_doctors_screen/search_doctors_screen.dart';
import 'package:final_grad_proj/presentation/search_doctors_screen/binding/search_doctors_binding.dart';
import 'package:final_grad_proj/presentation/search_nurse_screen/search_nurse_screen.dart';
import 'package:final_grad_proj/presentation/search_nurse_screen/binding/search_nurse_binding.dart';
import 'package:final_grad_proj/presentation/search_physician_screen/search_physician_screen.dart';
import 'package:final_grad_proj/presentation/search_physician_screen/binding/search_physician_binding.dart';
import 'package:final_grad_proj/presentation/search_baby_care_screen/search_baby_care_screen.dart';
import 'package:final_grad_proj/presentation/search_baby_care_screen/binding/search_baby_care_binding.dart';
import 'package:final_grad_proj/presentation/search_elderly_care_screen/search_elderly_care_screen.dart';
import 'package:final_grad_proj/presentation/search_elderly_care_screen/binding/search_elderly_care_binding.dart';
import 'package:final_grad_proj/presentation/help_center_screen/help_center_screen.dart';
import 'package:final_grad_proj/presentation/help_center_screen/binding/help_center_binding.dart';
import 'package:final_grad_proj/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:final_grad_proj/presentation/doctor_details_screen/binding/doctor_details_binding.dart';
import 'package:final_grad_proj/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:final_grad_proj/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
//import 'package:final_grad_proj/youtube/youtube.dart';
import 'package:get/get.dart';

import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/two_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/binding/two_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/three_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/binding/three_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/binding/thank_you_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static String hello = '/hello';
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

    static String twoScreen = '/two_screen';

  static String threeScreen = '/three_screen';

  static String thankYouScreen = '/thank_you_screen';

  static String signintest = '/SignInScreen';

  

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),

        GetPage(
      name: signintest,
      page: () => SignInScreen(),

    ),
    GetPage(
      name: walkthroughOneScreen,
      page: () => WalkthroughOneScreen(),
      bindings: [
        WalkthroughOneBinding(),
      ],
    ),
    GetPage(
      name: walkthroughTwoScreen,
      page: () => WalkthroughTwoScreen(),
      bindings: [
        WalkthroughTwoBinding(),
      ],
    ),
    GetPage(
      name: walkthroughThreeScreen,
      page: () => WalkthroughThreeScreen(),
      bindings: [
        WalkthroughThreeBinding(),
      ],
    ),
    GetPage(
      name: walkthroughFourScreen,
      page: () => WalkthroughFourScreen(),
      bindings: [
        WalkthroughFourBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
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
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: forgotPScreen,
      page: () => ForgotPScreen(),
      bindings: [
        ForgotPBinding(),
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
      name: resetPScreen,
      page: () => ResetPScreen(),
      bindings: [
        ResetPBinding(),
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
      name: logOutScreen,
      page: () => LogOutScreen(),
      bindings: [
        LogOutBinding(),
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
    GetPage(
      name: doctorScreen,
      page: () => DoctorScreen(),
      bindings: [
        DoctorBinding(),
      ],
    ),
    GetPage(
      name: nurseScreen,
      page: () => NurseScreen(),
      bindings: [
        NurseBinding(),
      ],
    ),
    GetPage(
      name: physicianScreen,
      page: () => PhysicianScreen(),
      bindings: [
        PhysicianBinding(),
      ],
    ),
    GetPage(
      name: babyCareScreen,
      page: () => BabyCareScreen(),
      bindings: [
        BabyCareBinding(),
      ],
    ),
    GetPage(
      name: elderlyCareScreen,
      page: () => ElderlyCareScreen(),
      bindings: [
        ElderlyCareBinding(),
      ],
    ),
    GetPage(
      name: searchDoctorsScreen,
      page: () => SearchDoctorsScreen(),
      bindings: [
        SearchDoctorsBinding(),
      ],
    ),
    GetPage(
      name: searchNurseScreen,
      page: () => SearchNurseScreen(),
      bindings: [
        SearchNurseBinding(),
      ],
    ),
    GetPage(
      name: searchPhysicianScreen,
      page: () => SearchPhysicianScreen(),
      bindings: [
        SearchPhysicianBinding(),
      ],
    ),
    GetPage(
      name: searchBabyCareScreen,
      page: () => SearchBabyCareScreen(),
      bindings: [
        SearchBabyCareBinding(),
      ],
    ),
    GetPage(
      name: searchElderlyCareScreen,
      page: () => SearchElderlyCareScreen(),
      bindings: [
        SearchElderlyCareBinding(),
      ],
    ),
    GetPage(
      name: helpCenterScreen,
      page: () => HelpCenterScreen(),
      bindings: [
        HelpCenterBinding(),
      ],
    ),
    GetPage(
      name: doctorDetailsScreen,
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),

    GetPage(
      name: twoScreen,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    ),
    GetPage(
      name: threeScreen,
      page: () => ThreeScreen(),
      bindings: [
        ThreeBinding(),
      ],
    ),
    GetPage(
      name: thankYouScreen,
      page: () => ThankYouScreen(),
      bindings: [
        ThankYouBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ) , 

  ];
}
