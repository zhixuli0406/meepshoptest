part of 'user_list_bloc.dart';

// freezed_annotation import should be in the main bloc file if events/states themselves don't need it directly for other annotations

@freezed
sealed class UserListEvent with _$UserListEvent {
  const factory UserListEvent.loadUsersRequested({
    required String currentUserId,
  }) = _LoadUsersRequested;
  const factory UserListEvent.toggleUserSelection({required String userId}) =
      _ToggleUserSelection;
}
