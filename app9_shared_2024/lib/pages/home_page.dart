import 'package:app9_shared_2024/widgets/my_drawer_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  int gender = 1;

  saveSharedPreferences() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("myKey", "Men Li Hector Flores Ticona");
    _preferences.setBool("myBool", false);
    print("Guardando en shared preferences!!!");
  }

  getSharedPreferences() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    String name = _preferences.getString("myKey") ?? "-";
    bool res =    _preferences.getBool("myBool") ?? false;

    print(name);
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shared Preferences App",
        ),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Configuración General",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Dirección actual",
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Switch(value: true, onChanged: (bool value){}),
            SwitchListTile(
              value: isDarkMode,
              onChanged: (bool value) {
                isDarkMode = value;
                setState(() {});
              },
              title: Text("Dark mode"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Radio(value: 0, groupValue: 1, onChanged: (int? value){},),
            RadioListTile(
              value: 1,
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
              title: Text("Male"),
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
              title: Text("Female"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            ElevatedButton.icon(
              onPressed: () {
                //saveSharedPreferences();
                getSharedPreferences();
              },
              icon: Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: Text(
                "Save Data",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
