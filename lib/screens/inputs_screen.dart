
import 'package:flutter/material.dart';
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

  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;

  openScreen(int index){
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
        title: const Text('Entradas')),
    body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          entradaTexto(),
          entradaSwitch(),
          entradaSlider(),
          entradasRadio(),
          Text(
            '¿Qué usas para correr tus apps de Flutter?',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          entradasCheck(),
          const ElevatedButton(
          onPressed: null,
          child: Text(
            'Guardar',
          ),
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
            Icons.list_alt_outlined,
            color: AppTheme.backColor
            ),
          label: "Lista",
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt_outlined,
            color: AppTheme.backColor
            ),
          label: "Notificaciones",
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt_outlined,
            color: AppTheme.backColor
            ),
          label: "Imágenes",
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

  TextField entradaTexto() {
    return TextField(
        style: AppTheme.lightTheme.textTheme.headlineMedium,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: 'Escribe tu nombre: ',
          labelStyle:  AppTheme.lightTheme.textTheme.headlineLarge,
        ),
      );
  }
  
  Row entradaSwitch(){
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value){
            setState(() {
              valueSwitch = value;
              print('Estado de switch: $valueSwitch');
            });
          },
          ),
      ],
    );
  }
  Column entradaSlider(){
    return Column(
      children: [
        Text('¿Que tanto te gusta flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          activeColor: const Color.fromARGB(255, 49, 19, 216),
          inactiveColor: const Color.fromARGB(255, 28, 165, 245),
          thumbColor: const Color.fromARGB(255, 6, 16, 146),
          divisions: 10,
          label: '${valueSlider.round()}',
          min: 0.0,
          max: 10.0,
          value: valueSlider,
          onChanged: (value){
              setState(() {
                valueSlider = value;
                print('Valor de slider: $valueSlider');
              });
          }
        ),
      ],
    );
  }
  Column entradasRadio(){
    return Column(
      children: [
        Text(
          '¿Qué prefieres usar para desarrollo móvil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!;
                  print('opcion seleccionada: $selectedRadioOption');
                });
              },
              ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value){
                setState(() {
                  selectedRadioOption = value!;
                  print('opcion seleccionada: $selectedRadioOption');
                });
              },
              ),
          ),
        )
      ],
    );
  }
  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked1, 
          onChanged: (value){
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked1');
            });
          }),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked2, 
          onChanged: (value){
            setState(() {
              isChecked2 = value!;
              print('Valor de Emulador: $isChecked2');
            });
          }),
          Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked3, 
          onChanged: (value){
            setState(() {
              isChecked3 = value!;
              print('Valor de Smartphone: $isChecked3');
            });
          }),
      ],
    );
  }
}