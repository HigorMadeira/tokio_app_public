import 'package:app_tokio/web_view_page/web_view_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class HireCarouselWidget extends StatefulWidget {
  const HireCarouselWidget({super.key});

  @override
  State<HireCarouselWidget> createState() => _HireCarouselWidgetState();
}

class _HireCarouselWidgetState extends State<HireCarouselWidget>
    with SingleTickerProviderStateMixin {
  // Definição dos produtos com título e ícone
  final List<_Product> products = const [
    _Product('Automóvel', Icons.directions_car),
    _Product('Residência', Icons.home),
    _Product('Vida', Icons.favorite),
    _Product('Acidentes Pessoais', Icons.health_and_safety),
  ];

  late final AnimationController _controller;
  late final List<Animation<double>> _fadeAnimations;

  @override
  void initState() {
    super.initState();

    final totalDuration = Duration(milliseconds: 600 + 300 * products.length);

    _controller = AnimationController(
      vsync: this,
      duration: totalDuration,
    );

    _fadeAnimations = List.generate(products.length, (index) {
      final start = index / products.length;
      final end = (index + 1) / products.length;
      return CurvedAnimation(
        parent: _controller,
        curve: Interval(start, end, curve: Curves.easeIn),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap(_Product product) {
    switch (product.title) {
      case 'Automóvel':
        if (!kIsWeb) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const WebViewPage(),
            ),
          );
        }
        break;
      case 'Residência':
        debugPrint('Clicou em Residência');
        break;
      case 'Vida':
        debugPrint('Clicou em Vida');
        break;
      case 'Acidentes Pessoais':
        debugPrint('Clicou em Acidentes Pessoais');
        break;
      default:
        debugPrint('Produto desconhecido: ${product.title}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 24, 8),
          child: Text(
            'Cotar e Contratar',
            style: TextStyles.slideTitle.copyWith(
              color: AppColors.offWhite,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 124,
            child: PageView.builder(
              itemCount: products.length,
              controller: PageController(viewportFraction: 0.35),
              padEnds: false,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final product = products[index];
                return FadeTransition(
                  opacity: _fadeAnimations[index],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 8.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => _handleTap(product),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 6,
                        color: AppColors.tokioBlack,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                product.icon,
                                size: 32,
                                color: AppColors.offWhite,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product.title,
                                textAlign: TextAlign.center,
                                style: TextStyles.body2.copyWith(
                                  color: AppColors.offWhite,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Product {
  final String title;
  final IconData icon;
  const _Product(this.title, this.icon);
}
