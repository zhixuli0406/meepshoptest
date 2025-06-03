part of 'user_list_bloc.dart';

@freezed
sealed class UserListState with _$UserListState {
  const factory UserListState.initial() = Initial;
  const factory UserListState.loading() = Loading;
  const factory UserListState.loaded({
    required List<UserEntity> users,
    @Default(<String>{}) Set<String> selectedUserIds,
  }) = Loaded;
  const factory UserListState.error({required Failure failure}) = Error;
}
