# MeepShop Test - Flutter 聊天應用程式

這是一個 Flutter 即時聊天應用程式，旨在演示 Clean Architecture、Feature-First 的專案結構以及現代 Flutter 開發實踐。應用程式模擬了對話列表和聊天室的基本功能，並包含自動訊息回覆、訊息反應、圖片傳輸及全螢幕查看等進階功能。

## 目前已實現功能

*   **對話列表頁面 (`ConversationListPage`)**:
    *   啟動應用程式後，首先會顯示此頁面。
    *   從模擬數據加載並列出所有對話。
    *   每個對話會顯示參與者頭像（單人或多人堆疊）、名稱/群組名、格式化後的最後一條訊息（圖片訊息會顯示 `[Image]`）以及相對時間。
    *   點擊任一對話，即可導航至該對話的聊天室頁面。
    *   當聊天室中有新訊息（包括使用者自己發送的或websocket接收的），對話列表會自動更新對應對話的最後訊息和時間戳，並將該對話置頂。
    *   右上角提供主題切換按鈕（亮色/暗色模式）。

*   **聊天訊息頁面 (`ChatMessagePage`)**:
    *   顯示特定對話中的所有訊息，頁面頂部顯示對話標題。
    *   訊息按時間順序排列。
    *   **訊息滾動與可見性**:
        *   進入聊天室後，訊息列表會自動滾動到最新的訊息。
        *   當發送或接收新訊息時，列表會自動滾動到底部。
        *   點擊文字輸入框使鍵盤彈出時，訊息列表也會向上調整並滾動到底部，以確保最新訊息始終可見，不被鍵盤或輸入框遮擋。
    *   **訊息泡泡 (`_buildMessageBubble`)**:
        *   區分使用者本人（訊息靠右）和其他參與者（訊息靠左，並顯示頭像和用戶名）。
        *   顯示用戶名稱和完整時間戳 (`YYYY-MM-DD HH:MM:SS`)。
        *   支援文字訊息和圖片訊息的顯示 (本地圖片和網路圖片)。
        *   系統訊息（例如提示）會居中顯示。
    *   使用者可以在底部的輸入框輸入文字訊息，並點擊發送按鈕。
    *   **輸入框與發送按鈕狀態**:
        *   當輸入框中有文字時，發送按鈕會立即變為可點擊狀態，且圖示顏色會改變以提示可操作性；輸入框為空時，按鈕不可點擊。
        *   輸入框在鍵盤彈出時會被平滑推至鍵盤上方。
    *   提供附加檔案按鈕，點擊後可從裝置相簿選擇圖片並發送。
    *   發送的文字或圖片訊息會立即顯示在聊天記錄中，並更新對話列表。
    *   **圖片傳送狀態**:
        *   選擇圖片後，該圖片訊息會立即出現在列表中，並在其上方顯示半透明的載入動畫，表示正在上傳。
        *   若圖片上傳失敗，載入動畫會替換為錯誤圖示及提示文字。
        *   圖片成功上傳後，載入動畫消失，顯示正常的網路圖片。
    *   **即時訊息接收 (WebSocket)**:
        *   應用程式整合 WebSocket，當其他參與者發送訊息時，聊天室能夠即時接收並顯示新訊息，無需手動刷新。
        *   新接收的訊息同樣會觸發列表自動滾動到底部的行為。
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
*   **即時通訊**: `WebSocket` (用於聊天室內的即時訊息傳遞，此專案中透過 `ChatWebSocketService` 進行封裝與管理)
*   **路由管理**: `auto_route` (用於聲明式頁面導航和參數傳遞)
*   **依賴注入**: `injectable` 搭配 `get_it` (實現服務定位和依賴管理)
*   **非同步與錯誤處理**: `fpdart` (使用 `Either` 進行函數式錯誤處理)
*   **資料模型與序列化**: `freezed` (用於生成資料類別), `json_serializable` (用於 JSON 序列化/反序列化 - 此專案中主要由 `freezed` 的 `fromJson/toJson` 配合)
*   **圖片處理**: `image_picker` (從相簿選擇圖片), `cached_network_image` (高效加載和緩存網路圖片)
*   **UI 元件**: `gap` (替代 `SizedBox` 控制間距)
*   **程式碼風格**: `flutter_lints` (遵循 Dart 官方推薦風格)

## 操作方式

1.  **啟動應用**: 應用啟動後，您將看到對話列表。
2.  **瀏覽對話**: 上下滑動列表查看所有對話。
3.  **進入聊天室**: 點擊任一對話項，進入該對話的聊天訊息頁面。
4.  **查看訊息**: 在聊天室中，訊息會從上到下按時間排列。您可以分辨哪些是您自己發送的，哪些是其他用戶發送的。
5.  **發送文字訊息**: 在底部輸入框中輸入文字，點擊右側的發送圖示按鈕。
6.  **發送圖片訊息**: 點擊輸入框左側的圖片庫圖示按鈕（通常是相簿圖示），從相簿中選擇一張圖片。選中後，該圖片會出現在您的訊息列表中，並帶有上傳中的載入動畫。成功發送後，載入動畫消失。
7.  **查看全螢幕圖片**: 如果聊天中有圖片訊息（且非上傳失敗狀態），點擊圖片預覽即可進入全螢幕查看模式。在此模式下，您可以縮放和平移圖片，點擊右上角關閉按鈕返回。
8.  **訊息反應**:
    *   長按您或其他用戶發送的訊息泡泡，訊息上方會出現一排表情符號。
    *   點擊其中一個表情符號，即可為該訊息添加此反應。如果已反應過，則會移除您的反應。
    *   訊息下方會顯示各種表情符號以及有多少用戶做出了該反應。您也可以點擊這些已顯示的表情符號來快速添加/移除您的反應。
9.  **切換主題**: 在對話列表頁面，點擊右上角的太陽/月亮圖示按鈕，可以在亮色和暗色主題之間切換。

## 專案結構 (`lib/` 目錄)

本專案遵循以功能為優先 (Feature-First) 並結合 Clean Architecture 的分層方式來組織程式碼。

```
lib/
├── core/                           # 核心通用功能與模組
│   ├── config/                     # 全局配置 (例如環境變數、API Base URL 等)
│   ├── errors/                     # 統一的錯誤/失敗處理機制 (例如 Failure sealed class)
│   ├── network/                    # 網路請求相關 (例如 Dio client 封裝, WebSocket 服務)
│   ├── router/                     # 路由管理 (使用 auto_route, 包含 AppRouter 的定義與生成檔案)
│   ├── shared/                     # 跨功能共用的元件、擴展、工具函式等
│   │   ├── extensions/             # Dart 核心類型或常用類的擴展方法
│   │   ├── notifiers/              # 全局事件通知器 (例如 ConversationUpdateNotifier)
│   │   ├── utils/                  # 通用工具函式
│   │   └── widgets/                # 可在多個功能間共用的 Widgets (例如 FullScreenImageViewerPage)
│   ├── theme/                      # 主題管理 (AppTheme, ThemeCubit/Bloc)
│   └── usecase/                    # UseCase 的基礎抽象定義 (例如 `UseCase<Type, Params>`)
│
├── features/                       # 各獨立功能模組
│   ├── auth/                       # 用戶認證功能模K塊 (登入、註冊等)
│   │   ├── data/                   # 資料層 (Models, Repositories Impl, Services/DataSources)
│   │   ├── domain/                 # 領域層 (Entities, Repositories Interfaces, UseCases)
│   │   └── presentation/           # 表現層 (Blocs, Pages, Widgets)
│   ├── chat/                       # 聊天核心功能模塊
│   │   ├── data/                   # 資料層
│   │   ├── domain/                 # 領域層
│   │   └── presentation/           # 表現層
│   ├── conversation/               # 會話列表功能模塊
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── upload/                     # 文件上傳功能模塊 (若有獨立處理)
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── user_selection/             # 用戶選擇相關功能模塊 (可能用於選擇聊天對象等)
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── [other_features]/           # 其他功能模組...
│
├── injectable.dart                 # GetIt 依賴注入的組態入口 (手動與 @InjectableInit 配置)
├── injectable.config.dart          # 由 injectable_generator 自動產生的依賴注入配置檔案
└── main.dart                       # 應用程式主入口 (初始化、運行 App)
```

**主要目錄說明：**

*   **`core/`**: 包含應用程式範圍內共享的程式碼，這些程式碼不屬於任何特定的功能，而是為所有功能提供基礎支持。例如網路層、路由、主題、通用錯誤處理、共享 Widgets 和工具函式等。
*   **`features/`**: 包含應用程式的各個獨立功能模組。每個功能模組都遵循 Clean Architecture 的分層結構（`data`, `domain`, `presentation`），使其高內聚、低耦合，易於維護和擴展。
    *   **`data/`**: 負責資料的獲取和儲存。包含資料模型 (DTOs)、儲存庫的具體實作、以及與外部 API 或本地資料庫互動的服務 (Data Sources)。
    *   **`domain/`**: 包含業務邏輯核心。定義業務實體 (Entities)、儲存庫的抽象介面、以及封裝單一業務操作的用例 (UseCases)。此層不依賴任何外部框架或具體實現。
    *   **`presentation/`**: 負責 UI 的展示和使用者互動。包含狀態管理邏輯 (Blocs/Cubits)、頁面 (Pages)、以及特定於該功能的 Widgets。
*   **`injectable.dart` / `injectable.config.dart`**: 使用 `get_it` 和 `injectable` 套件進行依賴注入的設定檔。
*   **`main.dart`**: 應用程式的啟動點，進行必要的初始化工作並運行主 Widget。

## 如何執行

1.  **環境準備**: 確保您的 Flutter 開發環境已正確設定 (建議 Flutter 3.19.x 或更高版本)。
2.  **克隆專案**: `git clone <repository_url>`
3.  **進入專案目錄**: `cd meepshoptest`
4.  **安裝依賴**: `flutter pub get`
5.  **產生程式碼**: `flutter pub run build_runner build --delete-conflicting-outputs` (此步驟對於 `freezed`, `injectable`, `auto_route` 至關重要)
6.  **運行應用**: `flutter run` (可選擇模擬器、實體裝置)

## 補充

後端Server已部署上AWS EC2，可直接連線使用。
*  API Host: [https://meeptestapi.zhixu-li.com/api/v1](https://meeptestapi.zhixu-li.com/api/v1)
*  Websocket: [wss://meeptestapi.zhixu-li.com/](wss://meeptestapi.zhixu-li.com/)
