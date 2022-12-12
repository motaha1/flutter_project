import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/Availability.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/TimeRangePickerDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget_time_test extends StatelessWidget {
//  const MyWidget({Key? key}) : super(key: key);

  Availability availability = Availability(
      date: DateTime.now(),
      reservationFrom: 9,
      reservationTo: 21,
      available: [9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TimeRangePickerDialog(availability, 4, 4, 40),
    );
  }
}
