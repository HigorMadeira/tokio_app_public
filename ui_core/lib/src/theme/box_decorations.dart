import 'package:flutter/material.dart';
import 'package:ui_core/src/theme/app_colors.dart';
import 'package:ui_core/src/theme/text_styles.dart';

class BoxDecorations {
  static InputDecoration inputDecoration(String label, {Color? borderColor}) =>
      InputDecoration(
        labelText: label,
        // hintText: label,
        fillColor: Colors.white,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintStyle: TextStyles.inputTextStyle,
        hoverColor: AppColors.inputTextColor.withOpacity(0.5),
        filled: true,
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? const Color(0xFFeceff6)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );

  static InputDecoration inputSearchDecoration(String label) => InputDecoration(
        labelText: label,
        fillColor: AppColors.blue50,
        suffixIcon: const Icon(Icons.search),
        hoverColor: AppColors.inputTextColor.withOpacity(0.5),
        filled: true,
        alignLabelWithHint: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFeceff6)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      );

  static BoxDecoration slideBoxDecoration() => BoxDecoration(
        color: AppColors.containerColors,
        borderRadius: BorderRadius.circular(8),
      );

  static InputDecoration tabletInputDecoration(String hint,
          {String? labelText}) =>
      InputDecoration(
        fillColor: AppColors.blue50,
        labelText: labelText,
        hintStyle: TextStyles.body.copyWith(
          color: AppColors.placeholder,
          height: 2,
        ),
        filled: true,
        hintText: hint,
        focusColor: AppColors.offBlack,
        hoverColor: AppColors.blue100,
        border: InputBorder.none,
      );
}
