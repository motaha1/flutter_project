import 'package:flutter/material.dart';

enum HourPickerHourState {
  START,
  MIDDLE,
  END,
  EMPTY
}

class HourPickerSingleHour extends StatelessWidget {
  final double START_END_CIRCLE_RADIUS = 16;
  final double START_END_PERIOD_MARGIN = 12;

  final HourPickerHourState state;
  final String timeHeader;
  final String dateParam;
  final String dateTime;
  final bool hoursAvailability;

  const HourPickerSingleHour(
      this.state,
      this.timeHeader,
      this.dateParam,
      this.dateTime,
      this.hoursAvailability);

  @override
  Widget build(BuildContext context) {
    EdgeInsets margin = EdgeInsets.only(
        left: state == HourPickerHourState.START ? START_END_PERIOD_MARGIN : 0,
        right: state == HourPickerHourState.END ? START_END_PERIOD_MARGIN : 0,
        bottom: 0,
        top: 0,
    );
    Color backgroundColor = Color.fromARGB(
        state == HourPickerHourState.EMPTY ? 0 : 35, 0, 0, 255);

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: state == HourPickerHourState.START ? Radius.circular(START_END_CIRCLE_RADIUS) : Radius.circular(0),
          bottomLeft: state == HourPickerHourState.START ? Radius.circular(START_END_CIRCLE_RADIUS) : Radius.circular(0),
          topRight: state == HourPickerHourState.END ? Radius.circular(START_END_CIRCLE_RADIUS) : Radius.circular(0),
          bottomRight: state == HourPickerHourState.END ? Radius.circular(START_END_CIRCLE_RADIUS) : Radius.circular(0),
        )
      ),
      alignment: Alignment.center,
      child: Text(
        timeHeader,
        key: Key(
            'text_dayHour_${dateParam}_${dateTime}'),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'SofiaPro',
            fontSize: 16,
            color: hoursAvailability
                ? Colors.grey
                : Color.fromARGB(255, 238, 8, 8)),
      ),
    );
  }
}