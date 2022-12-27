// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInState {
  bool get check => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  AuthLogin get authLogin => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {bool check,
      String email,
      String password,
      User user,
      AuthLogin authLogin,
      String? token});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? email = null,
    Object? password = null,
    Object? user = null,
    Object? authLogin = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      authLogin: null == authLogin
          ? _value.authLogin
          : authLogin // ignore: cast_nullable_to_non_nullable
              as AuthLogin,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool check,
      String email,
      String password,
      User user,
      AuthLogin authLogin,
      String? token});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? check = null,
    Object? email = null,
    Object? password = null,
    Object? user = null,
    Object? authLogin = null,
    Object? token = freezed,
  }) {
    return _then(_$_SignInState(
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      authLogin: null == authLogin
          ? _value.authLogin
          : authLogin // ignore: cast_nullable_to_non_nullable
              as AuthLogin,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SignInState extends _SignInState {
  _$_SignInState(
      {required this.check,
      required this.email,
      required this.password,
      required this.user,
      required this.authLogin,
      required this.token})
      : super._();

  @override
  final bool check;
  @override
  final String email;
  @override
  final String password;
  @override
  final User user;
  @override
  final AuthLogin authLogin;
  @override
  final String? token;

  @override
  String toString() {
    return 'SignInState(check: $check, email: $email, password: $password, user: $user, authLogin: $authLogin, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.check, check) || other.check == check) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authLogin, authLogin) ||
                other.authLogin == authLogin) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, check, email, password, user, authLogin, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState extends SignInState {
  factory _SignInState(
      {required final bool check,
      required final String email,
      required final String password,
      required final User user,
      required final AuthLogin authLogin,
      required final String? token}) = _$_SignInState;
  _SignInState._() : super._();

  @override
  bool get check;
  @override
  String get email;
  @override
  String get password;
  @override
  User get user;
  @override
  AuthLogin get authLogin;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
