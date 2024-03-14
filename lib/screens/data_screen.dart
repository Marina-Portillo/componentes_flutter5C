import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({
    Key? key,
    required this.nombre,
    required this.valueSwitch,
    required this.valueSlider,
    required this.selectedRadioOption,
    required this.selectedCheckOptions,
  }) : super(key: key);

  final String? nombre;
  final bool valueSwitch;
  final double valueSlider;
  final int selectedRadioOption;
  final List<String> selectedCheckOptions;

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  String? nombre;
  bool valueSwitch = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;
  List<String> selectedCheckOptions = [];

  openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta = 
          MaterialPageRoute(builder: (context) => const HomeScreen());
    switch(index){
      case 0: ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
      case 1: ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
      case 2: ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
          break;
      case 3: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
          break;
      case 4: ruta = MaterialPageRoute(builder: (context) => const imagesScreen());
          break; 
  case 5: ruta = MaterialPageRoute(builder: (context) => DataScreen(
      nombre: nombre,
      valueSwitch: valueSwitch,
      valueSlider: valueSlider,
      selectedRadioOption: selectedRadioOption,
      selectedCheckOptions: selectedCheckOptions,
    ),
  );
  break;
          } 
    selectedIndex = index;
      print('selectedIndex = $selectedIndex');
      Navigator.push(
        context, ruta
        );
    }); 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Guardados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${widget.nombre}',
              style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Te gusta Flutter: ${widget.valueSwitch ? 'Sí' : 'No'}',
              style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '¿Qué tanto te gusta Flutter?: ${widget.valueSlider.toString()}',
              style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Prefieres usar para desarrollo móvil: ${widget.selectedRadioOption == 1 ? 'Kotlin' : 'Flutter'}',
              style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Opciones seleccionadas:',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.selectedCheckOptions
                  .map((option) => Text(
                        '- $option',
                        style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                      ))
                  .toList(),
            ),
          ],
        ),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 9, 51, 238),
        unselectedItemColor: AppTheme.backColor,
        onTap: (index) => openScreen(index),
        items: const[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 53, 56, 243),
            icon: Icon(Icons.home_outlined),
            label: "inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input_rounded),
            label: "Entradas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: "Imágenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium,
      ),
    );
  }
}
