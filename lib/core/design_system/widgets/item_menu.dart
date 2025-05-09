import 'package:flutter/material.dart';

class ItemMenu {
  final String name;
  final IconData? icon;
  final void Function()? onTap;
  ItemMenu({required this.name, this.icon, this.onTap});
}
