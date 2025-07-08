// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  // Animation controller and value
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (details) {
        setState(() => _scale = 0.95);
      },
      onPointerUp: (details) {
        setState(() => _scale = 1.0);
        widget.onPressed?.call();
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        child: Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.tokioGreen,
                AppColors.tokioYellow,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            shape: BoxShape.circle,
            border: BoxBorder.lerp(
              Border.all(color: AppColors.tokioAsh, width: 4),
              Border.all(color: AppColors.tokioAsh, width: 4),
              1.0,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.arrow_forward,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
