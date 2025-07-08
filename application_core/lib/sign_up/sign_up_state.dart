part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isSignUp,
    required String? cpf,
    required String? name,
    required String? firstPassword,
    required String? password,
  }) = _SignUpState;

  factory SignUpState.initial() {
    return const SignUpState(
      isSignUp: false,
      cpf: null,
      name: null,
      firstPassword: null,
      password: null,
    );
  }
}
