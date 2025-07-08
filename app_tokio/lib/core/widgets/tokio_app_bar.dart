import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class TokioAppBar extends StatelessWidget {
  const TokioAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
            size: 32,
          ),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        Center(
          child: Text(
            'LOGO',
            style: TextStyles.body2,
          ),
        ),
        NotificationsBell(
          bellColor: AppColors.offWhite,
        ),
      ],
    );
  }
}
