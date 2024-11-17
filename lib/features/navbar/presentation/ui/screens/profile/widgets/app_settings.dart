import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/core.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemMenu> items = [
      ItemMenu(name: 'Language', icon: Icons.language),
      ItemMenu(name: 'Settings', icon: CupertinoIcons.settings),
    ];
    return Card(
      child: Column(
        children: List.generate(items.length, (index) {
          return ListTile(
              leading: Icon(items[index].icon),
              title: Text(items[index].name),
              onTap: items[index].onTap);
        }),
      ),
    );
  }
}
