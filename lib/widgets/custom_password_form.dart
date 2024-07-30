import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: _isHidden,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    hintText: 'Password',
                    suffix: InkWell(
                      onTap: _togglePass,
                      child: Icon(
                          _isHidden ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
              );
  }

  void _togglePass() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
