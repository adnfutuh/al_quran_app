import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/core.dart';
import '../../../../../../theme/cubit/theme_cubit.dart';

class FeatureSettings extends StatelessWidget {
  const FeatureSettings({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    List<ItemMenu> items = [
      ItemMenu(name: 'Prayer Times', icon: CupertinoIcons.time),
      ItemMenu(name: 'Quran', icon: CupertinoIcons.book),
      ItemMenu(name: 'Islamic Calendar', icon: CupertinoIcons.calendar_today),
      ItemMenu(
          name: isDarkTheme ? 'Dark Theme' : 'Light Theme',
          icon: isDarkTheme ? CupertinoIcons.moon : CupertinoIcons.sun_max,
          onTap: () {
            context.read<ThemeCubit>().toggleTheme();
          }),
    ];
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
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
        ],
      ),
    );
  }
}
