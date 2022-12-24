import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_grad_proj/app_router/app_router.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/data_repositories/auth_helper.dart';
import 'package:final_grad_proj/data_repositories/firestore_helper.dart';
import 'package:final_grad_proj/models/appoiment.dart';
import 'package:final_grad_proj/models/chat_model.dart';
import 'package:final_grad_proj/screens_test/display_doctor.dart';
import 'package:final_grad_proj/screens_test/main_screen.dart';
import 'package:final_grad_proj/screens_test/open.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
import 'package:final_grad_proj/screens_test/splash_test.dart';

import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:string_validator/string_validator.dart';

import '../models/app_user.dart';

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
          Get.to(splash_test());
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
    QuerySnapshot<Map<String, dynamic>> user_chat = await FirebaseFirestore
        .instance
        .collection('users')
        .doc(loggedUser!.email)
        .collection('chats')
        .get();
    //FirebaseFirestore.instance.collection('users')
    await FirebaseFirestore.instance
        .collection('users')
        .doc(loggedUser!.email)
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

    print(user_chat.docs.length.toString());

    user_chat.docs.forEach((element) {
      print(element.id);
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
}
