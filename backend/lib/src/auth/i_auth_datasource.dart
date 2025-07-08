import 'package:domain/domain.dart';

abstract class IAuthDatasource {
  Future<bool> signUp(UserAccount user, String password);
}
