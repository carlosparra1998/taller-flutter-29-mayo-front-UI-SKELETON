import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? labelText;
  final TextEditingController? controller;
  const MyTextField({super.key, this.labelText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
