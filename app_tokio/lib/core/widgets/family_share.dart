import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class FamilyShare extends StatelessWidget {
  const FamilyShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 24, 8),
          child: Text(
            'Minha Família',
            style: TextStyles.slideTitle.copyWith(
              color: AppColors.offWhite,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.tokioBlack,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add_circle_outline,
                      size: 48.0,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Adicione aqui membros da sua família e compartilhe os seguros com eles.',
                        textAlign: TextAlign.center,
                        style: TextStyles.body.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
