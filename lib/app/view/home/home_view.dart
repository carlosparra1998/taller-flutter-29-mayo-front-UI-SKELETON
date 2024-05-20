import 'package:flutter/material.dart';
import 'package:taller_29_mayo_front/app/reutilizables/my_task.dart';

import 'dialogs/add_task.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: MyTask(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 5,
        onPressed: () {
          addTaskDialog(context);
        },
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  Widget emptyMessage() {
    return Text(
      'Para crear una tarea, presiona el botón flotante',
      style: TextStyle(fontSize: 20),
    );
  }
}
