import 'package:app_tokio/auth/widgets/remember_me_widget.dart';
import 'package:application_core/sign_up/sign_up_cubit.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ui_core/ui_core.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    super.key,
    required this.cpfController,
    required this.passwordController,
    required this.isSaved,
    this.onPressed,
    this.onSubmit,
  });

  final TextEditingController cpfController;
  final TextEditingController passwordController;
  final bool isSaved;
  final VoidCallback? onPressed;
  final VoidCallback? onSubmit;

  final cpfMaskFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    context.read<SignUpCubit>().setSignUp(
        false); //Meu método para garantir que o estado de cadastro esteja desativado e controlar o botão principal.
    return Column(
      children: [
        const SizedBox(height: 16),
        _buildForm(),
        const SizedBox(height: 16),
        RememberMeWidget(
          rememberMe: isSaved,
          onPressed: onPressed,
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        TextField(
          controller: cpfController,
          inputFormatters: [cpfMaskFormatter],
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyles.body.copyWith(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'CPF',
            hintStyle: const TextStyle(color: Colors.white38),
            filled: true,
            fillColor: Colors.white10,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.white, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: passwordController,
          onSubmitted: (_) => onSubmit?.call(),
          textAlign: TextAlign.center,
          textInputAction: TextInputAction.go,
          textAlignVertical: TextAlignVertical.center,
          obscureText: true,
          style: TextStyles.subtitle1.copyWith(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Senha',
            hintStyle: TextStyles.subtitle1.copyWith(color: Colors.white38),
            filled: true,
            fillColor: Colors.white10,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.white, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
