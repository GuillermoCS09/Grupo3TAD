import 'package:flutter/material.dart';
import 'package:proyecto_sm/pages/Calendario.dart';
import 'package:proyecto_sm/viewmodel/reservar_viewmodel.dart';
import 'package:proyecto_sm/model/reservar_model.dart';
import 'package:proyecto_sm/view/calendario_view.dart';

var textoCalendario = "  Escoge tu fecha";

class ReservarView extends StatefulWidget {
  final ReservarViewModel viewModel;

  ReservarView({required this.viewModel});

  @override
  _ReservarViewState createState() => _ReservarViewState();
}

class _ReservarViewState extends State<ReservarView> {
  var predValue = "Cargando..."; // Texto de carga inicial
  late List<Reserva> reservas;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          titulo(context),
          prediccionReservas(widget.viewModel.predValue),
          barraBusqueda(context),
          Filtros(),
          salones(context), // Pasa las reservas al widget de salones
        ],
      ),
    );
  }

  Widget titulo(context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 65, vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: const Text(
        'Reserva de Salones',
        style: TextStyle(
          fontSize: 24,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget prediccionReservas(var predValue){
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16),
      child: Text(
          "Reservas estimadas para hoy: $predValue",
          style: const TextStyle(fontSize: 16,
            fontFamily: 'ReadexPro',
            color: Colors.black,)
      ),
    );
  }

  Widget barraBusqueda(context){
    return Container(
      width: 365.0,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Buscar Aulas',
          prefixIcon: Icon(
              Icons.search,
              color: Colors.black),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }

  Widget salones(context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFF1F4F8),
            ),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 44),
                    child: ListView(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          buildCenteredContainer(context, 'Aula 101', 'Antiguo Pabellón', 'assets/images/aula101.jpg'),
                          buildCenteredContainer(context, 'Aula 102', 'Antiguo Pabellón', 'assets/images/aula102.jpg'),
                          buildCenteredContainer(context, 'Aula 103', 'Antiguo Pabellón', 'assets/images/aula103.jpg'),
                          buildCenteredContainer(context, 'Aula 104', 'Antiguo Pabellón', 'assets/images/aula104.jpg'),
                        ]
                    ),
                  ),
                ]
            ),
          ),
        ]
    );
  }

  Widget buildCenteredContainer(BuildContext context, String aula, String pabellon, String imagePath) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
      child: Container(
        width: 220,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFFE0E3E7),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imagePath,
                  width: 192,
                  height: 144,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                      child: Text(
                        aula,
                        style: const TextStyle(
                          fontFamily: 'ReadexPro',
                          fontSize: 16,
                          color: Color(0xFF14181B),
                        ),
                      ),
                    ),
                    Text(
                      pabellon,
                      style: const TextStyle(
                        fontFamily: 'ReadexPro',
                        fontSize: 14,
                        color: Color(0xFF57636C),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(
                          0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Calendario()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            // iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            backgroundColor: const Color(0xFF4B39EF),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(113.0, 40.0),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12), // Bordes redondeados del botón
                              side: const BorderSide(
                                color: Colors.transparent, // Color del borde
                                width: 1, // Ancho del borde
                              ),
                            ),
                          ),
                          child: const Text(
                            'Ver detalles',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: 'ReadexPro'
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
class Filtros extends StatefulWidget {
  @override
  _FiltrosState createState() => _FiltrosState();
}

class _FiltrosState extends State<Filtros> {
  List<String> items = ['Seleccione la hora','8:00 - 9:00', '9:00 - 10:00', '10:00 - 11:00', '11:00 - 12:00'];
  String selectedItem = "Seleccione la hora";
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 398,
      height: 73,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 15), // Ajusta la cantidad de espacio a la izquierda
            child: Container(
              width: 170,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFC7C5C5),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    textoCalendario,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'ReadexPro',
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.calendar_today,
                      color: Colors.black,
                      size: 24,
                    ),
                    onPressed: () async {
                      final DateTime? dateTime = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );
                      if (dateTime != null) {
                        setState(() {
                          selectedDate = dateTime;
                          textoCalendario = textoCalendario = " ${dateTime.year}-${dateTime.month}-${dateTime.day}";
                        });
                      }
                    }
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 180, // Ajusta el ancho del Container para el campo de entrada
            child: InputDecorator(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(width: 2, color: Color(0xFFC7C5C5)),
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedItem,
                  items: items.map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'ReadexPro',
                        color: Colors.black,
                      ),
                    ),
                  )).toList(),
                  onChanged: (item) {
                    setState(() {
                      selectedItem = item!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    )
    ;
  }
}