import 'package:flutter/material.dart';

import '../../core.dart';

extension DarkTheme on ThemeData {
  Color get boxFeatures =>
      brightness == Brightness.dark ? const Color(0xFFA44AFF) : Pallet.cyan;
  Color get textBoxFeatures =>
      brightness == Brightness.dark ? Pallet.white : Pallet.black;
  Color get textListQuran =>
      brightness == Brightness.dark ? const Color(0xFFA44AFF) : Pallet.black;
  Color get textUnselect =>
      brightness == Brightness.dark ? Pallet.white : Pallet.grey;
  Color get textAyatIdn =>
      brightness == Brightness.dark ? const Color(0xFFA19CC5) : Pallet.white;
  Color get container1 =>
      brightness == Brightness.dark ? Colors.transparent : Pallet.cyan;
  Color get container2 =>
      brightness == Brightness.dark ? const Color(0xFF180B37) : Pallet.white;
  Color get container3 =>
      brightness == Brightness.dark ? const Color(0xFF121931) : Pallet.white;
  Color get bgScaffold => brightness == Brightness.dark
      ? const Color.fromARGB(255, 18, 9, 40)
      : Pallet.whiteScaffold;
  Color get bgScaffold2 => brightness == Brightness.dark
      ? const Color(0xFF040C23)
      : Pallet.whiteScaffold;
  Color get bgScaffold3 =>
      brightness == Brightness.dark ? const Color(0xFF180B37) : Pallet.cyan;
  Color get bgNavBar => brightness == Brightness.dark
      ? const Color.fromARGB(255, 18, 9, 40)
      : Pallet.white;
}
