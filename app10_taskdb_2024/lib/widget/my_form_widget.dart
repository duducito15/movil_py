import 'package:app10_taskdb_2024/db/db_admin.dart';
import 'package:app10_taskdb_2024/models/task_model.dart';
import 'package:flutter/material.dart';

class MyFormWidget extends StatefulWidget {
  const MyFormWidget({super.key});

  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool isFinished = false;

  addTask() {
    TaskModel taskModel = TaskModel(
        title: _titleController.text,
        description: _descriptionController.text,
        status: isFinished.toString());
    DbAdmin.db.insertTask(taskModel);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Agregar tarea"),
          SizedBox(
            height: 6.0,
          ),
          TextField(
            controller: _titleController,
            decoration: InputDecoration(hintText: "Título"),
          ),
          SizedBox(
            height: 6.0,
          ),
          TextField(
            controller: _descriptionController,
            maxLines: 2,
            decoration: InputDecoration(hintText: "Descripción"),
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            children: [
              Text("Estado: "),
              Checkbox(
                value: isFinished,
                onChanged: (value) {
                  isFinished = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              ElevatedButton(
                onPressed: () {
                  addTask();
                },
                child: Text("Aceptar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
