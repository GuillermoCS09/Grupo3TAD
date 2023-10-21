import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:proyecto_sm/model/calendario_model.dart'; // Importa el modelo
import 'package:proyecto_sm/viewmodel/calendario_viewmodel.dart'; // Importa el ViewModel

void main() {
  runApp(Calendario());
}

class Calendario extends StatelessWidget {
  final CalendarViewModel viewModel = CalendarViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Reserva tu horario'),
        backgroundColor: const Color(0xFF4B39EF),),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: SfCalendar(
            view: CalendarView.week,
            dataSource: viewModel.calendarDataSource,
            firstDayOfWeek: 1,
            viewHeaderStyle: ViewHeaderStyle(
              dayTextStyle: TextStyle(fontSize: 15)
            ),
            timeSlotViewSettings: TimeSlotViewSettings(
              startHour: 8,
              endHour: 20,
            ),
          ),
        ),
      );
  }
}
