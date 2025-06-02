// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UsernameChangedImplCopyWith<$Res> {
  factory _$$UsernameChangedImplCopyWith(_$UsernameChangedImpl value,
          $Res Function(_$UsernameChangedImpl) then) =
      __$$UsernameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UsernameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$UsernameChangedImpl>
    implements _$$UsernameChangedImplCopyWith<$Res> {
  __$$UsernameChangedImplCopyWithImpl(
      _$UsernameChangedImpl _value, $Res Function(_$UsernameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UsernameChangedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameChangedImpl implements UsernameChanged {
  const _$UsernameChangedImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'RegisterEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameChangedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      __$$UsernameChangedImplCopyWithImpl<_$UsernameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) {
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return usernameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements RegisterEvent {
  const factory UsernameChanged(final String username) = _$UsernameChangedImpl;

  String get username;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameChangedImplCopyWith<_$UsernameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordConfirmChangedImplCopyWith<$Res> {
  factory _$$PasswordConfirmChangedImplCopyWith(
          _$PasswordConfirmChangedImpl value,
          $Res Function(_$PasswordConfirmChangedImpl) then) =
      __$$PasswordConfirmChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordConfirm});
}

/// @nodoc
class __$$PasswordConfirmChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordConfirmChangedImpl>
    implements _$$PasswordConfirmChangedImplCopyWith<$Res> {
  __$$PasswordConfirmChangedImplCopyWithImpl(
      _$PasswordConfirmChangedImpl _value,
      $Res Function(_$PasswordConfirmChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordConfirm = null,
  }) {
    return _then(_$PasswordConfirmChangedImpl(
      null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordConfirmChangedImpl implements PasswordConfirmChanged {
  const _$PasswordConfirmChangedImpl(this.passwordConfirm);

  @override
  final String passwordConfirm;

  @override
  String toString() {
    return 'RegisterEvent.passwordConfirmChanged(passwordConfirm: $passwordConfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordConfirmChangedImpl &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordConfirm);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordConfirmChangedImplCopyWith<_$PasswordConfirmChangedImpl>
      get copyWith => __$$PasswordConfirmChangedImplCopyWithImpl<
          _$PasswordConfirmChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) {
    return passwordConfirmChanged(passwordConfirm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return passwordConfirmChanged?.call(passwordConfirm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(passwordConfirm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return passwordConfirmChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return passwordConfirmChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordConfirmChanged != null) {
      return passwordConfirmChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordConfirmChanged implements RegisterEvent {
  const factory PasswordConfirmChanged(final String passwordConfirm) =
      _$PasswordConfirmChangedImpl;

  String get passwordConfirm;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordConfirmChangedImplCopyWith<_$PasswordConfirmChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarChangedImplCopyWith<$Res> {
  factory _$$AvatarChangedImplCopyWith(
          _$AvatarChangedImpl value, $Res Function(_$AvatarChangedImpl) then) =
      __$$AvatarChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? avatarFile});
}

/// @nodoc
class __$$AvatarChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$AvatarChangedImpl>
    implements _$$AvatarChangedImplCopyWith<$Res> {
  __$$AvatarChangedImplCopyWithImpl(
      _$AvatarChangedImpl _value, $Res Function(_$AvatarChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarFile = freezed,
  }) {
    return _then(_$AvatarChangedImpl(
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AvatarChangedImpl implements AvatarChanged {
  const _$AvatarChangedImpl({required this.avatarFile});

  @override
  final XFile? avatarFile;

  @override
  String toString() {
    return 'RegisterEvent.avatarChanged(avatarFile: $avatarFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarChangedImpl &&
            (identical(other.avatarFile, avatarFile) ||
                other.avatarFile == avatarFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarFile);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
      __$$AvatarChangedImplCopyWithImpl<_$AvatarChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) {
    return avatarChanged(avatarFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return avatarChanged?.call(avatarFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(avatarFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class AvatarChanged implements RegisterEvent {
  const factory AvatarChanged({required final XFile? avatarFile}) =
      _$AvatarChangedImpl;

  XFile? get avatarFile;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarChangedImplCopyWith<_$AvatarChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSubmittedImplCopyWith<$Res> {
  factory _$$RegisterSubmittedImplCopyWith(_$RegisterSubmittedImpl value,
          $Res Function(_$RegisterSubmittedImpl) then) =
      __$$RegisterSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSubmittedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterSubmittedImpl>
    implements _$$RegisterSubmittedImplCopyWith<$Res> {
  __$$RegisterSubmittedImplCopyWithImpl(_$RegisterSubmittedImpl _value,
      $Res Function(_$RegisterSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterSubmittedImpl implements RegisterSubmitted {
  const _$RegisterSubmittedImpl();

  @override
  String toString() {
    return 'RegisterEvent.registerSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) usernameChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String passwordConfirm) passwordConfirmChanged,
    required TResult Function(XFile? avatarFile) avatarChanged,
    required TResult Function() registerSubmitted,
  }) {
    return registerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? usernameChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String passwordConfirm)? passwordConfirmChanged,
    TResult? Function(XFile? avatarFile)? avatarChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return registerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? usernameChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String passwordConfirm)? passwordConfirmChanged,
    TResult Function(XFile? avatarFile)? avatarChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsernameChanged value) usernameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordConfirmChanged value)
        passwordConfirmChanged,
    required TResult Function(AvatarChanged value) avatarChanged,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UsernameChanged value)? usernameChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult? Function(AvatarChanged value)? avatarChanged,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsernameChanged value)? usernameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordConfirmChanged value)? passwordConfirmChanged,
    TResult Function(AvatarChanged value)? avatarChanged,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegisterSubmitted implements RegisterEvent {
  const factory RegisterSubmitted() = _$RegisterSubmittedImpl;
}

/// @nodoc
mixin _$RegisterState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  XFile? get avatarFile => throw _privateConstructorUsedError;
  Uint8List? get avatarBytes =>
      throw _privateConstructorUsedError; // User's selected avatar image bytes
  bool get isSubmitting => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get successMessage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String username,
      String password,
      String passwordConfirm,
      XFile? avatarFile,
      Uint8List? avatarBytes,
      bool isSubmitting,
      String? avatarUrl,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? avatarFile = freezed,
    Object? avatarBytes = freezed,
    Object? isSubmitting = null,
    Object? avatarUrl = freezed,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      avatarBytes: freezed == avatarBytes
          ? _value.avatarBytes
          : avatarBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String password,
      String passwordConfirm,
      XFile? avatarFile,
      Uint8List? avatarBytes,
      bool isSubmitting,
      String? avatarUrl,
      String? successMessage,
      String? errorMessage});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? avatarFile = freezed,
    Object? avatarBytes = freezed,
    Object? isSubmitting = null,
    Object? avatarUrl = freezed,
    Object? successMessage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      avatarFile: freezed == avatarFile
          ? _value.avatarFile
          : avatarFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
      avatarBytes: freezed == avatarBytes
          ? _value.avatarBytes
          : avatarBytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      successMessage: freezed == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl(
      {this.username = '',
      this.password = '',
      this.passwordConfirm = '',
      this.avatarFile,
      this.avatarBytes,
      this.isSubmitting = false,
      this.avatarUrl,
      this.successMessage,
      this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordConfirm;
  @override
  final XFile? avatarFile;
  @override
  final Uint8List? avatarBytes;
// User's selected avatar image bytes
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  final String? avatarUrl;
  @override
  final String? successMessage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterState(username: $username, password: $password, passwordConfirm: $passwordConfirm, avatarFile: $avatarFile, avatarBytes: $avatarBytes, isSubmitting: $isSubmitting, avatarUrl: $avatarUrl, successMessage: $successMessage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.avatarFile, avatarFile) ||
                other.avatarFile == avatarFile) &&
            const DeepCollectionEquality()
                .equals(other.avatarBytes, avatarBytes) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      password,
      passwordConfirm,
      avatarFile,
      const DeepCollectionEquality().hash(avatarBytes),
      isSubmitting,
      avatarUrl,
      successMessage,
      errorMessage);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState(
      {final String username,
      final String password,
      final String passwordConfirm,
      final XFile? avatarFile,
      final Uint8List? avatarBytes,
      final bool isSubmitting,
      final String? avatarUrl,
      final String? successMessage,
      final String? errorMessage}) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  String get username;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  XFile? get avatarFile;
  @override
  Uint8List? get avatarBytes; // User's selected avatar image bytes
  @override
  bool get isSubmitting;
  @override
  String? get avatarUrl;
  @override
  String? get successMessage;
  @override
  String? get errorMessage;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
