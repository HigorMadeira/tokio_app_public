import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.tokioGreen,
            AppColors.tokioYellow,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: AppColors.offWhite,
              child: Icon(
                Icons.person,
                size: 32,
                color: AppColors.tokioBlack,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              name,
              style: TextStyles.body.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
