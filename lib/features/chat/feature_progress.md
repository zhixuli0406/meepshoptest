# Chat Feature 開發進度

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