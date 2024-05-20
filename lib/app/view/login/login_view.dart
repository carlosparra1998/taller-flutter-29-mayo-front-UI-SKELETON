import 'package:flutter/material.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_button.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_text_field.dart';
import 'package:taller_29_mayo_front/app/view/home/home_view.dart';
import 'package:taller_29_mayo_front/app/view/register/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenido a nuestro gran servicio!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              MyTextField(labelText: 'Usuario'),
              SizedBox(height: 20),
              MyTextField(labelText: 'Contraseña'),
              SizedBox(height: 30),
              MyButton(
                label: 'Inicio',
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomeView()),
                      (Route<dynamic> route) => false);
                },
              ),
              SizedBox(height: 20),
              MyButton(
                label: 'No tienes cuenta, regístrate',
                containsBorder: false,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const RegisterView()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
