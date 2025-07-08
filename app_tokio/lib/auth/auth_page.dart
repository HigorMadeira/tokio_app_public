import 'package:app_tokio/auth/auth_view.dart';
import 'package:app_tokio/core/home_page.dart';
import 'package:application_core/auth/auth_cubit.dart' as auth;
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.offBlack,
        body: BlocListener<auth.AuthCubit, auth.AuthState>(
          listenWhen: (previous, current) => previous != current,
          listener: (context, state) {
            state.maybeWhen(
              loading: () => OverlayService.showCustomLoading(
                context,
                'Verificando usuário',
              ),
              authenticated: (u) {
                OverlayService.dismiss();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(
                      user: u,
                    ),
                  ),
                );
              },
              failed: (failure) {
                OverlayService.dismiss();
                print('ENTROU AQUI');
              },
              unauthenticated: () {
                OverlayService.dismiss();
                Navigator.of(context).pop();
              },
              orElse: () => OverlayService.dismiss(),
            );
          },
          child: const AuthView(),
        ));
  }
}
