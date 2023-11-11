import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:proyecto_sm/model/calendario_model.dart'; // Importa el modelo
import 'package:proyecto_sm/viewmodel/calendario_viewmodel.dart';
import 'package:time_range_picker/time_range_picker.dart'; // Importa el ViewModel

void main() {
  runApp(Calendario());
}
class Strings {
  static const String open = 'Hora Inicio';
  static const String close = 'Hora Fin';
}

class Calendario extends StatelessWidget {
  final CalendarViewModel viewModel = CalendarViewModel();

  // Función asociada al primer botón
  void onButton1Pressed(BuildContext context) async {
    print("Button 1 pressed");
    TimeRange? result = await showTimeRangePicker(
      context: context,
      start: const TimeOfDay(hour: 10, minute: 0),
      end: const TimeOfDay(hour: 20, minute: 0),
      interval: const Duration(hours: 1),
      minDuration: const Duration(hours: 1),
      maxDuration: const Duration(hours: 2),
      use24HourFormat: false,
      disabledTime: TimeRange(
        startTime: const TimeOfDay(hour: 20, minute: 0),
        endTime: const TimeOfDay(hour: 8, minute: 0),
      ),
      disabledColor: Colors.white,
      strokeWidth: 8,
      strokeColor: Colors.green.shade500.withOpacity(0.8),
      ticks: 8,
      ticksLength: 32,
      ticksColor: Colors.grey,
      labels: [
        '12 AM',
        '3 AM',
        '6 AM',
        '9 AM',
        '12 PM',
        '3 PM',
        '6 PM',
        '9 PM',
      ].asMap().entries.map((e) {
        return ClockLabel.fromIndex(
            idx: e.key, length: 8, text: e.value);
      }).toList(),
      labelOffset: 36,
      rotateLabels: false,
      padding: 64,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: Colors.grey.shade700,
      ),
      timeTextStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Colors.white,
      ),
      activeTimeTextStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Colors.white,
      ),
      fromText: Strings.open,
      toText: Strings.close,
      handlerColor: Colors.green.shade600,
      selectedColor: Colors.green.shade400,
    );
    if (result != null) {
      print("result " + result.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva tu horario'),
        backgroundColor: const Color(0xFF4B39EF),
      ),
      body: Column(
        children: [
          Expanded(
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: SfCalendar(
                view: CalendarView.week,
                dataSource: viewModel.calendarDataSource,
                firstDayOfWeek: 1,
                viewHeaderStyle: ViewHeaderStyle(
                  dayTextStyle: TextStyle(fontSize: 15),
                ),
                timeSlotViewSettings: TimeSlotViewSettings(
                  startHour: 8,
                  endHour: 20,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () => onButton1Pressed(context),
                child: Text('Button 1'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
