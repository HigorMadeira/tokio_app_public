import 'package:dependencies_core/dependencies_core.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = AuthCancelledByUser;
  const factory AuthFailure.serverError() = AuthServerError;
  const factory AuthFailure.emailNotAllowed() = AuthEmailNotAllowed;
  const factory AuthFailure.emailOrPasswordInvalid() =
      AuthEmailOrPasswordInvalid;
  const factory AuthFailure.userAlreadyExists() = UserAlreadyExists;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
}
