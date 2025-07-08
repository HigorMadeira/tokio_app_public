// ignore_for_file: deprecated_member_use

import 'package:app_tokio/auth/widgets/sign_in_form.dart';
import 'package:app_tokio/auth/widgets/sign_up_form.dart';
import 'package:application_core/auth/auth_cubit.dart';
import 'package:application_core/sign_up/sign_up_cubit.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_core/ui_core.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isSaved = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 600;
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: size.height * 0.5,
          child: Container(
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
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  Text(
                    'Bem vindo!',
                    textAlign: TextAlign.center,
                    style: TextStyles.slideTitle.copyWith(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Aqui você gerencia seus seguros e de seus familiares em poucos cliques!',
                    textAlign: TextAlign.center,
                    style: TextStyles.body.copyWith(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Container(
                width: isMobile ? size.width : 460,
                // color: Colors.red, // Para ajustar o botão flutuante
                padding: const EdgeInsets.symmetric(vertical: 42),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.tokioBlack,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBar(
                        controller: _tabController,
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: AppColors.tokioGreen, width: 2),
                        ),
                        labelColor: AppColors.tokioGreen,
                        unselectedLabelColor: Colors.white70,
                        dividerColor: Colors.transparent,
                        tabs: const [
                          Tab(text: 'Entrar'),
                          Tab(
                            text: 'Cadastrar',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 200,
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SignInForm(
                              cpfController: _cpfController,
                              passwordController: _passwordController,
                              isSaved: isSaved,
                              onSubmit: () {
                                if (_cpfController.text.isNotEmpty &&
                                    _passwordController.text.isNotEmpty) {
                                  loginUser();
                                }
                              },
                              onPressed: () {
                                setState(() {
                                  isSaved = !isSaved;
                                });
                              },
                            ),
                            const SignUpForm()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: LoginButton(
                  onPressed: () async {
                    final bool isSignUp =
                        context.read<SignUpCubit>().state.isSignUp;

                    if (_cpfController.text.isNotEmpty &&
                        _passwordController.text.isNotEmpty &&
                        !isSignUp) {
                      await loginUser();
                    } else if (isSignUp) {
                      final bool result =
                          await context.read<SignUpCubit>().registerUser();
                      if (!mounted) return;
                      if (!result) {
                        FlashHelper.errorBar(
                          context,
                          message: "Erro ao cadastrar usuário",
                        );
                      } else {
                        FlashHelper.successBar(
                          context,
                          message: "Usuário cadastrado com sucesso",
                        );
                        _cpfController.clear();
                        _passwordController.clear();
                        _tabController.animateTo(0);
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),

        // Social icons
        Positioned(
          bottom: 48,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(FontAwesomeIcons.google),
              const SizedBox(width: 24),
              _socialIcon(Icons.facebook),
              const SizedBox(width: 24),
              _socialIcon(FontAwesomeIcons.twitter),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> loginUser() async {
    final bool result = await context.read<AuthCubit>().signInUserAccount(
        _cpfController.text, _passwordController.text, isSaved);
    if (!mounted) return;
    if (!result) {
      FlashHelper.errorBar(
        context,
        message: "Cpf ou senha invalido",
      );
    } else {
      _passwordController.clear();
    }
  }

  Widget _socialIcon(IconData icon) =>
      Icon(icon, size: 32, color: Colors.white);
}
