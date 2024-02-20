import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.input_rounded,
                                  color:Color.fromARGB(255, 25, 11, 230)),
              title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Diferentes widgets para entradas de flutter',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.list_alt_rounded,
                  color: Color.fromARGB(255, 25, 11, 230)),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Scroll infinito',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.notification_add,
                color: Color.fromARGB(255, 25, 11, 230)),
              title: Text(
                'Notificaciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Creación de notificaciones',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
      );
  }
}