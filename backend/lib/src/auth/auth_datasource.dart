import 'package:backend/src/auth/i_auth_datasource.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';

class AuthDatasource implements IAuthDatasource {
  final SupabaseClient client;

  AuthDatasource({required this.client});

  @override
  Future<bool> signUp(UserAccount user, String password) async {
    try {
      await client.from('user').insert({
        'name': user.name,
        'cpf': user.cpf,
        'password': password,
        'insurances': []
      });

      return true;
    } catch (e) {
      return false;
    }
  }
}
