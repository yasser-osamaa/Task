import 'package:flutter/material.dart';

class AvatarPic extends StatelessWidget {
  const AvatarPic({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 37,
      child: CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 35,
      ),
    );
  }
}
