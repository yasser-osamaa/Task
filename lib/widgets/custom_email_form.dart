import 'package:flutter/material.dart';

class NormalForm extends StatelessWidget {
  const NormalForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'email or username',
          hintText: 'enter email or username',
          border: OutlineInputBorder(),
        ),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
