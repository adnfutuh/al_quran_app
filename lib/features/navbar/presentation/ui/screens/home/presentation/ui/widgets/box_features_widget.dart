import 'package:al_quran_app/core/core.dart';
import 'package:flutter/material.dart';

class BoxFeaturesWidget extends StatelessWidget {
  final IconData icon;
  final String name;
  final VoidCallback onTap;
  const BoxFeaturesWidget(
      {super.key, required this.icon, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).boxFeatures2,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: Pallet.white,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: TextStyles.defaultStyle.copyWith(
            color: Theme.of(context).textBoxFeatures,
          ),
        )
      ],
    );
  }
}
