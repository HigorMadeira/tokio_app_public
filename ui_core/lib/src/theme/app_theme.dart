import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryBlue,
    dividerColor: AppColors.line,
    primaryColorDark: AppColors.primaryDarkBlue,
    visualDensity: VisualDensity.standard,
    //switchTheme: switchTheme(),
    radioTheme: radioTheme(),
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      errorColor: AppColors.chili,
      cardColor: AppColors.whiteElevations.shade50,
      brightness: Brightness.light,
      backgroundColor: AppColors.whiteElevations.shade200,
      accentColor: AppColors.blue400,
    ).copyWith(surface: AppColors.whiteElevations.shade200),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.tokioBlack,
    dividerColor: AppColors.line,
    primaryColorDark: AppColors.offBlack,
    visualDensity: VisualDensity.standard,
    //switchTheme: switchTheme(),
    radioTheme: radioTheme(),
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
      errorColor: AppColors.chili,
      cardColor: AppColors.whiteElevations.shade50,
      brightness: Brightness.light,
      backgroundColor: AppColors.whiteElevations.shade200,
      accentColor: AppColors.primaryBlue,
    ).copyWith(surface: AppColors.whiteElevations.shade200),
  );
}

SwitchThemeData switchTheme() {
  return SwitchThemeData(
    trackColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primaryBlue;
      } else if (states.contains(WidgetState.hovered)) {
        return AppColors.whiteElevations.shade300;
      } else if (states.contains(WidgetState.focused)) {
        return AppColors.whiteElevations.shade300;
      } else if (states.contains(WidgetState.disabled)) {
        return AppColors.whiteElevations.shade400;
      }
      return Colors.white;
    }),
  );
}

RadioThemeData radioTheme({Color selectedColor = Colors.white}) {
  return RadioThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return selectedColor;
      } else if (states.contains(WidgetState.hovered)) {
        return AppColors.whiteElevations.shade300;
      } else if (states.contains(WidgetState.focused)) {
        return AppColors.whiteElevations.shade300;
      } else if (states.contains(WidgetState.disabled)) {
        return AppColors.whiteElevations.shade400;
      }
      return Colors.white;
    }),
  );
}

RadioThemeData radioThemeLabel() {
  return RadioThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else if (states.contains(WidgetState.hovered)) {
        return AppColors.label;
      } else if (states.contains(WidgetState.focused)) {
        return AppColors.label;
      } else if (states.contains(WidgetState.disabled)) {
        return AppColors.label;
      }
      return AppColors.label;
    }),
  );
}

CheckboxThemeData checkBoxMultiselectTheme() {
  return CheckboxThemeData(
    fillColor:
        WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.blue400;
      } else if (states.contains(WidgetState.hovered)) {
        return AppColors.body;
      } else if (states.contains(WidgetState.focused)) {
        return AppColors.body;
      } else if (states.contains(WidgetState.disabled)) {
        return AppColors.body;
      }
      return AppColors.body;
    }),
  );
}
