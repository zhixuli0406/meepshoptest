# MeepShop Test - Flutter 聊天應用程式

這是一個 Flutter 即時聊天應用程式，旨在演示 Clean Architecture、Feature-First 的專案結構以及現代 Flutter 開發實踐。應用程式模擬了對話列表和聊天室的基本功能，並包含自動訊息回覆、訊息反應、圖片傳輸及全螢幕查看等進階功能。

## 目前已實現功能

*   **對話列表頁面 (`ConversationListPage`)**:
    *   啟動應用程式後，首先會顯示此頁面。
    *   從模擬數據加載並列出所有對話。
    *   每個對話會顯示參與者頭像（單人或多人堆疊）、名稱/群組名、格式化後的最後一條訊息（圖片訊息會顯示 `[Image]`）以及相對時間。
    *   點擊任一對話，即可導航至該對話的聊天室頁面。
    *   當聊天室中有新訊息（包括使用者自己發送的或模擬接收的），對話列表會自動更新對應對話的最後訊息和時間戳，並將該對話置頂。
    *   右上角提供主題切換按鈕（亮色/暗色模式）。

*   **聊天訊息頁面 (`ChatMessagePage`)**:
    *   顯示特定對話中的所有訊息，頁面頂部顯示對話標題。
    *   訊息按時間順序排列。
    *   **訊息泡泡 (`_buildMessageBubble`)**:
        *   區分使用者本人（訊息靠右）和其他參與者（訊息靠左，並顯示頭像和用戶名）。
        *   顯示用戶名稱和完整時間戳 (`YYYY-MM-DD HH:MM:SS`)。
        *   支援文字訊息和圖片訊息的顯示 (本地圖片和網路圖片)。
        *   系統訊息（例如提示）會居中顯示。
    *   使用者可以在底部的輸入框輸入文字訊息，並點擊發送按鈕。
    *   提供附加檔案按鈕，點擊後可從裝置相簿選擇圖片並發送。
    *   發送的文字或圖片訊息會立即顯示在聊天記錄中，並更新對話列表。
    *   **模擬自動回覆**:
        *   進入聊天室後，若對話中存在其他參與者（非當前登入用戶），系統會模擬這些參與者之一每隔一段時間（目前為 8 秒）自動發送一條隨機訊息。
        *   如果對話中僅有當前用戶，則會模擬 "Bob" (ID 2) 發送訊息。
    *   **訊息反應 (Reactions)**:
        *   長按任一非系統訊息的泡泡，會在該訊息上方彈出一個 Reaction Picker，包含多種 emoji。
        *   點擊 Picker 中的任一 emoji，即可對該訊息添加或移除一個自己對該 emoji 的反應。
        *   訊息泡泡下方會即時顯示所有用戶對該訊息做出的 Reactions (emoji 及對應的計數)。
        *   點擊已顯示的 Reaction emoji 也可以添加/移除自己的反應。
    *   **全螢幕圖片查看器**:
        *   點擊聊天訊息中的圖片預覽，會導航至一個全螢幕圖片查看頁面。
        *   全螢幕頁面背景為半透明黑色，圖片居中顯示。
        *   支援雙指縮放 (Pinch-to-Zoom) 和單指平移圖片。
        *   右上角提供關閉按鈕，可返回聊天頁面。

## 技術棧與核心原則

*   **框架**: Flutter (使用 `flutter_screenutil` 進行響應式 UI 設計)
*   **架構**: 嚴格遵循 Clean Architecture (Presentation > Domain > Data)
*   **組織方式**: Feature-First (以功能模組組織程式碼，每個功能模組包含自己的 Presentation, Domain, Data 層)
*   **狀態管理**: `flutter_bloc` (搭配 `freezed` 實現不可變的 Bloc State 和 Event)
*   **路由管理**: `auto_route` (用於聲明式頁面導航和參數傳遞)
*   **依賴注入**: `injectable` 搭配 `get_it` (實現服務定位和依賴管理)
*   **非同步與錯誤處理**: `fpdart` (使用 `Either` 進行函數式錯誤處理)
*   **資料模型與序列化**: `freezed` (用於生成資料類別), `json_serializable` (用於 JSON 序列化/反序列化 - 此專案中主要由 `freezed` 的 `fromJson/toJson` 配合)
*   **本地資料模擬**: 使用 `lib/core/dev/manual_mock_chat_local_service.dart` 結合根目錄的 `chat_data.json` 進行資料的讀取與記憶體中的模擬操作。
*   **圖片處理**: `image_picker` (從相簿選擇圖片), `cached_network_image` (高效加載和緩存網路圖片)
*   **UI 元件**: `gap` (替代 `SizedBox` 控制間距)
*   **程式碼風格**: `flutter_lints` (遵循 Dart 官方推薦風格)

## 操作方式

1.  **啟動應用**: 應用啟動後，您將看到對話列表。
2.  **瀏覽對話**: 上下滑動列表查看所有對話。
3.  **進入聊天室**: 點擊任一對話項，進入該對話的聊天訊息頁面。
4.  **查看訊息**: 在聊天室中，訊息會從上到下按時間排列。您可以分辨哪些是您自己發送的，哪些是其他用戶發送的。
5.  **發送文字訊息**: 在底部輸入框中輸入文字，點擊右側的發送圖示按鈕。
6.  **發送圖片訊息**: 點擊輸入框左側的迴紋針圖示按鈕，從相簿中選擇一張圖片，圖片將會被發送。
7.  **查看全螢幕圖片**: 如果聊天中有圖片訊息，點擊圖片預覽即可進入全螢幕查看模式。在此模式下，您可以縮放和平移圖片，點擊右上角關閉按鈕返回。
8.  **訊息反應**:
    *   長按您或其他用戶發送的訊息泡泡，訊息上方會出現一排表情符號。
    *   點擊其中一個表情符號，即可為該訊息添加此反應。如果已反應過，則會移除您的反應。
    *   訊息下方會顯示各種表情符號以及有多少用戶做出了該反應。您也可以點擊這些已顯示的表情符號來快速添加/移除您的反應。
9.  **切換主題**: 在對話列表頁面，點擊右上角的太陽/月亮圖示按鈕，可以在亮色和暗色主題之間切換。
10. **模擬訊息**: 在聊天室中停留一段時間，系統會自動模擬其他用戶發送訊息給您。

## 專案結構 (`lib/` 目錄)

```
├── core/                       # 核心通用功能
│   ├── config/                 # 全局配置 (目前僅 .gitkeep)
│   ├── dev/                    # 開發用模擬服務 (ManualMockChatLocalService)
│   ├── errors/                 # 錯誤處理 (Failure sealed class, .freezed.dart)
│   ├── network/                # 網路層定義 (DioClient - 此專案中主要由本地服務替代)
│   ├── router/                 # 路由配置 (AppRouter, router.gr.dart)
│   ├── shared/                 # 通用功能、擴展、工具、Widgets
│   │   ├── extensions/         # Dart 核心類型擴展 (目前僅 .gitkeep)
│   │   ├── notifiers/          # 全局事件通知 (ConversationUpdateNotifier)
│   │   ├── utils/              # 通用工具函式 (目前僅 .gitkeep)
│   │   └── widgets/            # 通用 Widgets (FullScreenImageViewerPage)
│   ├── theme/                  # 主題相關 (AppTheme, ThemeCubit, ThemeState)
│   └── usecase/                # UseCase 基礎抽象定義
├── features/                   # 功能模組 (遵循 Feature-First)
│   ├── chat/                   # 聊天核心功能
│   │   ├── data/               # 資料層
│   │   │   ├── models/         # 資料傳輸模型 (DTOs, .freezed.dart, .g.dart)
│   │   │   ├── repositories/   # 倉儲實作 (ChatRepositoryImpl)
│   │   │   └── services/       # 資料來源服務介面與遠程實現 (ChatDataSourceService, ChatRemoteDataSource)
│   │   ├── domain/             # 領域層
│   │   │   ├── entities/       # 業務實體 (ConversationEntity, MessageEntity, ReactionDetailEntity, ReactionType enum, .freezed.dart)
│   │   │   ├── repositories/   # 倉儲抽象介面 (ChatRepository)
│   │   │   └── usecases/       # 用例 (GetConversationsUsecase, GetMessagesUsecase, CreateMessageUsecase)
│   │   ├── presentation/       # 表現層
│   │   │   ├── blocs/          # Bloc/Cubit (ConversationListBloc, ChatMessageBloc, .freezed.dart, .dart)
│   │   │   ├── pages/          # 頁面 (ConversationListPage, ChatMessagePage)
│   │   │   └── widgets/        # 特定於此功能的 Widgets (如果有的話)
│   │   └── feature_progress.md # 功能開發進度記錄
├── injectable.dart             # DI 主要配置文件 (手動與自動配置 GetIt)
├── injectable.config.dart      # DI 由 injectable_generator 自動產生的配置文件
├── main.dart                   # 程式主入口 (初始化 GetIt, AppRouter, BlocObserver, runApp)
└── chat_data.json              # Mock API 靜態資料來源，包含對話和訊息範例
```

## Mock 資料服務 (`ManualMockChatLocalService`)

應用程式使用 `lib/core/dev/manual_mock_chat_local_service.dart` 結合根目錄下的 `chat_data.json` 檔案作為資料來源和互動模擬。

*   **取得對話列表**: 從 `chat_data.json` 的 `conversations` 讀取，並動態計算每個對話的最新訊息和時間戳進行排序，模擬延遲。
*   **取得訊息**: 從 `chat_data.json` 的 `messages` 根據 `conversationId` 篩選，並模擬延遲。訊息中的 `reactions` 欄位會從 `Map<String, int>` 轉換為 `List<ReactionDetailEntity>`。
*   **新增訊息**: 將新訊息加入到記憶體中的對應對話訊息列表，並更新該對話的最後訊息與時間戳。此操作僅影響當前執行的應用程式實例，不會修改 `chat_data.json` 檔案。

## 如何執行

1.  **環境準備**: 確保您的 Flutter 開發環境已正確設定 (建議 Flutter 3.19.x 或更高版本)。
2.  **克隆專案**: `git clone <repository_url>`
3.  **進入專案目錄**: `cd meepshoptest`
4.  **安裝依賴**: `flutter pub get`
5.  **產生程式碼**: `flutter pub run build_runner build --delete-conflicting-outputs` (此步驟對於 `freezed`, `injectable`, `auto_route` 至關重要)
6.  **運行應用**: `flutter run` (可選擇模擬器、實體裝置，或桌面平台)

## 程式撰寫標準 (遵循 `custom_instructions.md`)

本專案嚴格遵循 `custom_instructions.md` (假設存在，或指內部開發規範) 中詳述的程式撰寫標準，致力於實現：
*   **Clean Architecture**: 清晰的職責分離。
*   **Feature-First Organization**: 高內聚、低耦合的模組。
*   **響應式設計**: 使用 `@flutter_screenutil`。
*   **狀態管理**: `flutter_bloc`，事件與狀態使用 `freezed`。
*   **路由管理**: `auto_route`。
*   **依賴注入**: `injectable`。
*   **錯誤處理**: `fpdart` 的 `Either`。
*   **程式碼品質**: `flutter_lints`，SOLID 原則，有意義的命名，必要的註解。

## 未來可能的改進/待辦事項

*   真正的後端 API 集成 (替換 Mock Service)。
*   用戶身份驗證流程。
*   更完善的錯誤提示與處理。
*   單元測試與 Widget 測試。
*   推送通知。
*   聊天室設定，如編輯群組名、頭像等。
*   訊息搜尋。
*   語音訊息、檔案傳輸等更多訊息類型。
*   國際化與本地化。

## 使用 Postman Collection 與 Mock Server 進行 API 測試

本專案提供了一個 Postman Collection (`lib/core/dev/postman_collection.json`)，其中包含了用於測試聊天 API 端點的請求範例。您可以將此 Collection 匯入到您的 Postman 應用程式中，並搭配 Postman 的 Mock Server 功能來模擬 API 回應。

### 設定步驟

1.  **匯入 Collection**:
    *   開啟 Postman。
    *   點擊左上角的 "Import" 按鈕。
    *   選擇 `lib/core/dev/postman_collection.json` 檔案並匯入。
    *   匯入後，您會在 "Collections" 分頁下看到名為 "Chat API" 的 Collection。

2.  **建立 Mock Server**:
    *   在 Postman 中，找到剛匯入的 "Chat API" Collection。
    *   點擊 Collection 右側的選單按鈕 (三個點)，選擇 "Mock Collection"。
    *   為您的 Mock Server 命名 (例如 "Chat API Mock")。
    *   (可選) 選擇環境、設定延遲等。
    *   點擊 "Create Mock Server" 按鈕。
    *   Postman 會為您產生一個 Mock Server URL。請複製此 URL。

3.  **設定 Collection 變數**:
    *   在 Postman 中，選中 "Chat API" Collection。
    *   切換到 "Variables" 分頁。
    *   找到名為 `baseUrl` 的變數。
    *   將其 "CURRENT VALUE" (或 "INITIAL VALUE"，若希望同步) 設定為您在上一步複製的 Mock Server URL。
    *   如果您在 `postman_collection.json` 中的 `_postman_id` 仍為 `uuid_v4_placeholder`，請手動將其替換為一個有效的 UUID v4。您可以線上搜尋 "UUID v4 generator" 來產生一個。

4.  **發送請求**:
    *   現在您可以展開 "Chat API" Collection 中的請求 (例如 "Get Conversations")。
    *   點擊 "Send" 按鈕。
    *   Postman 會向您的 Mock Server 發送請求，並根據 Collection 中定義的範例回應來回傳模擬資料。

### API 端點說明

Collection 中包含了以下主要請求：

*   **`GET {{baseUrl}}/conversations`**: 取得對話列表。
    *   Mock 回應會直接使用 `chat_data.json` 中的 `conversations` 部分（或其子集作為範例）。
*   **`GET {{baseUrl}}/messages?conversationId={id}`**: 取得指定對話的訊息。
    *   將 `conversationId` 參數替換為您想查詢的對話 ID (例如 `1`)。
    *   Mock 回應會回傳 `chat_data.json` 中所有的 `messages`。您需要在客戶端或測試腳本中自行根據請求的 `conversationId` 過濾結果。
*   **`POST {{baseUrl}}/conversations/:id/messages/create`**: 在指定對話中新增一則訊息。
    *   將 URL 路徑中的 `:id` 替換為目標對話的 ID (例如 `1`)。
    *   請求的 Body (raw JSON) 中需要提供新訊息的詳細資訊，例如：
        ```json
        {
            "userId": 1,
            "user": "Alice",
            "avatar": "https://i.pravatar.cc/150?img=1",
            "messageType": "text",
            "message": "This is a new message from Postman!",
            "reactions": {
                "like": 0,
                "love": 0,
                "laugh": 0
            },
            "timestamp": {{timestamp}} // Postman Collection 變數，會自動產生
        }
        ```
    *   Mock 回應會模擬成功新增訊息，並回傳該訊息的結構。

**注意**: Postman Mock Server 是基於 Collection 中儲存的範例回應 (Examples) 來運作的。它不會真正執行 `chat_data.json` 中的邏輯或修改該檔案。對於 `POST` 請求，它會回傳您在範例回應中定義的成功狀態和資料，但不會實際將資料持久化到 Mock Server 或原始的 `chat_data.json`。
