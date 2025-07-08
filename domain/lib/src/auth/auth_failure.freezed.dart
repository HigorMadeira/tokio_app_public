// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthCancelledByUser value)?  cancelledByUser,TResult Function( AuthServerError value)?  serverError,TResult Function( AuthEmailNotAllowed value)?  emailNotAllowed,TResult Function( AuthEmailOrPasswordInvalid value)?  emailOrPasswordInvalid,TResult Function( UserAlreadyExists value)?  userAlreadyExists,TResult Function( InvalidCredentials value)?  invalidCredentials,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthCancelledByUser() when cancelledByUser != null:
return cancelledByUser(_that);case AuthServerError() when serverError != null:
return serverError(_that);case AuthEmailNotAllowed() when emailNotAllowed != null:
return emailNotAllowed(_that);case AuthEmailOrPasswordInvalid() when emailOrPasswordInvalid != null:
return emailOrPasswordInvalid(_that);case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists(_that);case InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthCancelledByUser value)  cancelledByUser,required TResult Function( AuthServerError value)  serverError,required TResult Function( AuthEmailNotAllowed value)  emailNotAllowed,required TResult Function( AuthEmailOrPasswordInvalid value)  emailOrPasswordInvalid,required TResult Function( UserAlreadyExists value)  userAlreadyExists,required TResult Function( InvalidCredentials value)  invalidCredentials,}){
final _that = this;
switch (_that) {
case AuthCancelledByUser():
return cancelledByUser(_that);case AuthServerError():
return serverError(_that);case AuthEmailNotAllowed():
return emailNotAllowed(_that);case AuthEmailOrPasswordInvalid():
return emailOrPasswordInvalid(_that);case UserAlreadyExists():
return userAlreadyExists(_that);case InvalidCredentials():
return invalidCredentials(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthCancelledByUser value)?  cancelledByUser,TResult? Function( AuthServerError value)?  serverError,TResult? Function( AuthEmailNotAllowed value)?  emailNotAllowed,TResult? Function( AuthEmailOrPasswordInvalid value)?  emailOrPasswordInvalid,TResult? Function( UserAlreadyExists value)?  userAlreadyExists,TResult? Function( InvalidCredentials value)?  invalidCredentials,}){
final _that = this;
switch (_that) {
case AuthCancelledByUser() when cancelledByUser != null:
return cancelledByUser(_that);case AuthServerError() when serverError != null:
return serverError(_that);case AuthEmailNotAllowed() when emailNotAllowed != null:
return emailNotAllowed(_that);case AuthEmailOrPasswordInvalid() when emailOrPasswordInvalid != null:
return emailOrPasswordInvalid(_that);case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists(_that);case InvalidCredentials() when invalidCredentials != null:
return invalidCredentials(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cancelledByUser,TResult Function()?  serverError,TResult Function()?  emailNotAllowed,TResult Function()?  emailOrPasswordInvalid,TResult Function()?  userAlreadyExists,TResult Function()?  invalidCredentials,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthCancelledByUser() when cancelledByUser != null:
return cancelledByUser();case AuthServerError() when serverError != null:
return serverError();case AuthEmailNotAllowed() when emailNotAllowed != null:
return emailNotAllowed();case AuthEmailOrPasswordInvalid() when emailOrPasswordInvalid != null:
return emailOrPasswordInvalid();case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists();case InvalidCredentials() when invalidCredentials != null:
return invalidCredentials();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cancelledByUser,required TResult Function()  serverError,required TResult Function()  emailNotAllowed,required TResult Function()  emailOrPasswordInvalid,required TResult Function()  userAlreadyExists,required TResult Function()  invalidCredentials,}) {final _that = this;
switch (_that) {
case AuthCancelledByUser():
return cancelledByUser();case AuthServerError():
return serverError();case AuthEmailNotAllowed():
return emailNotAllowed();case AuthEmailOrPasswordInvalid():
return emailOrPasswordInvalid();case UserAlreadyExists():
return userAlreadyExists();case InvalidCredentials():
return invalidCredentials();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cancelledByUser,TResult? Function()?  serverError,TResult? Function()?  emailNotAllowed,TResult? Function()?  emailOrPasswordInvalid,TResult? Function()?  userAlreadyExists,TResult? Function()?  invalidCredentials,}) {final _that = this;
switch (_that) {
case AuthCancelledByUser() when cancelledByUser != null:
return cancelledByUser();case AuthServerError() when serverError != null:
return serverError();case AuthEmailNotAllowed() when emailNotAllowed != null:
return emailNotAllowed();case AuthEmailOrPasswordInvalid() when emailOrPasswordInvalid != null:
return emailOrPasswordInvalid();case UserAlreadyExists() when userAlreadyExists != null:
return userAlreadyExists();case InvalidCredentials() when invalidCredentials != null:
return invalidCredentials();case _:
  return null;

}
}

}

/// @nodoc


class AuthCancelledByUser implements AuthFailure {
  const AuthCancelledByUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthCancelledByUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.cancelledByUser()';
}


}




/// @nodoc


class AuthServerError implements AuthFailure {
  const AuthServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.serverError()';
}


}




/// @nodoc


class AuthEmailNotAllowed implements AuthFailure {
  const AuthEmailNotAllowed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEmailNotAllowed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailNotAllowed()';
}


}




/// @nodoc


class AuthEmailOrPasswordInvalid implements AuthFailure {
  const AuthEmailOrPasswordInvalid();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEmailOrPasswordInvalid);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailOrPasswordInvalid()';
}


}




/// @nodoc


class UserAlreadyExists implements AuthFailure {
  const UserAlreadyExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAlreadyExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.userAlreadyExists()';
}


}




/// @nodoc


class InvalidCredentials implements AuthFailure {
  const InvalidCredentials();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidCredentials);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.invalidCredentials()';
}


}




// dart format on
