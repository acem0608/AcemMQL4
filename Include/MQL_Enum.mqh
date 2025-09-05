#ifdef __INTELLISENSE__

// ---------- チャートイベント列挙 ----------
typedef enum ENUM_CHART_EVENT
{
  CHARTEVENT_KEYDOWN = 1,             // キー押下
  CHARTEVENT_MOUSE_MOVE = 2,          // マウス移動またはマウスクリック
  CHARTEVENT_OBJECT_CREATE = 3,       // グラフィカルオブジェクトを作成
  CHARTEVENT_OBJECT_CHANGE = 4,       // グラフィカルオブジェクトのプロパティ変更
  CHARTEVENT_OBJECT_DELETE = 5,       // グラフィカルオブジェクトを削除
  CHARTEVENT_CLICK = 6,               // チャートをクリック
  CHARTEVENT_OBJECT_CLICK = 7,        // グラフィカルオブジェクトをクリック
  CHARTEVENT_OBJECT_DRAG = 8,         // グラフィカルオブジェクトを移動
  CHARTEVENT_OBJECT_ENDEDIT = 9,      // LabelEditテキスト編集完了
  CHARTEVENT_CHART_CHANGE = 10,       // チャートサイズやプロパティ変更
  CHARTEVENT_CUSTOM = 11,             // カスタムイベントの最初
  CHARTEVENT_CUSTOM_LAST = 63         // カスタムイベントの最後
} ENUM_CHART_EVENT;

// ---------- 時間足列挙 ----------
typedef enum ENUM_TIMEFRAMES
{
  PERIOD_CURRENT = 0,   // 現在チャートの時間軸
  PERIOD_M1      = 1,   // 1分
  PERIOD_M5      = 5,   // 5分
  PERIOD_M15     = 15,  // 15分
  PERIOD_M30     = 30,  // 30分
  PERIOD_H1      = 60,  // 1時間
  PERIOD_H4      = 240, // 4時間
  PERIOD_D1      = 1440,// 1日
  PERIOD_W1      = 10080,// 1週間
  PERIOD_MN1     = 43200 // 1ヶ月
} ENUM_TIMEFRAMES;

// ---------- チャートプロパティ（整数型） ----------
typedef enum ENUM_CHART_PROPERTY_INTEGER
{
  CHART_IS_OBJECT = 0,                // OBJ_CHARTオブジェクトを識別する
  CHART_BRING_TO_TOP = 1,             // チャートウインドウを最前面に表示
  CHART_MOUSE_SCROLL = 2,             // マウスによる水平スクロール可否
  CHART_EVENT_MOUSE_MOVE = 3,         // マウス操作イベント通知
  CHART_EVENT_OBJECT_CREATE = 4,      // オブジェクト作成イベント通知
  CHART_EVENT_OBJECT_DELETE = 5,      // オブジェクト削除イベント通知
  CHART_MODE = 6,                     // チャートの種類
  CHART_FOREGROUND = 7,               // 価格チャートを最前面に表示
  CHART_SHIFT = 8,                     // チャートシフト
  CHART_AUTOSCROLL = 9,               // チャート自動スクロール
  CHART_SCALE = 10,                    // スケールズーム
  CHART_SCALEFIX = 11,                 // スケール固定
  CHART_SCALEFIX_11 = 12,              // スケール1対1固定
  CHART_SCALE_PT_PER_BAR = 13,         // スケール固定(pips/bar)
  CHART_SHOW_ONE_CLICK = 14,           // ワンクリックトレードパネル表示
  CHART_SHOW_OHLC = 15,                // OHLC表示
  CHART_SHOW_BID_LINE = 16,            // 売値ライン表示
  CHART_SHOW_ASK_LINE = 17,            // 買値ライン表示
  CHART_SHOW_LAST_LINE = 18,           // 最後の価格ライン表示
  CHART_SHOW_PERIOD_SEP = 19,          // 期間区切り縦線表示
  CHART_SHOW_GRID = 20,                // チャートグリッド表示
  CHART_SHOW_VOLUMES = 21,             // 出来高表示
  CHART_SHOW_OBJECT_DESCR = 22,        // オブジェクト説明表示
  CHART_VISIBLE_BARS = 23,             // 表示可能バー数
  CHART_WINDOWS_TOTAL = 24,            // ウインドウ数
  CHART_WINDOW_IS_VISIBLE = 25,        // サブウインドウ可視
  CHART_WINDOW_HANDLE = 26,            // ウインドウハンドル
  CHART_WINDOW_YDISTANCE = 27,         // サブウインドウ上部フレーム距離
  CHART_FIRST_VISIBLE_BAR = 28,        // 最初に見えるバー
  CHART_WIDTH_IN_BARS = 29,            // ウインドウ幅(バー数)
  CHART_WIDTH_IN_PIXELS = 30,          // ウインドウ幅(ピクセル)
  CHART_HEIGHT_IN_PIXELS = 31,         // ウインドウ高さ(ピクセル)
  CHART_COLOR_BACKGROUND = 32,         // 背景色
  CHART_COLOR_FOREGROUND = 33,         // 前景色(スケール・フレーム)
  CHART_COLOR_GRID = 34,               // グリッド色
  CHART_COLOR_VOLUME = 35,             // 出来高色
  CHART_COLOR_CHART_UP = 36,           // 上昇バー色
  CHART_COLOR_CHART_DOWN = 37,         // 下落バー色
  CHART_COLOR_CHART_LINE = 38,         // ラインチャート色
  CHART_COLOR_CANDLE_BULL = 39,        // ローソク足上昇色
  CHART_COLOR_CANDLE_BEAR = 40,        // ローソク足下落色
  CHART_COLOR_BID = 41,                // 売値ライン色
  CHART_COLOR_ASK = 42,                // 買値ライン色
  CHART_COLOR_LAST = 43,               // 最後の価格ライン色
  CHART_COLOR_STOP_LEVEL = 44,         // ストップレベル色
  CHART_SHOW_TRADE_LEVELS = 45,        // トレードレベル表示
  CHART_DRAG_TRADE_LEVELS = 46,        // トレードレベルドラッグモード
  CHART_SHOW_DATE_SCALE = 47,          // 日時スケール表示
  CHART_SHOW_PRICE_SCALE = 48,         // 価格スケール表示
  CHART_IS_OFFLINE = 49                // オフラインチャート
} ENUM_CHART_PROPERTY_INTEGER;

// ---------- チャートプロパティ（倍精度型） ----------
typedef enum ENUM_CHART_PROPERTY_DOUBLE
{
  CHART_SHIFT_SIZE = 0,         // チャートシフトのサイズ(右端のインデント)
  CHART_FIXED_POSITION = 1,     // チャート固定位置(パーセント単位)
  CHART_FIXED_MAX = 2,          // スケール固定の上限値
  CHART_FIXED_MIN = 3,          // スケール固定の下限値
  CHART_POINTS_PER_BAR = 4,     // スケール固定設定値(pips/bar)
  CHART_PRICE_MIN = 5,          // チャートの最小レート(表示値)
  CHART_PRICE_MAX = 6           // チャートの最大レート(表示値)
} ENUM_CHART_PROPERTY_DOUBLE;


// ---------- チャートプロパティ（文字列型） ----------
typedef enum ENUM_CHART_PROPERTY_STRING
{
  CHART_COMMENT = 0 // チャートコメント
} ENUM_CHART_PROPERTY_STRING;

// ---------- チャート位置列挙 ----------
typedef enum ENUM_CHART_POSITION
{
  CHART_BEGIN = 0,       // チャートの先頭(最も古い価格)
  CHART_CURRENT_POS = 1, // 現在の位置
  CHART_END = 2          // チャートの最後(最も新しい価格)
} ENUM_CHART_POSITION;

// ---------- オブジェクト列挙 ----------
typedef enum ENUM_OBJECT
{
  OBJ_VLINE = 0,                // 垂直線
  OBJ_HLINE = 1,                // 水平線
  OBJ_TREND = 2,                // トレンドライン
  OBJ_TRENDBYANGLE = 3,         // 角度によるトレンドライン
  OBJ_CYCLES = 4,               // サイクルライン
  OBJ_CHANNEL = 5,              // 等距離チャネル
  OBJ_STDDEVCHANNEL = 6,        // 標準偏差チャネル
  OBJ_REGRESSION = 7,           // 線形回帰
  OBJ_PITCHFORK = 8,            // アンドリューズ・ピッチフォーク
  OBJ_GANNLINE = 9,             // ギャンライン
  OBJ_GANNFAN = 10,             // ギャンファン
  OBJ_GANNGRID = 11,            // ギャングリッド
  OBJ_FIBO = 12,                // フィボナッチリトレースメント
  OBJ_FIBOTIMES = 13,           // フィボナッチタイムゾーン
  OBJ_FIBOFAN = 14,             // フィボナッチファン
  OBJ_FIBOARC = 15,             // フィボナッチアーク
  OBJ_FIBOCHANNEL = 16,         // フィボナッチチャネル
  OBJ_EXPANSION = 17,           // フィボナッチエクスパンション
  OBJ_RECTANGLE = 18,           // 長方形
  OBJ_TRIANGLE = 19,            // 三角形
  OBJ_ELLIPSE = 20,             // 楕円
  OBJ_ARROW_THUMB_UP = 21,      // サムズ・アップ
  OBJ_ARROW_THUMB_DOWN = 22,    // サムズ・ダウン
  OBJ_ARROW_UP = 23,            // 上向き矢印
  OBJ_ARROW_DOWN = 24,          // 下向き矢印
  OBJ_ARROW_STOP = 25,          // ストップサイン
  OBJ_ARROW_CHECK = 26,         // チェックサイン
  OBJ_ARROW_LEFT_PRICE = 27,    // 価格ラベル(左に表示)
  OBJ_ARROW_RIGHT_PRICE = 28,   // 価格ラベル(右に表示)
  OBJ_ARROW_BUY = 29,           // 買いサイン(MT4では未使用)
  OBJ_ARROW_SELL = 30,          // 売りサイン(MT4では未使用)
  OBJ_ARROW = 31,               // 矢印
  OBJ_TEXT = 32,                // テキスト
  OBJ_LABEL = 33,               // ラベル
  OBJ_BUTTON = 34,              // ボタン
  OBJ_BITMAP = 35,              // ビットマップ
  OBJ_BITMAP_LABEL = 36,        // ビットマップラベル
  OBJ_EDIT = 37,                // エディット
  OBJ_EVENT = 38,               // イベント(経済カレンダー対応)
  OBJ_RECTANGLE_LABEL = 39      // カスタムGUI用ラベルオブジェクト
} ENUM_OBJECT;

// ---------- オブジェクトプロパティ（整数型） ----------
typedef enum ENUM_OBJECT_PROPERTY_INTEGER
{
  OBJPROP_COLOR = 0,           // 色
  OBJPROP_STYLE = 1,           // 線スタイル
  OBJPROP_WIDTH = 2,           // 線の幅
  OBJPROP_BACK = 3,            // オブジェクトの背景表示
  OBJPROP_ZORDER = 4,          // オブジェクト優先順位
  OBJPROP_FILL = 5,            // オブジェクトの塗りつぶし
  OBJPROP_HIDDEN = 6,          // オブジェクト非表示設定
  OBJPROP_SELECTED = 7,        // オブジェクト選択
  OBJPROP_READONLY = 8,        // OBJ_EDITのテキスト編集可否
  OBJPROP_TYPE = 9,            // オブジェクトタイプ
  OBJPROP_TIME = 10,           // 時間座標
  OBJPROP_SELECTABLE = 11,     // オブジェクト可用性
  OBJPROP_CREATETIME = 12,     // オブジェクト作成時間
  OBJPROP_LEVELS = 13,         // レベル番号
  OBJPROP_LEVELCOLOR = 14,     // ラインレベルの色
  OBJPROP_LEVELSTYLE = 15,     // ラインレベルのスタイル
  OBJPROP_LEVELWIDTH = 16,     // ラインレベルの幅
  OBJPROP_ALIGN = 17,          // OBJ_EDITのテキストアライメント
  OBJPROP_FONTSIZE = 18,       // フォントサイズ
  OBJPROP_RAY_RIGHT = 19,      // 線の延長(右)
  OBJPROP_ELLIPSE = 20,        // フィボナッチアークの楕円を完全表示
  OBJPROP_ARROWCODE = 21,      // アローコード
  OBJPROP_TIMEFRAMES = 22,     // 時間軸での可視性
  OBJPROP_ANCHOR = 23,         // アンカーポイント
  OBJPROP_XDISTANCE = 24,      // X軸距離(pixel)
  OBJPROP_YDISTANCE = 25,      // Y軸距離(pixel)
  OBJPROP_DRAWLINES = 26,      // エリオット波動用線表示
  OBJPROP_STATE = 27,          // ボタン押下状態
  OBJPROP_XSIZE = 28,          // 幅(x軸方向)
  OBJPROP_YSIZE = 29,          // 高さ(y軸方向)
  OBJPROP_XOFFSET = 30,        // X座標(ビットマップ)
  OBJPROP_YOFFSET = 31,        // Y座標(ビットマップ)
  OBJPROP_BGCOLOR = 32,        // 背景色
  OBJPROP_CORNER = 33,         // チャートコーナーにリンク
  OBJPROP_BORDER_TYPE = 34,    // 枠線タイプ
  OBJPROP_BORDER_COLOR = 35    // 枠線色
} ENUM_OBJECT_PROPERTY_INTEGER;

// ---------- オブジェクトプロパティ（倍精度型） ----------
typedef enum ENUM_OBJECT_PROPERTY_DOUBLE
{
  OBJPROP_PRICE = 0,       // 価格座標
  OBJPROP_LEVELVALUE = 1,  // レベル値
  OBJPROP_SCALE = 2,       // スケール(ギャン・フィボナッチアーク用)
  OBJPROP_ANGLE = 3,       // 角度(未指定の場合はEMPTY_VALUE)
  OBJPROP_DEVIATION = 4    // 標準偏差チャネル用の偏差
} ENUM_OBJECT_PROPERTY_DOUBLE;

// ---------- オブジェクトプロパティ（文字列型） ----------
typedef enum ENUM_OBJECT_PROPERTY_STRING
{
  OBJPROP_NAME = 0,       // オブジェクト名
  OBJPROP_TEXT = 1,       // オブジェクトの説明
  OBJPROP_TOOLTIP = 2,    // ツールチップテキスト
  OBJPROP_LEVELTEXT = 3,  // レベル説明
  OBJPROP_FONT = 4,       // フォント
  OBJPROP_BMPFILE = 5     // ビットマップレベル用BMPファイル名
} ENUM_OBJECT_PROPERTY_STRING;

// ---------- テキスト整列モード ----------
typedef enum ENUM_ALIGN_MODE
{
  ALIGN_LEFT = 0,    // 左整列
  ALIGN_CENTER = 1,  // 中央整列(OBJ_EDITのみ)
  ALIGN_RIGHT = 2    // 右整列
} ENUM_ALIGN_MODE;

// ---------- アンカーポイント ----------
typedef enum ENUM_ANCHOR_POINT
{
  ANCHOR_LEFT_UPPER = 0,   // 左上のアンカーポイント
  ANCHOR_LEFT = 1,         // 中央左のアンカーポイント
  ANCHOR_LEFT_LOWER = 2,   // 左下のアンカーポイント
  ANCHOR_LOWER = 3,        // 中央下のアンカーポイント
  ANCHOR_RIGHT_LOWER = 4,  // 右下のアンカーポイント
  ANCHOR_RIGHT = 5,        // 中央右のアンカーポイント
  ANCHOR_RIGHT_UPPER = 6,  // 右上のアンカーポイント
  ANCHOR_UPPER = 7,        // 中央上のアンカーポイント
  ANCHOR_CENTER = 8        // オブジェクト中心のアンカーポイント
} ENUM_ANCHOR_POINT;

// ---------- 基準コーナー ----------
typedef enum ENUM_BASE_CORNER
{
  CORNER_LEFT_UPPER = 0,   // チャートの左上を座標の中心にする
  CORNER_LEFT_LOWER = 1,   // チャートの左下を座標の中心にする
  CORNER_RIGHT_LOWER = 2,  // チャートの右下を座標の中心にする
  CORNER_RIGHT_UPPER = 3   // チャートの右上を座標の中心にする
} ENUM_BASE_CORNER;

// ---------- 線スタイル ----------
typedef enum ENUM_LINE_STYLE
{
    STYLE_SOLID      = 0,  // 実線
    STYLE_DASH       = 1,  // 破線
    STYLE_DOT        = 2,  // 点線
    STYLE_DASHDOT    = 3,  // 破線と点線
    STYLE_DASHDOTDOT = 4   // 破線と2重点線
} ENUM_LINE_STYLE;

// ---------- クライアントターミナルプロパティ ----------
typedef enum ENUM_TERMINAL_INFO_INTEGER
{
    TERMINAL_BUILD = 0,                     // クライアントターミナルのビルドバージョン (int)
    TERMINAL_COMMUNITY_ACCOUNT = 1,         // MQL5コミュニティアカウント (bool)
    TERMINAL_COMMUNITY_CONNECTION = 2,      // MQL5コミュニティ接続 (bool)
    TERMINAL_CONNECTED = 3,                 // トレードサーバーへの接続 (bool)
    TERMINAL_DLLS_ALLOWED = 4,              // DLL使用許可 (bool)
    TERMINAL_TRADE_ALLOWED = 5,             // トレード許可 (bool)
    TERMINAL_EMAIL_ENABLED = 6,             // ターミナルで指定したe-mail送信許可 (bool)
    TERMINAL_FTP_ENABLED = 7,               // ターミナルで指定したFTPサーバー送信許可 (bool)
    TERMINAL_NOTIFICATIONS_ENABLED = 8,     // スマートフォンへの通知許可 (bool)
    TERMINAL_MAXBARS = 9,                   // チャート上でのバー数上限 (int)
    TERMINAL_MQID = 10,                     // MetaQuotesサービスからのプッシュ通知許可 (bool)
    TERMINAL_CODEPAGE = 11,                 // クライアントターミナルのコードページ数 (int)
    TERMINAL_CPU_CORES = 12,                // CPUコアの数 (int)
    TERMINAL_DISK_SPACE = 13,               // ターミナルインストールドライブの空き容量(MB) (int)
    TERMINAL_MEMORY_PHYSICAL = 14,          // 物理メモリ容量(MB) (int)
    TERMINAL_MEMORY_TOTAL = 15,             // 使用可能なメモリ(MB) (int)
    TERMINAL_MEMORY_AVAILABLE = 16,         // 空きメモリ(MB) (int)
    TERMINAL_MEMORY_USED = 17,              // 使用メモリ(MB) (int)
    TERMINAL_SCREEN_DPI = 18,               // ディスプレイ解像度(DPI) (int)
    TERMINAL_PING_LAST = 19                 // トレードサーバーへの最後のping値 (int)
} ENUM_TERMINAL_INFO_INTEGER;

// ---------- オブジェクトポインタチェック ----------
typedef enum ENUM_POINTER_TYPE
{
   POINTER_INVALID   = 0,   // 不正なポインタ
   POINTER_DYNAMIC   = 1,   // new() 演算子で作成されたオブジェクトポインタ
   POINTER_AUTOMATIC = 2    // 自動的に作成されたオブジェクトポインタ
} ENUM_POINTER_TYPE;

// ---------- ファイルプロパティ ----------
typedef enum ENUM_FILE_PROPERTY_INTEGER
{
   FILE_EXISTS       = 0,   // ファイル有無チェック
   FILE_CREATE_DATE  = 1,   // 作成日
   FILE_MODIFY_DATE  = 2,   // 最終更新日
   FILE_ACCESS_DATE  = 3,   // 最終アクセス日
   FILE_SIZE         = 4,   // ファイルサイズ (バイト単位)
   FILE_POSITION     = 5,   // ファイルのポインタ位置
   FILE_END          = 6,   // ファイルの終わり記号を取得
   FILE_LINE_END     = 7,   // 行の終わり記号を取得
   FILE_IS_COMMON    = 8,   // ファイルは共有フォルダで開かれている (FILE_COMMON参照)
   FILE_IS_TEXT      = 9,   // ファイルはテキストファイルとして開かれている (FILE_TXT参照)
   FILE_IS_BINARY    = 10,  // ファイルはバイナリファイルとして開かれている (FILE_BIN参照)
   FILE_IS_CSV       = 11,  // ファイルはCSVとして開かれている (FILE_CSV参照)
   FILE_IS_ANSI      = 12,  // ファイルはANSIとして開かれている (FILE_ANSI参照)
   FILE_IS_READABLE  = 13,  // 開かれたファイルとして読み取り可能 (FILE_READ参照)
   FILE_IS_WRITABLE  = 14   // 開かれたファイルとして書き込み可能 (FILE_WRITE参照)
} ENUM_FILE_PROPERTY_INTEGER;

// ---------- ファイルシーク位置 ----------
typedef enum ENUM_FILE_POSITION
{
   SEEK_SET = 0,   // ファイルの先頭
   SEEK_CUR = 1,   // 現在のファイルポインタ位置
   SEEK_END = 2    // ファイルの最後
} ENUM_FILE_POSITION;

#endif // __INTELLISENSE__