import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../core/core.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemMenu> items = [
      ItemMenu(
          name: 'Send Alquran to a friend', icon: FontAwesomeIcons.userGroup),
      ItemMenu(name: 'Feedback', icon: FontAwesomeIcons.commentDots),
      ItemMenu(name: '.....', icon: FontAwesomeIcons.facebook),
      ItemMenu(name: 'adn_futuh_', icon: FontAwesomeIcons.instagram),
      ItemMenu(name: '.....', icon: FontAwesomeIcons.xTwitter),
      ItemMenu(name: 'github.com/adnfutuh', icon: FontAwesomeIcons.github),
      ItemMenu(name: 'Rizki Adnan Futuh', icon: FontAwesomeIcons.linkedin),
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
