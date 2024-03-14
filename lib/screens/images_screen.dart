import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:practica3/theme/app_theme.dart';

class imagesScreen extends StatefulWidget {
  const imagesScreen({super.key});

  @override
  State<imagesScreen> createState() => _imagesScreenState();
}

class _imagesScreenState extends State<imagesScreen> {
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
      case 3: ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
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
          'Imágenes',
      ),
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],

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
            Icons.notification_add,
            color: Color.fromARGB(255, 242, 243, 245)
            ),
          label: "Notificaciones",
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
              image: AssetImage('assets/imgs/imagen3.gif')
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
  Stack imageWeb(){
    return Stack(
      children: <Widget>[
        const Center(
            child: CircularProgressIndicator(),
            ),
        
        Center(
          child: SizedBox(
            height: 450,
            width: 450,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsoFIilEBtqfLNWi9xrtFqTcQY4vp7IWHKsA&usqp=CAU',
              ),
          ),
            //para mostrar una imagen de la web
        //     Image.network
        ),
        ],
    );
  }
}
