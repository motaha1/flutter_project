import 'package:dio/dio.dart';
import 'package:final_grad_proj/models/appoiment_api.dart';
import 'package:final_grad_proj/models/speciallist.dart';
import 'package:final_grad_proj/screens_test/no_connection_screen/presentation/noconnection_screen/noconnection_screen.dart';

import 'package:get/get_core/get_core.dart';
import 'package:get/route_manager.dart';

class DioHelper {
  DioHelper._();
  static DioHelper diohelper = DioHelper._();

  Dio dio = Dio();

  Future<List<Specialists>> getalldoctors() async {
    Response responce =
        await dio.get('http://127.0.0.1:8000/api/users/allspeciallist');
    //Specialists specialists = Specialists.fromJson(responce.data);
    print(responce.data.toString());

    List<Specialists> specialists1 = responce.data.map((e) {
      return Specialists.fromJson(e);
    }).toList();
    print(specialists1.length.toString());
    return specialists1;
  }

  Future<Specialists> getdoctor() async {
    Response responce =
        await dio.get('http://127.0.0.1:8000/api/users/specialists/1');
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
          'http://127.0.0.1:8000/api/users/viewappoiment/?specialist__id=$special&date=$date');
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
    Response responce =
        await dio.post('http://127.0.0.1:8000/api/users/addappoiment/', data: {
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
}
