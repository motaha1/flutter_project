import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/Availability.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/HourPickerSingleHour.dart';
import 'package:flutter/material.dart';
//import 'availability.dart';
//import 'picker_single_hour.dart';

class TimeRangePickerDialog extends StatefulWidget {
  final Availability data;
  final double crossAxisSpacing;
  final int crossAxisCount;
  final double cellHeight;

  TimeRangePickerDialog(
      this.data, this.crossAxisSpacing, this.crossAxisCount, this.cellHeight);

  @override
  State<TimeRangePickerDialog> createState() => _TimeRangePickerDialogState(
      data, crossAxisSpacing, crossAxisCount, cellHeight);
}

class _TimeRangePickerDialogState extends State<TimeRangePickerDialog> {
  final Availability data;
  final double crossAxisSpacing;
  final int crossAxisCount;
  final double cellHeight;

  _TimeRangePickerDialogState(
      this.data, this.crossAxisSpacing, this.crossAxisCount, this.cellHeight);

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _width = (_screenWidth - ((crossAxisCount - 1) * crossAxisSpacing)) /
        crossAxisCount;
    final _aspectRatio = _width / cellHeight;

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: _aspectRatio),
        itemCount: data.hours.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  handleSelection(data, index);
                  print(data.periodStartIndex);
                  print(data.periodEndIndex);
                  print(data.hours[index].time);
                  //   print(data.date.param);
                });
              },
              child: HourPickerSingleHour(
                  selectAppropriateItemState(data, index),
                  data.hours[index].time,
                  data.date.param,
                  data.hours[index].time,
                  data.hours[index].availability),
            ));
  }

  void handleSelection(Availability data, int index) {
    if (data.periodStartIndex == null && data.periodEndIndex == null)
      data.periodStartIndex = index;
    else if (data.periodStartIndex != null && data.periodEndIndex == null) {
      data.periodEndIndex = index;

      // prevent selection of hours in wrong order
      if (data.periodStartIndex != null &&
          data.periodEndIndex != null &&
          data.periodStartIndex! > data.periodEndIndex!) {
        data.periodStartIndex = null;
        data.periodEndIndex = null;
      }
    } else {
      data.periodStartIndex = null;
      data.periodEndIndex = null;
    }
  }

  HourPickerHourState selectAppropriateItemState(Availability data, int index) {
    if (data.periodStartIndex == index)
      return HourPickerHourState.START;
    else if (data.periodEndIndex == index)
      return HourPickerHourState.END;
    else if (data.periodStartIndex != null &&
        data.periodEndIndex != null &&
        data.periodStartIndex! < data.periodEndIndex! &&
        index < data.periodEndIndex! &&
        index > data.periodStartIndex!)
      return HourPickerHourState.MIDDLE;
    else
      return HourPickerHourState.EMPTY;
  }
}
