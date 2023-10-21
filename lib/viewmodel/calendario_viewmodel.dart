import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:proyecto_sm/model/calendario_model.dart';
import 'package:proyecto_sm/view/calendario_view.dart';

class CalendarViewModel {
  final List<Meeting> _meetings = <Meeting>[];
  final CalendarDataSource calendarDataSource;

  CalendarViewModel() : calendarDataSource = MeetingDataSource(<Meeting>[]) {
    initializeMeetings();
  }

  void initializeMeetings() {
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    _meetings.add(Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));
    calendarDataSource.appointments = _meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source){
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}