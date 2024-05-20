import 'package:flutter/material.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_button.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_dropdown.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_text_field.dart';

Future<String?> addTaskDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              icon: Icon(Icons.task),
              title: Text('Añadir tarea'),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 15.0),
                    MyTextField(labelText: 'Título'),
                    const SizedBox(height: 20),
                    MyTextField(labelText: 'Descripción'),
                    SizedBox(height: 20),
                    MyDropdown(
                        items: ["azul", "verde", "null"],
                        value: "verde",
                        onChanged: (v) {}),
                    SizedBox(height: 20),
                    MyDropdown(
                        items: ["azul", "verde", "null"],
                        value: "verde",
                        onChanged: (v) {}),
                    SizedBox(height: 20),
                    MyButton(label: 'Guardar')
                  ],
                ),
              ),
            );
          },
        );
      });
}
