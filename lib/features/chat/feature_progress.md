# Chat Feature Progress

## Feature: Create New Conversation

**Objective:** Allow users to create a new conversation.

**Current Status:** Initial implementation complete.

**Layers Implemented:**

- **Domain Layer:**
  - `ConversationEntity`: Defined.
  - `ChatRepository` (Interface): Defined with `createConversation` method.
  - `CreateConversationUseCase`: Implemented, depends on `ChatRepository`.
  - `CreateConversationParams`: Defined for `CreateConversationUseCase`.

- **Data Layer:**
  - `ConversationModel`: Defined with `fromJson`, `fromEntity`, `toEntity` methods (Freezed).
  - `ChatDataSourceService` (Interface): Defined with `createConversation` method.
  - `ChatRemoteDataSourceImpl` (Implements `ChatDataSourceService`): Implemented with a *simulated* API call for `createConversation`.
  - `ChatRepositoryImpl` (Implements `ChatRepository`): Implemented, depends on `ChatDataSourceService`, maps `ConversationModel` to `ConversationEntity`.
  - `MessageInputModel`: Defined for `createMessage` data structure.
  - `MessageModel`: Defined with `toEntity` extension method (Freezed).

- **Presentation Layer:**
  - `CreateConversationEvent`: Defined (`createRequested`) (Freezed).
  - `CreateConversationState`: Defined (`initial`, `loading`, `success`, `error`) (Freezed).
  - `CreateConversationBloc`: Implemented, handles `_CreateConversationRequested` event, uses `CreateConversationUseCase`, emits states.
  - `ChatOverviewPage`: Basic UI created with an `IconButton` in `AppBar` to trigger `CreateConversationEvent.createRequested`.
    - Uses `BlocProvider` to provide `CreateConversationBloc`.
    - Uses `BlocListener` to show `SnackBar` messages on success or error.
    - **Note:** Dependency Injection for `CreateConversationUseCase` in `ChatOverviewPage` needs to be properly configured (e.g., using GetIt/Injectable).

**Next Steps / To-Do:**

- [ ] **Implement Real API Call:** Replace the simulated API call in `ChatRemoteDataSourceImpl` with a real HTTP request (e.g., using `ApiClient` or `Dio`).
- [ ] **Dependency Injection Setup:** Fully configure and integrate `get_it` and `injectable` for all layers.
  - Register all UseCases, Repositories, DataSources, and BLoCs.
  - Ensure `ChatOverviewPage` correctly receives `CreateConversationBloc` or its dependencies through DI.
- [ ] **UI for Input:** Implement a dialog or a separate screen to allow users to input the conversation name and select members, instead of using default values.
- [ ] **Error Handling:** Enhance error handling and display more user-friendly error messages in the UI.
- [ ] **Navigation:** After successful conversation creation, navigate to the newly created chat screen.
- [ ] **Chat Screen UI:** Develop the actual chat screen UI to display messages.
- [ ] **State Management for Chat Screen:** Implement BLoCs for fetching and sending messages for a specific conversation.
- [ ] **Code Generation:** Ensure all `freezed` generated files (`*.freezed.dart`, `*.g.dart`) are correctly generated by running `flutter pub run build_runner build --delete-conflicting-outputs`.
- [ ] **Testing:** Write unit and widget tests for the implemented components.
- [ ] **Code Review & Refinement.**

**Files Created/Modified:**

- `lib/core/errors/failure.dart`
- `lib/core/usecase/usecase.dart`
- `lib/features/chat/domain/entities/conversation_entity.dart`
- `lib/features/chat/domain/repositories/chat_repository.dart`
- `lib/features/chat/domain/usecases/create_conversation_usecase.dart`
- `lib/features/chat/data/models/conversation_model.dart`
- `lib/features/chat/data/models/message_model.dart` (Reviewed for `toEntity`)
- `lib/features/chat/data/models/message_input_model.dart` (Reviewed)
- `lib/features/chat/data/services/chat_data_source_service.dart` (Interface)
- `lib/features/chat/data/services/chat_remote_data_source.dart` (Implementation of `ChatDataSourceService`)
- `lib/features/chat/data/repositories/chat_repository_impl.dart`
- `lib/features/chat/presentation/blocs/create_conversation/create_conversation_event.dart`
- `lib/features/chat/presentation/blocs/create_conversation/create_conversation_state.dart`
- `lib/features/chat/presentation/blocs/create_conversation/create_conversation_bloc.dart`
- `lib/features/chat/presentation/pages/chat_overview_page.dart`
- `lib/features/chat/feature_progress.md`

## 階段一: 基礎建設

- [ ] 建立 `chat` 功能模組目錄結構 (遵循 Clean Architecture)
- [ ] 設定 Mock API 資料來源 (`chat_data.json`)

## 階段二: 資料層 (Data Layer)

- [ ] **Models (DTOs)**
    - [ ] `ConversationModel` (對應 `conversations` 陣列中的項目)
    - [ ] `MessageModel` (對應 `messages` 陣列中的項目)
    - [ ] `ParticipantModel` (對應 `conversations.participants`)
    - [ ] `ReactionsModel` (對應 `messages.reactions`)
- [ ] **Services (Data Sources)**
    - [ ] `ChatLocalService` (處理本地 JSON 讀取)
        - [ ] `getConversations()`: 讀取 `chat_data.json` 中的 `conversations`
        - [ ] `getMessages(conversationId)`: 讀取 `chat_data.json` 中的 `messages` 並依 `conversationId` 篩選
        - [ ] `createMessage(conversationId, message)`: (模擬) 新增訊息到記憶體，並更新對話
- [ ] **Repositories (Implementations)**
    - [ ] `ChatRepositoryImpl` 實作 `ChatRepository`
        - [ ] 處理從 `ChatLocalService` 獲取資料並轉換為 Domain Entities
        - [ ] 處理錯誤映射 (e.g., `DataSourceError` to `Failure`)

## 階段三: 領域層 (Domain Layer)

- [ ] **Entities**
    - [ ] `ConversationEntity`
    - [ ] `MessageEntity`
    - [ ] `ParticipantEntity`
    - [ ] `ReactionsEntity`
- [ ] **Repositories (Interfaces)**
    - [ ] `ChatRepository` 抽象介面
        - [ ] `Future<Either<Failure, List<ConversationEntity>>> getConversations();`
        - [ ] `Future<Either<Failure, List<MessageEntity>>> getMessages(String conversationId);`
        - [ ] `Future<Either<Failure, void>> createMessage(String conversationId, MessageEntity message);`
- [ ] **Use Cases**
    - [ ] `GetConversationsUsecase`
    - [ ] `GetMessagesUsecase`
    - [ ] `CreateMessageUsecase`

## 階段四: 表現層 (Presentation Layer)

- [ ] **Blocs/Cubits**
    - [ ] `ConversationListBloc`
        - [ ] Events: `LoadConversations`
        - [ ] States: `Initial`, `Loading`, `Loaded (List<ConversationEntity>)`, `Error (Failure)`
    - [ ] `ChatMessageBloc`
        - [ ] Events: `LoadMessages(conversationId)`, `SendMessage(message)`
        - [ ] States: `Initial`, `Loading`, `Loaded (List<MessageEntity>)`, `Error (Failure)`, `MessageSent`
- [ ] **Pages**
    - [ ] `ConversationListPage`
        - [ ] 顯示對話列表
        - [ ] 點擊對話進入 `ChatMessagePage`
    - [ ] `ChatMessagePage`
        - [ ] 顯示聊天訊息
        - [ ] 輸入並發送訊息
- [ ] **Widgets**
    - [ ] `ConversationListItem` (用於對話列表)
    - [ ] `MessageBubble` (用於顯示單一訊息，處理不同訊息類型：文字、圖片、系統)
    - [ ] `MessageInputBar` (用於輸入訊息)

## 階段五: 核心功能整合 (Core)

- [ ] **Router** (`core/router/router.dart`)
    - [ ] 定義 `ConversationListPageRoute`
    - [ ] 定義 `ChatMessagePageRoute`
- [ ] **Dependency Injection** (`injectable.dart`)
    - [ ] 註冊 Chat 相關的 Repositories, UseCases, Blocs
- [ ] **Error Handling** (`core/errors/failure.dart`)
    - [ ] 定義通用的 `Failure` 類型 (e.g., `ServerFailure`, `CacheFailure`)

## 階段六: UI/UX 優化

- [ ] 使用 `flutter_screenutil` 進行響應式設計
- [ ] 完善 UI 細節與使用者體驗
- [ ] 處理圖片顯示
- [ ] 處理訊息反應的顯示

## 階段七: 測試 (選填)

- [ ] Widget tests
- [ ] Bloc tests 