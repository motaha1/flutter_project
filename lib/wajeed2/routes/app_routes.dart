import 'package:final_grad_proj/wajeed2/presentation/Emergancy_Specialist_Schedule/Emergancy_Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/Emergancy_Specialist_Schedule/binding/Emergancy_Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient_Schedule/Patient_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient_Schedule/binding/Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/Specialist_Schedule/Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/Specialist_Schedule/binding/Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screenS/binding/calls_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screenS/calls_screenS.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/chatspacialist_screen/binding/chatspacialist_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/chatspacialist_screen/chatspacialist_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/comments_page/binding/commentsspecialist_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/comments_page/comments_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/binding/commentsspecialist_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/commentsspecialist_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen_Bot/binding/message_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen_Bot/message_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/popup_bottomsheet/binding/popupB.dart';
import 'package:final_grad_proj/wajeed2/presentation/popup_bottomsheet/popup_bottomsheet.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/binding/specialist_screen_container_binding.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/specialist_screen_page.dart';

import 'package:get/get.dart';
import '../presentation/Patient Records/Patient schdule.dart';
import '../presentation/Patient Records/binding/Patient_Records_binding.dart';
import '../presentation/calls_screen/calls_screen.dart';
import '../presentation/chat_page/binding/chat_binding.dart';
import '../presentation/message_screen/binding/message_binding.dart';
import '../presentation/message_screen/message_screen.dart';

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

  static String Commentsp = '/comments_page';

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

  static String Messagescreen_Bot = '/message_screen_Bot';

  static String appNavigationScreen = '/app_navigation_screen';

  static String chatpage = '/chat_page';

  static String Chatspacialist = '/Chatspacialist_screen_page';

  static String callsScreen = '/calls_screen';

  static String PopupChat = '/popup_bottomsheet';

  static String Specialist_screen = '/Specialist_screen_page';

  static String Specialist_Schedule = '/Specialist_Schedule';

  static String Emergancy_Specialist_Schedule =
      '/Emergancy_Specialist_Schedule';

  static String Patient_Schedule_List = '/Patient_Schedule';

  static String callsSScreen = '/calls_screenS';

  static String Patient_schdule = '/Patient_schdule';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [

    GetPage(
      name: Specialist_screen,
      page: () => SpecialistScreenPage(),
      bindings: [
        SpecialistScreenBinding(),
      ],
    ),
    GetPage(
      name: Specialist_Schedule,
      page: () => SpecialistSchedule(),
      bindings: [
        Specialist_ScheduleBinding(),
      ],
    ),
    GetPage(
      name: Emergancy_Specialist_Schedule,
      page: () => EmergancySpecialistSchedule(),
      bindings: [
        ESpecialist_ScheduleBinding(),
      ],
    ),
    GetPage(
      name: Patient_Schedule_List,
      page: () => PatientSchedule(),
      bindings: [
        Patient_ScheduleBinding(),
      ],
    ),
    GetPage(
      name: Chatspacialist,
      page: () => ChatspacialistScreen(),
      bindings: [
        ChatspacialistBinding(),
      ],
    ),
    GetPage(
      name: Patient_schdule,
      page: () => Patient_Records(),
      bindings: [
        Patient_RecordsBinding(),
      ],
    ),
    GetPage(
      name: CommentsSp,
      page: () => CommentsspecialistScreen(),
      bindings: [
        CommentsspecialistBinding(),
      ],
    ),
    GetPage(
      name: Commentsp,
      page: () => MyWidgetCommentsPage(),
      bindings: [
        CommentsBinding(),
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
      name: callsSScreen,
      page: () => CallsScreenS(),
      bindings: [
        CallsSBinding(),
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
      name: Messagescreen_Bot,
      page: () => MyWidgetMSB(),
      bindings: [
        MessageBindingB(),
      ],
    ),

    GetPage(
      name: chatpage,
      page: () => ChatPage(),
      bindings: [
        CallsBinding(),
      ],
    ),

  ];
}
