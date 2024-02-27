import 'dart:html';

import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {

  bool valueSwitch = false;
  double valueSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas')),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Entradas',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        entradaTexto(),
        entradaSwitch(),
        entradaSlider(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Regresar',
              
              ),
              ),
              ElevatedButton(
              onPressed: null,
              child: Text(
                'Ir a Data Screen',
              ),
              ),
          ],
        ),
      ],
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
}