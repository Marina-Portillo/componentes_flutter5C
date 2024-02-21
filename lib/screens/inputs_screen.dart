import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Entradas',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Regresar',
              style: TextStyle(color: Color.fromARGB(246, 9, 12, 207)
              ),
              ),
              ),
              ElevatedButton(
              onPressed: null,
              child: Text(
                'Ir a Data Screen',
              style: TextStyle(color: Color.fromARGB(246, 9, 12, 207)
              ),
              ),
              ),
          ],
        ),
      ],
    );
  }
}