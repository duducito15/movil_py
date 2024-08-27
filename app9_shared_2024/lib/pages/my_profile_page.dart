import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfilePage extends StatefulWidget {
  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  
  String fullName = "";
  String address = "";

  @override
  void initState() {
    super.initState();
    getSharedPreferences();
  }

  getSharedPreferences() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
     fullName = _preferences.getString("fullName") ?? "-";
     address = _preferences.getString("address") ?? "-";
     setState(() {   
     });
     print(fullName);
     print(address);
  }

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
              title: Text(fullName),
              subtitle: Text("Nombre completo"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text(address),
              subtitle: Text("Dirección"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Activo"),
              subtitle: Text("Modo oscuro"),
            ),
            ListTile(
              leading: Icon(Icons.transgender),
              title: Text("Aqui va genero"),
              subtitle: Text("Genero"),
            ),
          ],
        ),
      ),
    );
  }
}
