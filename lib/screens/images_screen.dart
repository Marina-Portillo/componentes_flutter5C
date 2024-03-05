import 'package:flutter/material.dart';

class imagesScreen extends StatefulWidget {
  const imagesScreen({super.key});

  @override
  State<imagesScreen> createState() => _imagesScreenState();
}

class _imagesScreenState extends State<imagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Imágenes',
      ),
      ),
      body: ListView(
        children: [
          imageCard(),
        ],
      ) );
  }
  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
        child: const Image(
            image: AssetImage('assets/imgs/imagen3.gif'),
              ),
        
    );
  }
}
