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
      body: FutureBuilder(
        future: DbAdmin.db.getTask(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            List<Map<String, dynamic>> myTasks = snap.data;
            return ListView.builder(
                itemCount: myTasks.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(myTasks[index]["title"]),
                    subtitle: Text(myTasks[index]['description']),
                  );
                },);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
