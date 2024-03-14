import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});
  
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int selectedIndex = 0;
  int selectedRadioOption = 0;

openScreen(int index){
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
        title: const Text(
          'Notificaciones',
      ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
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
            Icons.input_rounded,
            color: AppTheme.backColor
            ),
          label: "Entradas",
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
            Icons.image,
            color: Color.fromARGB(255, 242, 243, 245)
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