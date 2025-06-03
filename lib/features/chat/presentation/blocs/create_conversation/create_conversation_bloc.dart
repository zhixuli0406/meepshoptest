import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/errors/failure.dart';
import 'package:meepshoptest/features/chat/domain/entities/conversation_entity.dart';
import 'package:meepshoptest/features/chat/domain/usecases/create_conversation_usecase.dart';

part 'create_conversation_event.dart';
part 'create_conversation_state.dart';
part 'create_conversation_bloc.freezed.dart';

@injectable
class CreateConversationBloc
    extends Bloc<CreateConversationEvent, CreateConversationState> {
  final CreateConversationUseCase _createConversationUseCase;

  CreateConversationBloc({
    required CreateConversationUseCase createConversationUseCase,
  }) : _createConversationUseCase = createConversationUseCase,
       super(const CreateConversationState.initial()) {
    on<_CreateConversationRequested>(_onCreateConversationRequested);
  }

  Future<void> _onCreateConversationRequested(
    _CreateConversationRequested event,
    Emitter<CreateConversationState> emit,
  ) async {
    emit(const CreateConversationState.loading());

    final List<String> allMemberIds = List.from(event.memberIds);
    if (!allMemberIds.contains(event.currentUserId)) {
      allMemberIds.add(event.currentUserId);
    }

    final result = await _createConversationUseCase(
      CreateConversationParams(name: event.name, memberIds: allMemberIds),
    );

    result.fold(
      (failure) => emit(CreateConversationState.error(failure)),
      (conversation) => emit(CreateConversationState.success(conversation)),
    );
  }
}
