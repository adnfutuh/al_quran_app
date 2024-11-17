import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  final double size;
  final Widget imagePath;

  const CircularAvatarWidget(
      {super.key, required this.size, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      child: ClipOval(
        child: imagePath,
      ),
    );
  }
}
