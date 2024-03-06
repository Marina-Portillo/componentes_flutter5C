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
          imageWeb(),
        ],
      ) );
  }
  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(20),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
              children: [
                const Image(
              image: AssetImage('assets/imgs/imagen3.gif'),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text('Sasuke Uchiha' ,
                        style: TextStyle(fontSize: 30)
                        ),
                ),
              ],
          ),
        ), 
    );
  }
  Widget imageWeb(){
    return Center(
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsoFIilEBtqfLNWi9xrtFqTcQY4vp7IWHKsA&usqp=CAU'
        ),
    );
  }
}
