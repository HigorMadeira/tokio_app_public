// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppColors {
  //Lettering
  static Color creamLettering = const Color(0xFFFFFCE8);
  static Color offBlack = const Color.fromARGB(255, 24, 24, 48);
  static Color tokioBlack = const Color.fromARGB(255, 35, 35, 54);
  static Color tokioAsh = const Color.fromARGB(255, 38, 38, 66);

  static Color ash = const Color(0xFF384152);
  static Color body = const Color(0xFF4E4B66);
  static Color label = const Color(0xFF8C90AD);
  static Color placeholder = const Color(0xFFA0A3BD);
  static Color line = const Color(0xFFDDE6ED);
  static Color input = const Color(0xFFF7F7F7);
  static Color background = const Color(0xFFEEF2F5);
  static Color offWhite = const Color(0xFFFFFFFF);
  static Color divider = const Color(0xFFD7DBE5);

  static Color bodyTextColor = const Color(0xFF637382);
  static Color inputTextColor = const Color(0xFFDDE5F1);
  static Color containerColors = const Color(0xFFE1E8F8);
  static Color borderColor = const Color(0xFFECEFF6);
  static Color tealBlue = const Color(0xFF107b8e);
  static Color mediumTurquoise = const Color(0xFF4AC2CD);

  static Color buttonStackCaolor = const Color(0xFFFE8E2D);
  static MaterialColor whiteElevations =
      MaterialColor(whiteSwatch[50]!.value, whiteSwatch);

  static const Map<int, Color> whiteSwatch = {
    50: Color(0xFFFFFFFF),
    100: Color(0xFFF7F7F7),
    200: Color(0xFFEEF2F5),
    300: Color(0xFFDDE6ED),
    400: Color(0xFFF6F9FE),
  };

  static Color blue600 = const Color(0xFF534E99);
  static Color blue400 = const Color(0xFF0060ff);
  static Color blue300 = const Color(0xFF1A7ABF);
  static Color blue200 = const Color(0xFFA3D4FF);
  static Color blue100 = const Color(0xFFEFF6FF);
  static Color blue50 = const Color(0xFFf6F9FE);

  static Color primaryBlue = const Color(0xFF29256a);
  static Color primaryLightBlue = const Color(0xFF211E57);

  static Color primaryDarkBlue = const Color(0xFF1D1A4A);
  static Color accentOrange = const Color(0xFFF26F21);
  static Color accentOrangeLighter = const Color(0xFFFE8E2D);
  static Color accentYellow = const Color(0xFFFCB833);
  static Color accentBlue = const Color(0xFF5BC3BE);
  static Color accentNeutral = const Color(0xFFFFFCE8);
  static Color green = const Color(0xFF3FB78B);
  static Color tokioGreen = Color(0xFF33A78F);
  static Color tokioYellow = Color(0xFFE0DE9A);

  static const List<Color> secondaryColors = [
    Color(0xFFFF8E15),
    Color(0xFF3FB78B),
    Color(0xFF52B1F6),
    Color(0xFFB73FB2),
    Color(0xFF647ACB),
  ];

  static MaterialColor chili = const MaterialColor(
    0xFFFF0000,
    chiliSwatch,
  );

  static const Map<int, Color> chiliSwatch = {
    50: Color(0xFFFFF5F5),
    100: Color(0xFFFFDBDB),
    200: Color(0xFFFF9999),
    300: Color(0xFFFF6666),
    400: Color(0xFFFF4C4D),
    500: Color(0xFFFF0000),
    600: Color(0xFFE50000),
    700: Color(0xFFCC0000),
    800: Color(0xFF990000),
    900: Color(0xFF660000),
  };

  static MaterialColor tiger = const MaterialColor(
    0xFFFF7500,
    tigerSwatch,
  );

  static const Map<int, Color> tigerSwatch = {
    50: Color(0xFFFFF9F5),
    100: Color(0xFFFFECDB),
    200: Color(0xFFFFC899),
    300: Color(0xFFFFAC66),
    400: Color(0xFFFFAC66),
    500: Color(0xFFFF7500),
    600: Color(0xFFE56900),
    700: Color(0xFFCC5E00),
    800: Color(0xFF994600),
    900: Color(0xFF662F00),
  };

  static MaterialColor lemon = const MaterialColor(
    0xFFF9F906,
    lemonSwatch,
  );

  static const Map<int, Color> lemonSwatch = {
    50: Color(0xFFFFFFF5),
    100: Color(0xFFFEFEDC),
    200: Color(0xFFFDFD9B),
    300: Color(0xFFFBFB6A),
    400: Color(0xFFFBFB51),
    500: Color(0xFFF9F906),
    600: Color(0xFFE0E005),
    700: Color(0xFFC7C705),
    800: Color(0xFF959504),
    900: Color(0xFF646402),
  };

  static MaterialColor warm = const MaterialColor(
    0xFF837C7C,
    warmSwatch,
  );

  static const Map<int, Color> warmSwatch = {
    50: Color(0xFFFAFAFA),
    100: Color(0xFFEEEDED),
    200: Color(0xFFCDCBCB),
    300: Color(0xFFB5B0B0),
    400: Color(0xFFA8A3A3),
    500: Color(0xFF837C7C),
    600: Color(0xFF767070),
    700: Color(0xFF5C5757),
    800: Color(0xFF413E3E),
    900: Color(0xFF272525),
  };

  static MaterialColor magenta = const MaterialColor(
    0xFFFF00C9,
    magentaSwatch,
  );

  static const Map<int, Color> magentaSwatch = {
    50: Color(0xFFFFF5FD),
    100: Color(0xFFFFDBF7),
    200: Color(0xFFFF99E9),
    300: Color(0xFFFF66DF),
    400: Color(0xFFFF4CD9),
    500: Color(0xFFFF00C9),
    600: Color(0xFFE500B5),
    700: Color(0xFFCC00A1),
    800: Color(0xFF990079),
    900: Color(0xFF660050),
  };

  static MaterialColor lavender = const MaterialColor(
    0xFF6308F7,
    lavenderSwatch,
  );

  static const Map<int, Color> lavenderSwatch = {
    50: Color(0xFFF9F5FF),
    100: Color(0xFFE9DCFE),
    200: Color(0xFFC19CFC),
    300: Color(0xFFA26BFA),
    400: Color(0xFF9252FA),
    500: Color(0xFF6308F7),
    600: Color(0xFF5907DE),
    700: Color(0xFF4F06C6),
    800: Color(0xFF3C0594),
    900: Color(0xFF280363),
  };

  static const MaterialColor ocean = MaterialColor(
    0xFF00BAFF,
    oceanSwatch,
  );

  static const Map<int, Color> oceanSwatch = {
    50: Color(0xFFF5FCFF),
    100: Color(0xFFDBF5FF),
    200: Color(0xFF99E3FF),
    300: Color(0xFF66D6FF),
    400: Color(0xFF4CCFFF),
    500: Color(0xFF00BAFF),
    600: Color(0xFF00A7E5),
    700: Color(0xFF0095CC),
    800: Color(0xFF007099),
    900: Color(0xFF004A66),
  };

  static const MaterialColor esmerald = MaterialColor(
    0xFF00FFC7,
    esmeraldSwatch,
  );

  static const Map<int, Color> esmeraldSwatch = {
    50: Color(0xFFF5FFFD),
    100: Color(0xFFDBFFF7),
    200: Color(0xFF99FFE9),
    300: Color(0xFF66FFDD),
    400: Color(0xFF4CFFD8),
    500: Color(0xFF00FFC7),
    600: Color(0xFF00E5B3),
    700: Color(0xFF00CC9F),
    800: Color(0xFF009977),
    900: Color(0xFF006650),
  };

  static Map<Color, Color> primaryColorToLightColor = {
    AppColors.esmerald.shade700: AppColors.esmerald.shade100,
    AppColors.ocean.shade500: AppColors.ocean.shade100,
    AppColors.lavender.shade500: AppColors.lavender.shade100,
    AppColors.magenta.shade500: AppColors.magenta.shade100,
    AppColors.chili.shade500: AppColors.chili.shade100,
    AppColors.tiger.shade500: AppColors.tiger.shade100,
    AppColors.lemon.shade700: AppColors.lemon.shade100,
    AppColors.warm.shade500: AppColors.warm.shade100,
  };

  static Map<Color, Color> primaryColorToSecondaryLightColor = {
    AppColors.esmerald.shade700: AppColors.esmerald.shade200,
    AppColors.ocean.shade500: AppColors.ocean.shade200,
    AppColors.lavender.shade500: AppColors.lavender.shade200,
    AppColors.magenta.shade500: AppColors.magenta.shade200,
    AppColors.chili.shade500: AppColors.chili.shade200,
    AppColors.tiger.shade500: AppColors.tiger.shade200,
    AppColors.lemon.shade700: AppColors.lemon.shade200,
    AppColors.warm.shade500: AppColors.warm.shade200,
  };
}
