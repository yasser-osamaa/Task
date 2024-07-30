import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 400,
      child: Column(
        children: [
          Image.asset('assets/images/pexels-madebymath-90946.jpg'),
          const Text(
            'Camera Film',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const Text(
            '3,999 EGP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
