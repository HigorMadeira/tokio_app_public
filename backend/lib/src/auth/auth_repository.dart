import 'package:backend/backend.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';

class AuthRepository implements IAuthRepository {
  final ILogger _logger;
  final SupabaseClient client;
  final IAuthDatasource _authDatasource;
  AuthRepository(this._logger, this.client, this._authDatasource);

  @override
  Future<Either<AuthFailure, UserAccount>> signIn(
    String cpf,
    String password,
  ) async {
    final encrypt = Encrypt();
    password = encrypt.encryptSHA256(password);
    try {
      final user = await client
          .from('user')
          .select()
          .eq('cpf', cpf)
          .eq('password', password)
          .single();

      return right(
          UserAccount(id: user['id'], name: user['name'], cpf: user['cpf']));
    } catch (e) {
      _logger.error('Error signing in user: $e');
      return left(AuthFailure.emailOrPasswordInvalid());
    }
  }

  @override
  Future<bool> signUp(UserAccount userAccount, String password) async {
    try {
      final dbAnswer = await _authDatasource.signUp(userAccount, password);
      if (!dbAnswer) {
        return false;
      }
      return true;
    } catch (e) {
      _logger.error('Error signing up user: $e');
      return false;
    }
  }

  @override
  Future<Either<AuthFailure, UserAccount>> signInWithGoogle(
      String email, String idToken) async {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    return client.auth.signOut();
  }
}
