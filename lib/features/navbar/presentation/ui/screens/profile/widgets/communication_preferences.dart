import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../core/core.dart';

class CommunicationPreferences extends StatelessWidget {
  const CommunicationPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemMenu> items = [
      ItemMenu(name: 'Push Notifications', icon: CupertinoIcons.bell),
      ItemMenu(name: 'Free Newsletter', icon: FontAwesomeIcons.envelope),
    ];
    return Card(
      child: Column(
        children: List.generate(items.length, (index) {
          return ListTile(
            leading: Icon(
              items[index].icon,
            ),
            title: Text(
              items[index].name,
            ),
            onTap: items[index].onTap,
          );
        }),
      ),
    );
  }
}
