// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_event.dart';

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConversations value) loadConversations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
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

class _$LoadConversationsImpl implements LoadConversations {
  const _$LoadConversationsImpl();

  @override
  String toString() {
    return 'ConversationListEvent.loadConversations()';
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
  }) {
    return loadConversations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadConversations,
  }) {
    return loadConversations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadConversations,
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
  }) {
    return loadConversations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadConversations value)? loadConversations,
  }) {
    return loadConversations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConversations value)? loadConversations,
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
