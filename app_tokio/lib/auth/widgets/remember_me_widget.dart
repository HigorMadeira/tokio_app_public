import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key, required this.rememberMe, this.onPressed});
  final bool rememberMe;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => onPressed!(),
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: rememberMe
                  ? LinearGradient(
                      colors: [
                        AppColors.tokioGreen,
                        AppColors.tokioYellow,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              border: Border.all(
                color: Colors.white38,
                width: 2,
              ),
            ),
            child: rememberMe
                ? const Center(
                    child: Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
        ),

        const SizedBox(width: 8),
        // Label
        GestureDetector(
          onTap: () => onPressed!(),
          child: const Text(
            'Lembrar Sempre',
            style: TextStyle(color: Colors.white),
          ),
        ),

        const Spacer(),

        TextButton(
          onPressed: () {},
          child: Text(
            'Esqueceu a senha?',
            style: TextStyle(
              color: AppColors.tokioGreen,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
