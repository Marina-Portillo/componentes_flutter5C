
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica3/screens/data_screen.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
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
      case 1: ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
          break;
      case 2: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
          break;
      case 3: ruta = MaterialPageRoute(builder: (context) => const imagesScreen());
          break; 
  case 4: ruta = MaterialPageRoute(builder: (context) => DataScreen(
      nombre: nombre,
      valueSwitch: valueSwitch,
      valueSlider: valueSlider,
      selectedRadioOption: selectedRadioOption,
      selectedCheckOptions: selectedCheckOptions,
    ),
  );

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
        title: const Text(
          'Entradas',
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              onChanged: (value) {
                nombre = value;
              },
              style: const TextStyle(fontSize: 25.0),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe tu nombre:',
              ),
            ),
            Row(
              children: <Widget>[
                const FlutterLogo(),
                const Text(
                  '¿Te gusta Flutter?',
                  style: TextStyle(fontSize: 25.0),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                Switch(
                  value: valueSwitch,
                  onChanged: (value) {
                    setState(() {
                      valueSwitch = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  '¿Qué tanto te gusta Flutter?',
                  style: TextStyle(fontSize: 25.0),
                ),
                SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 10.0, // Grosor de la línea
            activeTrackColor: Color.fromARGB(255, 21, 5, 160), // Color de la barra
            inactiveTrackColor:  Color.fromARGB(255, 22, 183, 247), //
      ),
                  child: Slider(
                  value: valueSlider,
                  min: 0.0,
                  max: 10.0,

                  divisions: 10,
                  label: valueSlider.toString(),
                  onChanged: (value) {
                    setState(() {
                      valueSlider = value;
                    });
                  },
                ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  '¿Qué prefieres usar para desarrollo móvil?',
                  style: TextStyle(fontSize: 25.0),
                ),
                RadioListTile<int>(
                  title: const Text('Kotlin',
                  style: TextStyle(fontSize: 20.0),),
                  value: 1,
                  groupValue: selectedRadioOption,
                  onChanged: (value) {
                    setState(() {
                      selectedRadioOption = value!;
                    });
                  },
                ),
                RadioListTile<int>(
                  title: const Text('Flutter',
                  style: TextStyle(fontSize: 20.0),),
                  value: 2,
                  groupValue: selectedRadioOption,
                  onChanged: (value) {
                    setState(() {
                      selectedRadioOption = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Navegador',
                style: TextStyle(fontSize: 25),),
                Checkbox(
                  value: selectedCheckOptions.contains('Navegador'),
                  onChanged: (value) {
                    setState(() {
                      if (value!) {
                        selectedCheckOptions.add('Navegador');
                      } else {
                        selectedCheckOptions.remove('Navegador');
                      }
                    });
                  },
                ),
                const Text('Emulador',
                style: TextStyle(fontSize: 25),),
                Checkbox(
                  value: selectedCheckOptions.contains('Emulador'),
                  onChanged: (value) {
                    setState(() {
                      if (value!) {
                        selectedCheckOptions.add('Emulador');
                      } else {
                        selectedCheckOptions.remove('Emulador');
                      }
                    });
                  },
                ),
                const Text('Smartphone',
                style: TextStyle(fontSize: 25),),
                Checkbox(
                  value: selectedCheckOptions.contains('Smartphone'),
                  onChanged: (value) {
                    setState(() {
                      if (value!) {
                        selectedCheckOptions.add('Smartphone');
                      } else {
                        selectedCheckOptions.remove('Smartphone');
                      }
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                openScreen(4); // Abrir la pantalla de datos
              },
              child: const Text('Guardar')
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
          backgroundColor:Color.fromARGB(255, 53, 56, 243),
          icon: Icon(
            Icons.home_outlined,
            color: AppTheme.backColor
            ),
          label: "inicio",
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt,
            color: AppTheme.backColor
            ),
          label: "Lista",
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.notification_add,
            color: Color.fromARGB(255, 242, 243, 245)
            ),
          label: "Notificaciones",
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.image,
            color: AppTheme.backColor
            ),
          label: "Imagenes",
          ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.exit_to_app,
            color: AppTheme.backColor
            ),
          label: "salir",
          ),
      ],
      unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodyMedium
    ),
    );
  } 
  }