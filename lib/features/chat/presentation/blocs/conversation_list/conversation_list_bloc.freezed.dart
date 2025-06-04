// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConversations,
    required TResult Function(String currentUserId) initialize,
    required TResult Function(UpdateConversationListData updateData)
        handleWebSocketUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
    TResult? Function(String currentUserId)? initialize,
    TResult? Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
    TResult Function(String currentUserId)? initialize,
    TResult Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(InitializeConversationList value) initialize,
    required TResult Function(HandleWebSocketUpdate value)
        handleWebSocketUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(InitializeConversationList value)? initialize,
    TResult? Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(InitializeConversationList value)? initialize,
    TResult Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListEventCopyWith<$Res> {
  factory $ConversationListEventCopyWith(ConversationListEvent value,
          $Res Function(ConversationListEvent) then) =
      _$ConversationListEventCopyWithImpl<$Res, ConversationListEvent>;
}

/// @nodoc
class _$ConversationListEventCopyWithImpl<$Res,
        $Val extends ConversationListEvent>
    implements $ConversationListEventCopyWith<$Res> {
  _$ConversationListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadConversationsImplCopyWith<$Res> {
  factory _$$LoadConversationsImplCopyWith(_$LoadConversationsImpl value,
          $Res Function(_$LoadConversationsImpl) then) =
      __$$LoadConversationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadConversationsImplCopyWithImpl<$Res>
    extends _$ConversationListEventCopyWithImpl<$Res, _$LoadConversationsImpl>
    implements _$$LoadConversationsImplCopyWith<$Res> {
  __$$LoadConversationsImplCopyWithImpl(_$LoadConversationsImpl _value,
      $Res Function(_$LoadConversationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadConversationsImpl
    with DiagnosticableTreeMixin
    implements LoadConversations {
  const _$LoadConversationsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListEvent.loadConversations()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'ConversationListEvent.loadConversations'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadConversationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConversations,
    required TResult Function(String currentUserId) initialize,
    required TResult Function(UpdateConversationListData updateData)
        handleWebSocketUpdate,
  }) {
    return loadConversations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
    TResult? Function(String currentUserId)? initialize,
    TResult? Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
  }) {
    return loadConversations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
    TResult Function(String currentUserId)? initialize,
    TResult Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (loadConversations != null) {
      return loadConversations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(InitializeConversationList value) initialize,
    required TResult Function(HandleWebSocketUpdate value)
        handleWebSocketUpdate,
  }) {
    return loadConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(InitializeConversationList value)? initialize,
    TResult? Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
  }) {
    return loadConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(InitializeConversationList value)? initialize,
    TResult Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (loadConversations != null) {
      return loadConversations(this);
    }
    return orElse();
  }
}

abstract class LoadConversations implements ConversationListEvent {
  const factory LoadConversations() = _$LoadConversationsImpl;
}

/// @nodoc
abstract class _$$InitializeConversationListImplCopyWith<$Res> {
  factory _$$InitializeConversationListImplCopyWith(
          _$InitializeConversationListImpl value,
          $Res Function(_$InitializeConversationListImpl) then) =
      __$$InitializeConversationListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currentUserId});
}

/// @nodoc
class __$$InitializeConversationListImplCopyWithImpl<$Res>
    extends _$ConversationListEventCopyWithImpl<$Res,
        _$InitializeConversationListImpl>
    implements _$$InitializeConversationListImplCopyWith<$Res> {
  __$$InitializeConversationListImplCopyWithImpl(
      _$InitializeConversationListImpl _value,
      $Res Function(_$InitializeConversationListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
  }) {
    return _then(_$InitializeConversationListImpl(
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeConversationListImpl
    with DiagnosticableTreeMixin
    implements InitializeConversationList {
  const _$InitializeConversationListImpl({required this.currentUserId});

  @override
  final String currentUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListEvent.initialize(currentUserId: $currentUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationListEvent.initialize'))
      ..add(DiagnosticsProperty('currentUserId', currentUserId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeConversationListImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId);

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeConversationListImplCopyWith<_$InitializeConversationListImpl>
      get copyWith => __$$InitializeConversationListImplCopyWithImpl<
          _$InitializeConversationListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConversations,
    required TResult Function(String currentUserId) initialize,
    required TResult Function(UpdateConversationListData updateData)
        handleWebSocketUpdate,
  }) {
    return initialize(currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
    TResult? Function(String currentUserId)? initialize,
    TResult? Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
  }) {
    return initialize?.call(currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
    TResult Function(String currentUserId)? initialize,
    TResult Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(InitializeConversationList value) initialize,
    required TResult Function(HandleWebSocketUpdate value)
        handleWebSocketUpdate,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(InitializeConversationList value)? initialize,
    TResult? Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(InitializeConversationList value)? initialize,
    TResult Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeConversationList implements ConversationListEvent {
  const factory InitializeConversationList(
      {required final String currentUserId}) = _$InitializeConversationListImpl;

  String get currentUserId;

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializeConversationListImplCopyWith<_$InitializeConversationListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandleWebSocketUpdateImplCopyWith<$Res> {
  factory _$$HandleWebSocketUpdateImplCopyWith(
          _$HandleWebSocketUpdateImpl value,
          $Res Function(_$HandleWebSocketUpdateImpl) then) =
      __$$HandleWebSocketUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateConversationListData updateData});
}

/// @nodoc
class __$$HandleWebSocketUpdateImplCopyWithImpl<$Res>
    extends _$ConversationListEventCopyWithImpl<$Res,
        _$HandleWebSocketUpdateImpl>
    implements _$$HandleWebSocketUpdateImplCopyWith<$Res> {
  __$$HandleWebSocketUpdateImplCopyWithImpl(_$HandleWebSocketUpdateImpl _value,
      $Res Function(_$HandleWebSocketUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateData = null,
  }) {
    return _then(_$HandleWebSocketUpdateImpl(
      updateData: null == updateData
          ? _value.updateData
          : updateData // ignore: cast_nullable_to_non_nullable
              as UpdateConversationListData,
    ));
  }
}

/// @nodoc

class _$HandleWebSocketUpdateImpl
    with DiagnosticableTreeMixin
    implements HandleWebSocketUpdate {
  const _$HandleWebSocketUpdateImpl({required this.updateData});

  @override
  final UpdateConversationListData updateData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListEvent.handleWebSocketUpdate(updateData: $updateData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ConversationListEvent.handleWebSocketUpdate'))
      ..add(DiagnosticsProperty('updateData', updateData));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleWebSocketUpdateImpl &&
            (identical(other.updateData, updateData) ||
                other.updateData == updateData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updateData);

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleWebSocketUpdateImplCopyWith<_$HandleWebSocketUpdateImpl>
      get copyWith => __$$HandleWebSocketUpdateImplCopyWithImpl<
          _$HandleWebSocketUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadConversations,
    required TResult Function(String currentUserId) initialize,
    required TResult Function(UpdateConversationListData updateData)
        handleWebSocketUpdate,
  }) {
    return handleWebSocketUpdate(updateData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
    TResult? Function(String currentUserId)? initialize,
    TResult? Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
  }) {
    return handleWebSocketUpdate?.call(updateData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
    TResult Function(String currentUserId)? initialize,
    TResult Function(UpdateConversationListData updateData)?
        handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (handleWebSocketUpdate != null) {
      return handleWebSocketUpdate(updateData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConversations value) loadConversations,
    required TResult Function(InitializeConversationList value) initialize,
    required TResult Function(HandleWebSocketUpdate value)
        handleWebSocketUpdate,
  }) {
    return handleWebSocketUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
    TResult? Function(InitializeConversationList value)? initialize,
    TResult? Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
  }) {
    return handleWebSocketUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
    TResult Function(InitializeConversationList value)? initialize,
    TResult Function(HandleWebSocketUpdate value)? handleWebSocketUpdate,
    required TResult orElse(),
  }) {
    if (handleWebSocketUpdate != null) {
      return handleWebSocketUpdate(this);
    }
    return orElse();
  }
}

abstract class HandleWebSocketUpdate implements ConversationListEvent {
  const factory HandleWebSocketUpdate(
          {required final UpdateConversationListData updateData}) =
      _$HandleWebSocketUpdateImpl;

  UpdateConversationListData get updateData;

  /// Create a copy of ConversationListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HandleWebSocketUpdateImplCopyWith<_$HandleWebSocketUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ConversationEntity> conversations) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ConversationEntity> conversations)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ConversationEntity> conversations)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListStateCopyWith<$Res> {
  factory $ConversationListStateCopyWith(ConversationListState value,
          $Res Function(ConversationListState) then) =
      _$ConversationListStateCopyWithImpl<$Res, ConversationListState>;
}

/// @nodoc
class _$ConversationListStateCopyWithImpl<$Res,
        $Val extends ConversationListState>
    implements $ConversationListStateCopyWith<$Res> {
  _$ConversationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ConversationListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConversationListState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ConversationEntity> conversations) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ConversationEntity> conversations)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ConversationEntity> conversations)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConversationListState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ConversationListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConversationListState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ConversationEntity> conversations) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ConversationEntity> conversations)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ConversationEntity> conversations)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ConversationListState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ConversationEntity> conversations});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ConversationListStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversations = null,
  }) {
    return _then(_$LoadedImpl(
      conversations: null == conversations
          ? _value._conversations
          : conversations // ignore: cast_nullable_to_non_nullable
              as List<ConversationEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements Loaded {
  const _$LoadedImpl({required final List<ConversationEntity> conversations})
      : _conversations = conversations;

  final List<ConversationEntity> _conversations;
  @override
  List<ConversationEntity> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListState.loaded(conversations: $conversations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationListState.loaded'))
      ..add(DiagnosticsProperty('conversations', conversations));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._conversations, _conversations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conversations));

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ConversationEntity> conversations) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(conversations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ConversationEntity> conversations)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(conversations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ConversationEntity> conversations)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(conversations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ConversationListState {
  const factory Loaded(
      {required final List<ConversationEntity> conversations}) = _$LoadedImpl;

  List<ConversationEntity> get conversations;

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ConversationListStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConversationListState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConversationListState.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ConversationEntity> conversations) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ConversationEntity> conversations)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ConversationEntity> conversations)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ConversationListState {
  const factory Error({required final Failure failure}) = _$ErrorImpl;

  Failure get failure;

  /// Create a copy of ConversationListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
