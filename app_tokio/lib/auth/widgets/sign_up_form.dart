import 'package:application_core/sign_up/sign_up_cubit.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ui_core/ui_core.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  final cpfMaskFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
  @override
  Widget build(BuildContext context) {
    context.read<SignUpCubit>().setSignUp(true);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              onChanged: (value) => context.read<SignUpCubit>().setCpf(value),
              inputFormatters: [cpfMaskFormatter],
              textInputAction: TextInputAction.next,
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
              validator: (v) {
                if (v == null || v.isEmpty) return 'Informe o CPF';
                if (v.length < 11) return 'CPF incompleto';
                return null;
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              onChanged: (value) => context.read<SignUpCubit>().setName(value),
              style: TextStyles.body.copyWith(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Nome',
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
              validator: (v) =>
                  v == null || v.isEmpty ? 'Informe o nome' : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              obscureText: _obscurePassword,
              style: TextStyles.body.copyWith(color: Colors.white),
              onChanged: (value) =>
                  context.read<SignUpCubit>().setPassword(value),
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white38),
                filled: true,
                fillColor: Colors.white10,
                labelText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.white, width: 1),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () =>
                      setState(() => _obscurePassword = !_obscurePassword),
                ),
              ),
              validator: (v) {
                if (v == null || v.isEmpty) return 'Informe a senha';
                if (v.length < 6) return 'Senha muito curta';
                return null;
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
