import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/usecase/usecase.dart';
import 'package:meepshoptest/features/conversation/domain/usecases/get_conversations_usecase.dart';
import 'package:meepshoptest/features/conversation/presentation/blocs/conversation_list_event.dart';
import 'package:meepshoptest/features/conversation/presentation/blocs/conversation_list_state.dart';

@injectable
class ConversationListBloc
    extends Bloc<ConversationListEvent, ConversationListState> {
  final GetConversationsUseCase _getConversationsUseCase;

  ConversationListBloc(this._getConversationsUseCase)
    : super(const ConversationListState.initial()) {
    on<LoadConversations>(_onLoadConversations);
  }

  Future<void> _onLoadConversations(
    LoadConversations event,
    Emitter<ConversationListState> emit,
  ) async {
    emit(const ConversationListState.loading());
    final result = await _getConversationsUseCase(NoParams());
    result.fold(
      (failure) => emit(ConversationListState.error(failure: failure)),
      (conversations) =>
          emit(ConversationListState.loaded(conversations: conversations)),
    );
  }
}
