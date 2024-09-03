import 'package:app10_taskdb_2024/db/db_admin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                DbAdmin.db.getTask();
                
              },
              child: Text("Mostrar data"),
            ),

            ElevatedButton(
              onPressed: () {
                DbAdmin.db.insertTask();
                print("Tarea insertada!!");
              },
              child: Text("Insertar Task"),
            ),
          ],
        ),
      ),
    );
  }
}
