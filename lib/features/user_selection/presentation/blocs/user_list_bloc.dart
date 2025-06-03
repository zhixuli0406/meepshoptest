import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/auth/domain/entities/user_entity.dart';
import 'package:meepshoptest/features/auth/domain/usecases/get_users_usecase.dart';

part 'user_list_bloc.freezed.dart';
part 'user_list_event.dart';
part 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetUsersUseCase _getUsersUseCase;

  UserListBloc(this._getUsersUseCase) : super(const UserListState.initial()) {
    on<_LoadUsersRequested>(_onLoadUsersRequested);
    on<_ToggleUserSelection>(_onToggleUserSelection);
  }

  Future<void> _onLoadUsersRequested(
    _LoadUsersRequested event,
    Emitter<UserListState> emit,
  ) async {
    emit(const UserListState.loading());
    final result = await _getUsersUseCase(NoParams());
    result.fold((failure) => emit(UserListState.error(failure: failure)), (
      users,
    ) {
      final filteredUsers =
          users.where((user) => user.id != event.currentUserId).toList();
      emit(
        UserListState.loaded(users: filteredUsers, selectedUserIds: const {}),
      );
    });
  }

  void _onToggleUserSelection(
    _ToggleUserSelection event,
    Emitter<UserListState> emit,
  ) {
    final currentState = state;
    if (currentState is Loaded) {
      final currentSelectedIds = Set<String>.from(currentState.selectedUserIds);
      if (currentSelectedIds.contains(event.userId)) {
        currentSelectedIds.remove(event.userId);
      } else {
        currentSelectedIds.add(event.userId);
      }
      emit(currentState.copyWith(selectedUserIds: currentSelectedIds));
    }
  }
}
