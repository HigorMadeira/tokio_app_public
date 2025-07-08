// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignUpState {
  bool get isSignUp => throw _privateConstructorUsedError;
  String? get cpf => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get firstPassword => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
    SignUpState value,
    $Res Function(SignUpState) then,
  ) = _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call({
    bool isSignUp,
    String? cpf,
    String? name,
    String? firstPassword,
    String? password,
  });
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? cpf = freezed,
    Object? name = freezed,
    Object? firstPassword = freezed,
    Object? password = freezed,
  }) {
    return _then(
      _value.copyWith(
            isSignUp: null == isSignUp
                ? _value.isSignUp
                : isSignUp // ignore: cast_nullable_to_non_nullable
                      as bool,
            cpf: freezed == cpf
                ? _value.cpf
                : cpf // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstPassword: freezed == firstPassword
                ? _value.firstPassword
                : firstPassword // ignore: cast_nullable_to_non_nullable
                      as String?,
            password: freezed == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
    _$SignUpStateImpl value,
    $Res Function(_$SignUpStateImpl) then,
  ) = __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isSignUp,
    String? cpf,
    String? name,
    String? firstPassword,
    String? password,
  });
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
    _$SignUpStateImpl _value,
    $Res Function(_$SignUpStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = null,
    Object? cpf = freezed,
    Object? name = freezed,
    Object? firstPassword = freezed,
    Object? password = freezed,
  }) {
    return _then(
      _$SignUpStateImpl(
        isSignUp: null == isSignUp
            ? _value.isSignUp
            : isSignUp // ignore: cast_nullable_to_non_nullable
                  as bool,
        cpf: freezed == cpf
            ? _value.cpf
            : cpf // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstPassword: freezed == firstPassword
            ? _value.firstPassword
            : firstPassword // ignore: cast_nullable_to_non_nullable
                  as String?,
        password: freezed == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl({
    required this.isSignUp,
    required this.cpf,
    required this.name,
    required this.firstPassword,
    required this.password,
  });

  @override
  final bool isSignUp;
  @override
  final String? cpf;
  @override
  final String? name;
  @override
  final String? firstPassword;
  @override
  final String? password;

  @override
  String toString() {
    return 'SignUpState(isSignUp: $isSignUp, cpf: $cpf, name: $name, firstPassword: $firstPassword, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstPassword, firstPassword) ||
                other.firstPassword == firstPassword) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSignUp, cpf, name, firstPassword, password);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState({
    required final bool isSignUp,
    required final String? cpf,
    required final String? name,
    required final String? firstPassword,
    required final String? password,
  }) = _$SignUpStateImpl;

  @override
  bool get isSignUp;
  @override
  String? get cpf;
  @override
  String? get name;
  @override
  String? get firstPassword;
  @override
  String? get password;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
