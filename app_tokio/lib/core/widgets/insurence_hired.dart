import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class InsurenceHired extends StatelessWidget {
  const InsurenceHired({super.key, this.insurances});
  final List<Insurance>? insurances;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 24, 8),
          child: Text(
            'Contratados',
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
                      Icons.sentiment_dissatisfied_outlined,
                      size: 48.0,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text(
                        'Você ainda não possui seguros contratados.',
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
