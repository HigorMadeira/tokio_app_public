import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authFacade, this._localStorage) : super(AuthState.initial());
  final IAuthRepository _authFacade;
  final ILocalStorage _localStorage;
  Future<bool> signInUserAccount(
      String cpf, String password, bool savedUser) async {
    emit(const AuthState.loading());
    await _localStorage.write<bool>('saveCPF', savedUser);
    if (savedUser) {
      await Future.wait([
        _localStorage.write<String>('CPF', cpf),
        _localStorage.write<String>('password', password),
      ]);
    } else {
      await removeLocal();
    }
    final signIn = await _authFacade.signIn(cpf, password);
    return signIn.fold(
      (l) async {
        await removeLocal();

        emit(AuthState.failed(l));
        return Future.value(false);
      },
      (r) {
        emit(AuthState.authenticated(r));
        return Future.value(true);
      },
    );
  }

  Future<void> removeLocal() async {
    await _localStorage.remove('CPF');
    await _localStorage.remove('password');
  }

  Future<bool> checkIfSavedUser() async {
    final savedUser = await _localStorage.read<bool>('saveCPF');
    if (savedUser == null || !savedUser) {
      return false;
    }
    final cpf = await _localStorage.read<String>('CPF');
    final password = await _localStorage.read<String>('password');
    if (cpf == null || password == null) {
      return false;
    }
    return signInUserAccount(cpf, password, savedUser);
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());
    await _authFacade.signOut();
    await _localStorage.remove('saveCPF');

    emit(const AuthState.unauthenticated());
  }
}
