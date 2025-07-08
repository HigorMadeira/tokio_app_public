import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, UserAccount>> signIn(
    String cpf,
    String password,
  );
  Future<bool> signUp(UserAccount userAccount, String password);
  Future<void> signOut();

  Future<Either<AuthFailure, UserAccount>> signInWithGoogle(
      String email, String idToken);
}
