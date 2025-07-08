part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(UserAccount user) = Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.loading() = Loading;
  const factory AuthState.failed(AuthFailure failure) = Failed;
}
