import 'package:flutter/material.dart';

class MyFormWidget extends StatefulWidget {
  const MyFormWidget({super.key});

  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  bool isFinished = false;

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
            decoration: InputDecoration(hintText: "Título"),
          ),
          SizedBox(
            height: 6.0,
          ),
          TextField(
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
                onPressed: () {},
                child: Text("Aceptar"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
