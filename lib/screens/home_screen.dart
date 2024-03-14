import 'package:flutter/material.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
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
              leading: IconTheme(
                data:AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.input_rounded,
                color: Color.fromARGB(255, 7, 11, 247),
                ),
                ),
                title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Diferentes widgets para entradas de flutter',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              // trailing: const CircularProgressIndicator(
              //   //value: 0.4,
              //   strokeWidth: 10.0,
              //   color: AppTheme.mainColor,
              //   backgroundColor: Color.fromARGB(255, 41, 4, 110),
              // ),
              trailing: IconTheme(
                data:AppTheme.lightTheme.iconTheme,
                child:const Icon(Icons.arrow_circle_right,
                ),
              ),
              onTap: (){
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const InputsScreen();
                });
                Navigator.push(context, ruta1);
              }
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data:AppTheme.lightTheme.iconTheme,
                child:const Icon(Icons.list_alt_rounded,
                color: Color.fromARGB(255, 7, 11, 247),
                ),
                ),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Scroll infinito',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
                trailing: IconTheme(
                data:AppTheme.lightTheme.iconTheme,
                child:const Icon(Icons.arrow_circle_right),
                ),
              onTap: (){
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteListScreen();
                });
                Navigator.push(context, ruta2);
              }
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data:AppTheme.lightTheme.iconTheme,
                child:const Icon(Icons.notification_add,
                color: Color.fromARGB(255, 7, 11, 247),
                ),
                ),
              title: Text(
                'Notificaciones',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Creación de notificaciones',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
                trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.arrow_circle_right),
                ),
              onTap: (){
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NotificationsScreen();
                });
                Navigator.push(context, ruta3);
              },
            ),
            const Divider(),
            ListTile(
              leading: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.image,
                color: Color.fromARGB(255, 7, 11, 247),
                ),
              ),
              title: Text(
                'Imágenes',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              subtitle: Text(
                'Widgets de imagenes',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
              trailing: IconTheme(
                data: AppTheme.lightTheme.iconTheme,
                child: const Icon(Icons.arrow_circle_right),
                ),
                onTap: (){
                final ruta4 = MaterialPageRoute(builder: (context){
                  return const imagesScreen();
                });
                Navigator.push(context, ruta4);
              }
            ),
            
          ],
        ),
      );
  }
}