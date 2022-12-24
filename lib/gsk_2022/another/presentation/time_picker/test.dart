import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/Availability.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/TimeRangePickerDialog.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget_time_test extends StatelessWidget {
  //const MyWidget_time_test({Key? key}) : super(key: key);
  static List<int> timee = [9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22];

  initState() {
    // int x = timee.indexOf(9);
    // int y = timee.indexOf(10);
    // timee.removeRange(x, y);
    // print(x);
    // print(timee);
    // timee.removeAt(0);
    // timee.removeAt(1);
    // print(timee) ;
  }

  MyWidget_time_test() {
    int x = timee.indexOf(convert('09:00 AM'));
    int y = timee.indexOf(convert('10:00 AM'));
    timee.removeRange(x, y + 1);
    print(timee);
  }
  Availability availability = Availability(
      date: DateTime.now(),
      reservationFrom: 9,
      reservationTo: 21,
      available: timee);

  @override
  Widget build(BuildContext context) {
    return TimeRangePickerDialog(availability, 4, 4, 40);
  }
}

int convert(String x) {
  if (x == '09:00 AM') {
    return 9;
  }

  if (x == '10:00 AM') {
    return 10;
  }

  return 0;
}
