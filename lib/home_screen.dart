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
          children: [
            ListTile(
              leading: const Icon(Icons.hail_rounded),
              title: Text('Hora de salida',
              style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('11-02-2024 - Las Vegas'),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
            ListTile(
              leading: const Icon(Icons.mode_of_travel),
              title: Text('Duración',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('11-02-2024 - Las Vegas'),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
            ListTile(
              leading: const Icon(Icons.wallet_travel_sharp),
              title: Text('LLegada',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('11-02-2024 - Las Vegas'),
              trailing: const Icon(Icons.arrow_circle_right),
            ),
          ],
        ),
      );
  }
}