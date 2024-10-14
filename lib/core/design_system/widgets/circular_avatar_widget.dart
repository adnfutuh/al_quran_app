import 'package:al_quran_app/core/design_system/themes/pallet.dart';
import 'package:flutter/material.dart';

class CircularAvatarWidget extends StatelessWidget {
  final double size;
  const CircularAvatarWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.person,
        size: size * 0.8,
        color: Pallet.white,
      ),
    );
  }
}
