import 'package:flutter/material.dart';

import '../../core.dart';

extension DarkTheme on ThemeData {
  Color get mynotes =>
      brightness == Brightness.dark ? Colors.deepPurple : Pallet.cyan;
  Color get cardNotes =>
      brightness == Brightness.dark ? Pallet.purple : Pallet.sky10;
  Color get txtNotes =>
      brightness == Brightness.dark ? Pallet.white : const Color(0xFF180B37);
  Color get txtContent => brightness == Brightness.dark
      ? Pallet.white.withOpacity(0.5)
      : const Color(0xFF180B37).withOpacity(0.5);
  Color get boxFeatures =>
      brightness == Brightness.dark ? const Color(0xFFA44AFF) : Pallet.cyan;
  Color get boxFeatures2 =>
      brightness == Brightness.dark ? Pallet.purple : Pallet.cyan;
  Color get textBoxFeatures =>
      brightness == Brightness.dark ? Pallet.white : Pallet.black;
  Color get textListQuran =>
      brightness == Brightness.dark ? const Color(0xFFA44AFF) : Pallet.black;
  Color get textUnselect =>
      brightness == Brightness.dark ? Pallet.white : Pallet.grey;
  Color get textAyatIdn =>
      brightness == Brightness.dark ? const Color(0xFFA19CC5) : Pallet.black;
  Color get container1 =>
      brightness == Brightness.dark ? Colors.transparent : Pallet.cyan;
  Color get container2 =>
      brightness == Brightness.dark ? const Color(0xFF180B37) : Pallet.white;
  Color get container3 =>
      brightness == Brightness.dark ? const Color(0xFF121931) : Pallet.white;
  BoxDecoration get container4 => brightness == Brightness.dark
      ? BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF3E1F8C),
              Color(0xFF6A31D4),
              Color(0xFF6B2EB3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        )
      : BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              Color(0xff006F6E),
              Color(0xff009E89),
              Color(0xff00B9A2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        );
  Color get bgScaffold => brightness == Brightness.dark
      ? const Color.fromARGB(255, 18, 9, 40)
      : Pallet.whiteScaffold;
  Color get bgScaffold2 => brightness == Brightness.dark
      ? const Color(0xFF040C23)
      : Pallet.whiteScaffold;
  Color get bgScaffold3 =>
      brightness == Brightness.dark ? const Color(0xFF180B37) : Pallet.cyan;
  Color get bgScaffold4 =>
      brightness == Brightness.dark ? const Color(0xFF040C23) : Pallet.cyan;
  Color get bgNavBar => brightness == Brightness.dark
      ? const Color.fromARGB(255, 18, 9, 40)
      : Pallet.white;
}
