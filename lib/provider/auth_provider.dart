import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:final_grad_proj/app_router/app_router.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/data_repositories/auth_helper.dart';
import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/data_repositories/firestore_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/appoiment_screen_firebase_doctor.dart';
import 'package:final_grad_proj/models/PatientProfile.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/models/appoiment.dart';
import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/models/chat_model.dart';
import 'package:final_grad_proj/models/doctor_model.dart';
import 'package:final_grad_proj/models/favr.dart';
import 'package:final_grad_proj/models/notification.dart';
import 'package:final_grad_proj/models/user_api.dart';
import 'package:final_grad_proj/mustafa/presentation/home_page/home_page.dart';
import 'package:final_grad_proj/screens_test/display_doctor.dart';
import 'package:final_grad_proj/screens_test/main_screen.dart';
import 'package:final_grad_proj/screens_test/open.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
import 'package:final_grad_proj/screens_test/splash_test.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/specialist_screen_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:string_validator/string_validator.dart';

import '../models/app_user.dart';
import '../wajeed2/presentation/message_screen/models/ChatMessage.dart';

class AuthProvider extends ChangeNotifier {
  GlobalKey<FormState> signInKey = GlobalKey();
  GlobalKey<FormState> signUpKey = GlobalKey();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordRegisterController = TextEditingController();
  TextEditingController passwordLoginController = TextEditingController();
  late String email;
  late String password;
  AppUser? loggedUser;

  AuthProvider() {
    getallspecial();
    recumidation();
    getalldoctor();
    // getmedicaltype();
    //getnotification() ;
    rec_by_bot();
  }
  saveEmail(String email) {
    this.email = email;
  }

  savePassword(String password) {
    this.password = password;
  }

  String? emailValidation(String email) {
    if (email == null || email.isEmpty) {
      return "Required field";
    } else if (!(isEmail(email))) {
      return "Incorrect email syntax";
    }
  }

  String? passwordValidation(String password) {
    if (password == null || password.isEmpty) {
      return "Required field";
    } else if (password.length <= 6) {
      return 'Error, the password must be larger than 6 letters';
    }
  }

  String? requiredValidation(String content) {
    if (content == null || content.isEmpty) {
      return "Required field";
    }
  }

  String? phoneValidation(String content) {
    if (!isNumeric(content)) {
      return "InCorrect phone number syntax";
    }
  }

  signIn() async {
    if (signInKey.currentState!.validate()) {
      signInKey.currentState!.save();
      String? userId = await AuthHelper.authHelper
          .signIn(loginEmailController.text, passwordLoginController.text);
      if (userId != null) {
        loggedUser =
            await FirestoreHelper.firestoreHelper.getUserFromFirestore(userId);
        notifyListeners();

        print(loggedUser?.email);
        print(loggedUser?.type);
        //Get.to(AllDoctorssScreen());
        if (loggedUser!.type == 'patient') {
          Get.to(AllDoctorssScreen());
        }
        if (loggedUser!.type == 'Doctor') {
          Get.to(AllDoctorssScreen());
          //Get.to(appoiment_show_doctor_firebase());
        }

        //AppRouter.appRouter.goToWidget(MyWidget11());

      }
    }
  }

  SignUp() async {
    if (signUpKey.currentState!.validate()) {
      String? result = await AuthHelper.authHelper.signUp(
          registerEmailController.text, passwordRegisterController.text);
      if (result != null) {
        FirestoreHelper.firestoreHelper.addNewUser(AppUser(
            id: result,
            email: registerEmailController.text,
            name: userNameController.text,
            phoneNumber: phoneController.text));
        // AppRouter.appRouter.goToWidgetAndReplace(MainScreen());
      }
    }
  }

  getUser(String id) async {
    loggedUser = await FirestoreHelper.firestoreHelper.getUserFromFirestore(id);
    loggedUser!.id = id;
    notifyListeners();
  }

  checkUser() async {
    String? userId = AuthHelper.authHelper.checkUser();

    if (userId != null) {
      getUser(userId);
      AppRouter.appRouter.goToWidgetAndReplace(MainScreen());
    } else {
      AppRouter.appRouter.goToWidgetAndReplace(SignInScreen());
    }
  }

  signOut() async {
    await AuthHelper.authHelper.signOut();
    AppRouter.appRouter.goToWidgetAndReplace(SignInScreen());
  }

  sendMessage(@required String receiver, @required time, @required text) async {
    Chat chat = Chat(
        sender: loggedUser!.email, receiver: receiver, text: text, time: time);

    FirebaseFirestore.instance
        .collection('users')
        .doc(loggedUser!.email)
        .collection('chats')
        .doc(receiver)
        .collection('messages')
        .add(chat.toMap());

    FirebaseFirestore.instance
        .collection('users')
        .doc(receiver)
        .collection('chats')
        .doc(loggedUser!.email)
        .collection('messages')
        .add(chat.toMap());
  }

  List<Chat> chat = [];
  getuserchat(@required String receiver) async {
    //FirebaseFirestore.instance.collection('users')
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user_api.user.email)
        .collection('chats')
        .doc(receiver)
        .collection('messages')
        .snapshots()
        .listen(
      (event) {
        print(event.docs.length);
        chat = [];
    event.docs.forEach((element) {
          print(element.id);
          chat.add(Chat.fromMap(element.data()));
        });
      },
    );
      listV() ; 
//gethowiamtalk()
  }

  List howiamtalk_string = [];
  List<Doctor> howiamtalk_user = [];

  gethowiamtalk() async {
    QuerySnapshot<Map<String, dynamic>> user_chat =
        await FirebaseFirestore.instance
            .collection('users')
            .doc('hellopatient@gmail.com') //doc(logedin.email)
            .collection('chats')
            .get();
    print(user_chat.docs.length.toString());
    // howiamtalk_string = [];
    // howiamtalk_user = [];

    user_chat.docs.forEach((element) {
      print(element.id);
      howiamtalk_string.add(element.id);
    });
    print(howiamtalk_string.length);
    howiamtalk_string.forEach((element) async {
      DocumentSnapshot<Map<String, dynamic>> catsSnapshot =
          await FirebaseFirestore.instance
              .collection('Doctor')
              .doc(element.toString())
              .get();
      print(catsSnapshot.id);
      Map<String, dynamic>? jj = catsSnapshot.data();
      howiamtalk_user.add(Doctor.fromMap_2(jj));
    });

    // user_chat.docs.map((doc) {
    //   print(doc.id);
    // });
  }

  // uploadNewFile() async {
  //   XFile? pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   File file = File(pickedFile!.path);
  //   String imageUrl =
  //       await StorageHelper.storageHelper.uploadNewImage('user_images', file);

  //   loggedUser!.imageUrl = imageUrl;

  //   await FirestoreHelper.firestoreHelper.updateTheUser(loggedUser!);
  //   getUser(loggedUser!.id!);
  // }

  String? start;
  String? end;
  String? date;

  Future<String?> addNewAppoiment(Appoiment app) async {
    try {
      DocumentReference<Map<String, dynamic>> documentReference =
          await FirebaseFirestore.instance
              .collection('Doctor')
              .doc(app.doctor)
              .collection('appoiment')
              .add(app.toMap());

      DocumentReference<Map<String, dynamic>> documentReference1 =
          await FirebaseFirestore.instance
              .collection('Paient')
              .doc(loggedUser!.email)
              .collection('appoiment')
              .add(app.toMap());
      //  return documentReference.id;
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  List<Appoiment>? allappoiment;
  List<Appoiment>? selectedApp;
  String? selected_date_appoiment;

  String? selected_date_appoiment_patient;
  List<Appoiment>? allappoiment_paitent;

  List<Appoiment>? selectedApp_toshow_paitent;

  getAllappoiment(String docId) async {
    allappoiment = null;
    notifyListeners();
    List<Appoiment>? app =
        await FirestoreHelper.firestoreHelper.getAllappoimnets(docId);

    allappoiment = app;
    selectedApp = app!
        .where((element) => element.date == selected_date_appoiment)
        .toList();

// selectedApp_toshow = app
//         .where((element) => element.date == selected_date_appoiment)
//         .toList();

    notifyListeners();
  }

  getAllappoiment_Paitent() async {
    allappoiment = null;
    notifyListeners();
    List<Appoiment>? app = await FirestoreHelper.firestoreHelper
        .getAllappoimnets_patiant(loggedUser!.email);

    allappoiment_paitent = app;

    selectedApp_toshow_paitent = app!
        .where((element) => element.date == selected_date_appoiment_patient)
        .toList();

    notifyListeners();
  }

  ////////////
  getAllappoiment_doctor() async {
    allappoiment = null;
    notifyListeners();
    List<Appoiment>? app = await FirestoreHelper.firestoreHelper
        .getAllappoimnets(loggedUser!.email);

    allappoiment_paitent = app;

    selectedApp_toshow_paitent = app!
        .where((element) => element.date == selected_date_appoiment_patient)
        .toList();

    notifyListeners();
  }

  List<SpecialistProfile>? allspecial;

  getallspecial() async {
    allspecial = await DioHelper.diohelper.getallspecial();
    notifyListeners();
    allspecial!.sort((a, b) =>
        a.rattingScore!.starsAvg!.compareTo(-b.rattingScore!.starsAvg));

    // fruits.sort((a, b) => getPrice(a).compareTo(getPrice(b)));
  }

  List<SpecialistProfile>? rec;

  recumidation() async {
    rec = await DioHelper.diohelper.recumidation('3');
    rec![1].Fav = true;
  }

  dynamic user_api;
  String? token;

  login(String email, String password) async {
    dynamic loggin_user = await DioHelper.diohelper.login(email, password);

    if (loggin_user.runtimeType == String) {
      print('email or password invalid');
    } else {
      if (loggin_user['user']['is_specialist'] == true) {
        SpecialistProfile specialists = SpecialistProfile.fromJson(loggin_user);
        user_api = specialists;
        print('hello special ' + user_api.user.username);
        token = await FirebaseMessaging.instance.getToken();
        print('this is token' + token!);
        DioHelper.diohelper
            .fcmtoken(user_api.user.id.toString(), token!.toString());
        Get.to(SpecialistScreenPage());
        EasyLoading.dismiss();
        // SpecialistScreenPage
        print('hello special ' + user_api.user.username);
      } else if (loggin_user['user']['is_patient'] == true) {
        PatientProfile patientProfile = PatientProfile.fromJson(loggin_user);
        user_api = patientProfile;
        print('hello patient ' + user_api.user.username);
        token = await FirebaseMessaging.instance.getToken();
        print('this is token' + token!);
        DioHelper.diohelper
            .fcmtoken(user_api.user.id.toString(), token!.toString());
        Get.to(HomePage());
      }
    }
  }

  List<SpecialistProfile>? alldoctor;

  getalldoctor() async {
    alldoctor = await DioHelper.diohelper.alldoctors();
    notifyListeners();
    alldoctor!.sort((a, b) =>
        a.rattingScore!.starsAvg!.compareTo(-b.rattingScore!.starsAvg));
  }

//   fcmtoken(String id , String token){
// DioHelper.diohelper.fcmtoken(id, token) ;
// notifyListeners() ;

//   }

  late List<SpecialistProfile>? searchdoctor = alldoctor;
  late String city = '';
  late String home = '';
  var medical_type;
  late String type = '';
  getsearchdoctor() async {
    if (city == 'all') {
      city = '';
    }
    if (home == 'all') {
      home = '';
    } else if (home == 'at home') {
      home = 'true';
    } else if (home == 'at the clinic') {
      home = 'false';
    }

    if (type == 'all') {
      type = '';
    }
    searchdoctor = await DioHelper.diohelper
        .getdoctorfiltter(city, home, type, specialtype);
    notifyListeners();
  }

  getmedicaltype() async {
    medical_type = await DioHelper.diohelper.medicaltype();
  }

  List<Notify>? notify;

  getnotification() async {
    print('hello world');
    notify =
        await DioHelper.diohelper.getnotify(user_api.user.email.toString());
    notifyListeners();
  }

  List<Favr>? favspecial;

  getfav() async {
    favspecial = [];
    favspecial = await DioHelper.diohelper.getfav(user_api.id.toString());
    notifyListeners();
  }

  addfav(String special) async {
    await DioHelper.diohelper.postfav(user_api.id.toString(), special);
  }

  List<SpecialistProfile>? specialtypelist;
  late String specialtype;
  getspecialtype() async {
    specialtypelist = await DioHelper.diohelper.getspecialbytype(specialtype);

    specialtypelist!.sort((a, b) =>
        a.rattingScore!.starsAvg!.compareTo(-b.rattingScore!.starsAvg));
    notifyListeners();
  }

  List<SpecialistProfile>? rec_via_type;

  rec_by_type() async {
    rec_via_type = await DioHelper.diohelper
        .rec_via_type(specialtype, user_api.id.toString());

    notifyListeners();
  }

  List<SpecialistProfile>? rec_via_bot;
  rec_by_bot() async {
    rec_via_bot = await DioHelper.diohelper.rec_via_bot(user_api.id.toString());

    notifyListeners();
  }

  String? fullname;

// palid (String name , String id)async{

// full

// }

  bool? forme;
  not(bool x) {
    forme = x;
    notifyListeners();
  }

  String? fav_compo;
  fav_comp(String id) async {
    fav_compo = await DioHelper.diohelper.comp_fav(id, user_api.id.toString());
    notifyListeners();
  }

  notify_delete(String id) async {
    fav_compo = await DioHelper.diohelper.notify_delete(id);
    notifyListeners();
  }

  String date_special = '';

  List<AppoimentApi>? po;
  view_appoiment_for_specail(String status) async {
    print(date_special);
    po = await DioHelper.diohelper
        .view_appoiment_specail(user_api.id.toString(), date_special, status);
    po!.sort((a, b) => convert(a.start).compareTo(convert(b.start)));
    notifyListeners();
  }

  deleteappoimnet(String id) async {
    await DioHelper.diohelper.deleteappoiment(id);

    notifyListeners();
  }

  doneappoimnet(String id) async {
    await DioHelper.diohelper.doneappoiment(id);

    notifyListeners();
  }

  String date_patient = '';

  List<AppoimentApi>? po1;
  view_appoiment_for_patient(String status) async {
    print(date_special);
    po1 = await DioHelper.diohelper
        .view_appoiment_patient(user_api.id.toString(), date_patient, status);
    po1!.sort((a, b) => convert(a.start).compareTo(convert(b.start)));
    notifyListeners();
  }

  int convert(String? x) {
    if (x == '09:00 AM') {
      return 9;
    }

    if (x == '10:00 AM') {
      return 10;
    }

    if (x == '11:00 AM') {
      return 11;
    }

    if (x == '12:00 PM') {
      return 12;
    }

    if (x == '01:00 PM') {
      return 13;
    }

    if (x == '02:00 PM') {
      return 14;
    }

    if (x == '03:00 PM') {
      return 15;
    }
    if (x == '04:00 PM') {
      return 16;
    }
    if (x == '05:00 PM') {
      return 17;
    }
    if (x == '06:00 PM') {
      return 18;
    }

    if (x == '07:00 PM') {
      return 19;
    }
    if (x == '08:00 PM') {
      return 20;
    }

    if (x == '09:00 PM') {
      return 21;
    }

    return 0;
  }

  String? chatting ; 

  sendmessage_api(String text, String reciver) async {
    await DioHelper.diohelper
        .sendmessage(text, user_api.user.email.toString(), reciver);
  }


List<Userapi>? how_i_am_talk_list ; 
  how_i_am_talk_api() async {

//how_i_am_talk_list = await DioHelper.diohelper.how_i_am_talk(user_api.user.email.toString()) ; 

how_i_am_talk_list = await DioHelper.diohelper.how_i_am_talk('hellopatient@gmail.com') ; 
print(how_i_am_talk_list) ; 
return how_i_am_talk_list ; 
// String typee ='' ; 
//     if (user_api.user.is_specialist== true) {
//       typee = 'special' ; 

//     }

//         if (user_api.user.is_patient== true) {
//       typee = 'patient' ; 

//     }
//      dynamic user = await DioHelper.diohelper.how_i_am_talk(typee, user_api.user.email.toString());
//     //dynamic user = await DioHelper.diohelper.how_i_am_talk(type, user_api.user.email.toString());

//     if (user.runtimeType == String) {
//       print('error');
//     } else {
//       if (user_api.user.is_specialist== true) {
//         SpecialistProfile specialists = SpecialistProfile.fromJson(user);
       
//        return 
//         EasyLoading.dismiss();
//         // SpecialistScreenPage
//         print('hello special ' + user_api.user.username);
//       } else if (user_api.user.is_patient== true) {
//         PatientProfile patientProfile = PatientProfile.fromJson(user);
//         user_api = patientProfile;
//         print('hello patient ' + user_api.user.username);
//         token = await FirebaseMessaging.instance.getToken();
//         print('this is token' + token!);
//         DioHelper.diohelper
//             .fcmtoken(user_api.user.id.toString(), token!.toString());
//         Get.to(HomePage());
//       }
//     }
  }


  List<ChatMessage>? arr;
  listV()async {
   chat.sort((b, a) => a.time.compareTo(b.time),) ; 
    list.demeChatMessages  =[] ; 
    for (int i = 0; i < chat.length; i++) {
      final m;
      if (chat[i].sender == user_api.user.email) {
        m = ChatMessage(
            text: chat[i].text,
            messageType: ChatMessageType.text,
            messageStatus: MessageStatus.viewed,
            isSender: true);
      } else {
        m = ChatMessage(
            text: chat[i].text,
            messageType: ChatMessageType.text,
            messageStatus: MessageStatus.viewed,
            isSender: false);
      }
      list.demeChatMessages.add(m);
      arr?.add(m);
      debugPrint(list.demeChatMessages.length.toString());
      //setState(() => {msgController.clear(), message = ""});
      //print(list.demeChatMessages.length);
    }
    notifyListeners();
  }
}
