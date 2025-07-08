import 'package:app_tokio/core/widgets/family_share.dart';
import 'package:app_tokio/core/widgets/hire_carousel_widget.dart';
import 'package:app_tokio/core/widgets/insurence_hired.dart';
import 'package:app_tokio/core/widgets/tokio_app_bar.dart';
import 'package:app_tokio/core/widgets/tokio_drawer.dart';
import 'package:app_tokio/core/widgets/user_avatar.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});
  final UserAccount user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late final AnimationController _controller;
  late final Animation<double> _carouselFade;
  late final Animation<double> _familyFade;
  late final Animation<double> _insurenceFade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _carouselFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.3, curve: Curves.easeIn),
    );
    _familyFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.3, 0.6, curve: Curves.easeIn),
    );
    _insurenceFade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.6, 0.9, curve: Curves.easeIn),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 350), () {
        _controller.forward();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: TokioDrawer(
        scaffoldKey: _scaffoldKey,
        user: widget.user,
      ),
      backgroundColor: AppColors.offBlack,
      body: SafeArea(
        child: Column(
          children: [
            TokioAppBar(scaffoldKey: _scaffoldKey),
            const SizedBox(height: 8),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    UserAvatar(name: widget.user.name),
                    FadeTransition(
                      opacity: _carouselFade,
                      child: const HireCarouselWidget(),
                    ),
                    const SizedBox(height: 12),
                    FadeTransition(
                      opacity: _familyFade,
                      child: const FamilyShare(),
                    ),
                    const SizedBox(height: 12),
                    FadeTransition(
                      opacity: _insurenceFade,
                      child: InsurenceHired(
                        insurances: widget.user.insurances,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
