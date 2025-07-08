import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final IAuthRepository _authRepository;
  SignUpCubit(this._authRepository) : super(SignUpState.initial());

  void setSignUp(bool isSignUp) {
    emit(state.copyWith(isSignUp: isSignUp));
  }

  Future<bool> registerUser() async {
    final encrypt = Encrypt();
    final password = encrypt.encryptSHA256(state.password!);
    final result = await _authRepository.signUp(
      UserAccount(
        id: null,
        name: state.name!,
        cpf: state.cpf,
      ),
      password,
    );

    return result;
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setCpf(String cpf) {
    emit(state.copyWith(cpf: cpf));
  }

  void setFirstPassword(String firstPassword) {
    emit(state.copyWith(firstPassword: firstPassword));
  }

  void setPassword(String password) {
    emit(state.copyWith(password: password));
  }
}
