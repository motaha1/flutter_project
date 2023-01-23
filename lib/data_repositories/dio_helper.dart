import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/models/favr.dart';
import 'package:final_grad_proj/models/notification.dart';
import 'package:final_grad_proj/models/speciallist.dart';
import 'package:final_grad_proj/models/user_api.dart';
import 'package:final_grad_proj/screens_test/no_connection_screen/presentation/noconnection_screen/noconnection_screen.dart';

import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';

class DioHelper {
  DioHelper._();
  static DioHelper diohelper = DioHelper._();

  Dio dio = Dio();

  Future<List<SpecialistProfile>> getallspecial() async {
    Response responce =
        await dio.get('http://192.168.1.76:8000/api/users/allspeciallist');
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());
    log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return specialists1;
  }

  Future<Specialists> getdoctor() async {
    Response responce =
        await dio.get('http://192.168.1.76:8000/api/users/specialists/1');
    Specialists specialists = Specialists.fromJson(responce.data);
    //  print(responce.data.toString());

    // List<Specialists> specialists1 = responce.data.map((e) {
    //   return Specialists.fromJson(e);
    // }).toList();
    // print(specialists1.length.toString());
    print(specialists);
    print(specialists.user!.birthdate);
    print(specialists.user!.gender);
    print(specialists.user!.id);
    print(specialists.createdAt);
    print(specialists.dailyOpenFrom);
    print(specialists.user!.mobile);

    return specialists;
  }

//NoconnectionScreen

  Future<List<dynamic>> getAppoimnet(String special, String date) async {
    List<dynamic> appoiment = [];
    Response responce;

    try {
      responce = await dio.get(
          'http://192.168.1.76:8000/api/users/viewappoiment/?specialist__id=$special&date=$date');
      //Specialists specialists = Specialists.fromJson(responce.data);
      print(responce.data.toString());

      appoiment = responce.data.map((e) {
        return AppoimentApi.fromJson(e);
      }).toList();
      print(appoiment.length.toString());
      return appoiment;
    } on Exception catch (e) {
      print(e.toString());
      Get.to(NoconnectionScreen());
    }

    return appoiment;
  }

//
  Future<String> addAppoiment(String start, String end, String date,
      String patient, String special) async {
    Response responce = await dio
        .post('http://192.168.1.76:8000/api/users/addappoiment/', data: {
      "start": start,
      "end": end,
      "date": date,
      "specialist": special,
      "patient": patient
    });
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.statusCode.toString());

    return responce.statusCode.toString();
  }

  Future<List<SpecialistProfile>> recumidation(String id) async {
    Response responce = await dio
        .post('http://192.168.1.76:8000/api/users/rec/', data: {"id": id});
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());
    log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return specialists1;
  }

  sendsms(String num, String massege) async {
    Response r = await dio.post(
      'https://hisabiapi.jawwal.ps/api/SmsFree/SendFreeSMS',
      data: {
        "MsgText": massege,
        "Destmsisdn": "599389138",
        "lang": "EN",
        "deviceId": "67ffab69b41b904b5f7b94a557896f74"
      },
      options: Options(
        headers: {
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzcwMjYzMzIsImlzcyI6Imh0dHBzOi8vamF3d2FsLnBzLyIsImF1ZCI6IkludGVybmFsQXBwbGljYXRpb25zIiwiQ2hhbm5lbCI6IldlYnNpdGUiLCJMYW5nIjoiQVIiLCJEZXZpY2VJZCI6IjY3ZmZhYjY5YjQxYjkwNGI1ZjdiOTRhNTU3ODk2Zjc0IiwiTXNpc2RuIjoiNTk1MDk4NTkwIn0.v4D7En8QkvVD23tx2Yt2VzwshNruGBtjmZ032jQKtGo",
          "Lang": "AR",
          "Channel": "Website",
          "Content-Type": "application/json",
          // "Content-Length" : "500" ,
          //  "Host" : "hisabiapi.jawwal.ps" ,
          "User-Agent": "PostmanRuntime/7.29.2",
          "Content-Length": "500",

          "Accept": "*/*",
          "Accept-Encoding": "gzip, deflate, br",
          "Connection": "keep-alive",
          "Cookie":
              "TS01a64e31=01a6c0e57c50e7b661e4cf0d0b3337e579221b8a7183db577f719cd447a3560bcb6b951029f3a9f3bd0caa6c1c13bb5455285c1a9cdc66ab07e744e6bf91d072637d5ffebe; WEBCookie=rd80o00000000000000000000ffff0a67c896o80",
        },
      ),
    );
    print(r.data);
  }

  login(String email, String password) async {
    Response response = await dio.post(
      'http://192.168.1.76:8000/api/users/login/',
      data: {
        "email": email,
        "password": password,
      },
    );
    return (response.data);
  }

  fcmtoken(String id, String token) async {
    Response response = await dio.post(
        'http://192.168.1.76:8000/api/users/addfcm/',
        data: {"id": id, "token": token});

    return (response.data);
  }

  Future<List<SpecialistProfile>> alldoctors() async {
    Response responce = await dio
        .get('http://192.168.1.76:8000/api/users/allspeciallist/?type=DOCTOR');

    //   print(responce.data.toString());
    // log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    print(specialists1.length.toString());
    log(specialists1.length.toString());
    return specialists1;
  }

  Future<List<SpecialistProfile>> getdoctorfiltter(
      String city, String home, String type, String specialtype) async {
    Response responce = await dio.get(
        'http://192.168.1.76:8000/api/users/allspeciallist/?type=${specialtype}&at_home=${home}&medical_type=${type}&user__city=${city}');

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    print(specialists1.length.toString());
    log(specialists1.length.toString());
    return specialists1;
  }

  Future<List<String>> medicaltype() async {
    Response responce = await dio
        .get('http://192.168.1.76:8000/api/users/lookups/medical-types');

    var type = responce.data['values'];

    return (type);
  }

  savenotify(String userid, String msg, String title) async {
    Response response = await dio
        .post('http://192.168.1.76:8000/api/users/notification/', data: {
      "user": userid,
      "msg": msg,
      "title": title,
    });
  }

  Future<List<Notify>> getnotify(String email) async {
    print('hello');
    Response responce = await dio.get(
        'http://192.168.1.76:8000/api/users/notification/?user__email=${email}');
    //Specialists specialists = Specialists.fromJson(responce.data);

    List<Notify> not = responce.data.map<Notify>((e) {
      return Notify.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    print('this is length ' + not.length.toString());
    return not;
  }

  postfav(String patient, String special) async {
    Response response = await dio.post(
        'http://192.168.1.76:8000/api/users/fav/',
        data: {"patient": patient, "special": special});
  }

  Future<List<Favr>> getfav(String patient) async {
    Response responce = await dio
        .get('http://192.168.1.76:8000/api/users/fav/?patient__id=${patient}');

    List<Favr> specialists1 = responce.data.map<Favr>((e) {
      return Favr.fromJson(e);
    }).toList();

    log(specialists1.length.toString());
    return specialists1;
  }

  Future<List<SpecialistProfile>> getspecialbytype(String type) async {
    Response responce = await dio
        .get('http://192.168.1.76:8000/api/users/allspeciallist/?type=${type}');
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());
    log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return specialists1;
  }

  Future<List<SpecialistProfile>> rec_via_type(String type, String id) async {
    Response responce = await dio.post(
        'http://192.168.1.76:8000/api/users/rec_special/',
        data: {'id': id, 'type': type});
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());
    log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return specialists1;
  }

  Future<List<SpecialistProfile>> rec_via_bot(String id) async {
    Response responce = await dio
        .post('http://192.168.1.76:8000/api/users/rec_chatbot/', data: {
      'id': id,
    });
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());
    log(responce.data.toString());

    List<SpecialistProfile> specialists1 =
        responce.data.map<SpecialistProfile>((e) {
      return SpecialistProfile.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return specialists1;
  }

  palid(String name, String id) async {
    Response responce = await dio.post(
        'http://192.168.1.76:8000/api/users/palestineid/',
        data: {"id": id, "name": name});
    print(responce.data.toString());
    return responce.data.toString();
  }

  comp_fav(String id, String id1) async {
    Response responce = await dio.post(
        'http://192.168.1.76:8000/api/users/comp_fav/',
        data: {"id": id, "id1": id1});
    print(responce.data.toString());
    return responce.data.toString();
  }

  notify_delete(String id) async {
    Response responce = await dio.post(
        'http://192.168.1.76:8000/api/users/notification_delete_specific/',
        data: {
          "id": id,
        });
    print(responce.data.toString());
    return responce.data.toString();
  }

  Future<List<AppoimentApi>> view_appoiment_specail(
      String special, String date, String status) async {
    List<AppoimentApi> appoiment = [];
    Response responce;

    try {
      responce = await dio.get(
          'http://192.168.1.76:8000/api/users/viewappoiment/?specialist__id=$special&date=$date&status=$status');
      //Specialists specialists = Specialists.fromJson(responce.data);
      print(responce.data.toString());

      appoiment = responce.data.map<AppoimentApi>((e) {
        return AppoimentApi.fromJson(e);
      }).toList();
      print(appoiment.length.toString());
      return appoiment;
    } on Exception catch (e) {
      print(e.toString());
      Get.to(NoconnectionScreen());
    }

    return appoiment;
  }

  Future<List<AppoimentApi>> view_appoiment_patient(
      String special, String date, String status) async {
    List<AppoimentApi> appoiment = [];
    Response responce;

    try {
      responce = await dio.get(
          'http://192.168.1.76:8000/api/users/viewappoiment/?patient__id=$special&date=$date&status=$status');
      //Specialists specialists = Specialists.fromJson(responce.data);
      print(responce.data.toString());

      appoiment = responce.data.map<AppoimentApi>((e) {
        return AppoimentApi.fromJson(e);
      }).toList();
      print(appoiment.length.toString());
      return appoiment;
    } on Exception catch (e) {
      print(e.toString());
      Get.to(NoconnectionScreen());
    }

    return appoiment;
  }

  deleteappoiment(String id) async {
    await dio.post('http://192.168.1.76:8000/api/users/appoiment_cancel/',
        data: {"id": id});
  }

  doneappoiment(String id) async {
    await dio.post('http://192.168.1.76:8000/api/users/appoiment_done/',
        data: {"id": id});
  }

  sendmessage(String text, String sender, String receiver) async {
    print('ffff');
    await dio.post('http://192.168.1.76:8000/api/users/chat/', data: {
      "text": text,
      "time": DateTime.now().toString(),
      "sender": sender,
      "receiver": receiver
    });
  }

  Future<List<Userapi>> how_i_am_talk(String email) async {
    Response response = await dio
        .post('http://192.168.1.76:8000/api/users/how_i_am_talk/', data: {
      "email": email,
    });

    List<Userapi> user = response.data.map<Userapi>((e) {
      return Userapi.fromJson(e);
    }).toList();
    // print(specialists1.length.toString());
    // log(specialists1.length.toString());
    return user;
  }

  convert_corona() async {
    await dio.post('http://192.168.1.76:8000/api/users/convert_corona/');
  }

  convert_nothing() async {
    await dio.post('http://192.168.1.76:8000/api/users/convert_nothing/');
  }
}
