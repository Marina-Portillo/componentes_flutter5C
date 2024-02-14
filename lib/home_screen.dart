import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.hail_rounded),
              title: Text('Hora de salida',
                  style: TextStyle(color: Color.fromARGB(255, 8, 245, 28),
                  fontWeight: FontWeight.bold,
              ),
              ),
              subtitle: Text('11-02-2024 - Las Vegas'),
              trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.mode_of_travel),
              title: Text(
                'Duración',
                  style: TextStyle(color: Color.fromARGB(255, 245, 221, 8),
                  fontWeight: FontWeight.bold,
              ),
              ),
              subtitle: Text('11-02-2024 - Las Vegas'),
              trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.wallet_travel_sharp),
              title: Text('LLegada',
                  style: TextStyle(color: Color.fromARGB(255, 245, 83, 8),
                  fontWeight: FontWeight.bold,
              ),
              ),
              subtitle: Text('11-02-2024 - Las Vegas'),
              trailing: Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
      );
  }
}