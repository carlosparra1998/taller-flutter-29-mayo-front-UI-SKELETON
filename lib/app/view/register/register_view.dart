import 'package:flutter/material.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_button.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Registro'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Únete a nuestro gran servicio', style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              MyTextField(labelText: 'Usuario'),
              SizedBox(height: 20),
              MyTextField(labelText: 'Contraseña'),
              SizedBox(height: 20),
              MyTextField(labelText: 'Repite la contraseña'),
              SizedBox(height: 30),
              MyButton(label: 'Registro'),
            ],
          ),
        ),
      ),
    );
  }
}
