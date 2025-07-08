import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
    required this.message,
    this.isLoading = false,
    this.closeButton = false,
  });

  final String message;
  final bool closeButton;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;

    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 8,
            sigmaY: 8,
          ),
          child: Container(
            color: AppColors.primaryDarkBlue.withOpacity(0.6),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF313848),
                    Color(0xFF000e10),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: AppShadows.shadowSmall,
              ),
              width: 360,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 32,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.hourglass_bottom,
                            size: 64, color: AppColors.offWhite),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                          style: TextStyles.slideTitle.copyWith(
                            fontSize: 24,
                            color: AppColors.offWhite,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: SizedBox(
                            width: 24,
                            child: Divider(
                              color: AppColors.offWhite,
                              thickness: 1.5,
                            ),
                          ),
                        ),
                        Text(
                          'TOKIO APP',
                          textAlign: TextAlign.center,
                          style: TextStyles.body.copyWith(
                            color: AppColors.offWhite,
                            fontSize: 12,
                          ),
                        ),
                        if (isLoading) ...[
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          SizedBox(
                            width: screenHeight * 0.05,
                            height: screenHeight * 0.05,
                            child: CircularProgressIndicator(
                              color: AppColors.offWhite,
                              strokeWidth: 8,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
