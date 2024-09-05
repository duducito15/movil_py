import 'package:app10_taskdb_2024/db/db_admin.dart';
import 'package:app10_taskdb_2024/models/task_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showDialogForm() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Agregar tarea"),
              SizedBox(
                height: 6.0,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Título"),
              ),
              SizedBox(
                height: 6.0,
              ),
              TextField(
                maxLines: 2,
                decoration: InputDecoration(hintText: "Descripción"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Cancelar"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Aceptar"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialogForm();
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: DbAdmin.db.getTask(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            List<TaskModel> myTasks = snap.data;
            return ListView.builder(
              itemCount: myTasks.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(myTasks[index].title),
                  subtitle: Text(myTasks[index].description),
                  trailing: Text(myTasks[index].id.toString()),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
