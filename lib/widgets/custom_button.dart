import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 350,
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onPressed: onTap,
      color: const Color(0xFF0651CB),
      highlightColor: Colors.black,
      splashColor: Colors.white,
      textColor: Colors.white,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
