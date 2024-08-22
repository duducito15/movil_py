import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mi Información",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12.0, 
            ),
            
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Aqui va el nombre"),
              subtitle: Text("Nombre completo"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Aqui va la direccion"),
              subtitle: Text("Dirección"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Activo"),
              subtitle: Text("Modo oscuro"),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("Aqui va genero"),
              subtitle: Text("Genero"),
            ),
          ],
        ),
      ),
    );
  }
}
