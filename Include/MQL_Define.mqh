#ifdef __INTELLISENSE__

// ---------- オブジェクト可視性（時間軸） ----------
#define OBJ_NO_PERIODS   -1       // 全ての時間軸チャートに表示しない
#define EMPTY            -1       // 全ての時間軸チャートに表示しない
#define OBJ_PERIOD_M1    0x0001   // 1分チャートに表示する
#define OBJ_PERIOD_M5    0x0002   // 5分チャートに表示する
#define OBJ_PERIOD_M15   0x0004   // 15分チャートに表示する
#define OBJ_PERIOD_M30   0x0008   // 30分チャートに表示する
#define OBJ_PERIOD_H1    0x0010   // 1時間チャートに表示する
#define OBJ_PERIOD_H4    0x0020   // 4時間チャートに表示する
#define OBJ_PERIOD_D1    0x0040   // 1日チャートに表示する
#define OBJ_PERIOD_W1    0x0080   // 1週間チャートに表示する
#define OBJ_PERIOD_MN1   0x0100   // 1ヶ月チャートに表示する
#define OBJ_ALL_PERIODS  0x01FF   // 全ての時間軸チャートに表示する

// ---------- カラー定義 ----------
#define clrBlack             0x000000
#define clrDarkGreen         0x006400
#define clrDarkSlateGray     0x2F4F4F
#define clrOlive             0x808000
#define clrMaroon            0x800000
#define clrIndigo            0x4B0082
#define clrMidnightBlue      0x191970
#define clrDarkBlue          0x00008B
#define clrSeaGreen          0x2E8B57
#define clrDarkGoldenrod     0xB8860B
#define clrDarkSlateBlue     0x483D8B
#define clrSienna            0xA0522D
#define clrLightSeaGreen     0x20B2AA
#define clrDarkViolet        0x9400D3
#define clrFireBrick         0xB22222
#define clrMediumVioletRed   0xC71585
#define clrGoldenrod         0xDAA520
#define clrMediumSpringGreen 0x00FA9A
#define clrLawnGreen         0x7CFC00
#define clrCadetBlue         0x5F9EA0
#define clrDarkOrange        0xFF8C00
#define clrOrange            0xFFA500
#define clrGold              0xFFD700
#define clrYellow            0xFFFF00
#define clrDeepSkyBlue       0x00BFFF
#define clrBlue              0x0000FF
#define clrMagenta           0xFF00FF
#define clrRed               0xFF0000
#define clrLightSlateGray    0x778899
#define clrDeepPink          0xFF1493
#define clrMediumTurquoise   0x48D1CC
#define clrDodgerBlue        0x1E90FF
#define clrIndianRed         0xCD5C5C
#define clrMediumOrchid      0xBA55D3
#define clrGreenYellow       0xADFF2F
#define clrMediumAquamarine  0x66CDAA
#define clrMediumPurple      0x9370DB
#define clrPaleVioletRed     0xDB7093
#define clrCoral             0xFF7F50
#define clrCornflowerBlue    0x6495ED
#define clrDarkSalmon        0xE9967A
#define clrBurlyWood         0xDEB887
#define clrHotPink           0xFF69B4
#define clrSalmon            0xFA8072
#define clrPlum              0xDDA0DD
#define clrKhaki             0xF0E68C
#define clrLightGreen        0x90EE90
#define clrAquamarine        0x7FFFD4
#define clrPaleGreen         0x98FB98
#define clrThistle           0xD8BFD8
#define clrPowderBlue        0xB0E0E6
#define clrPaleGoldenrod     0xEEE8AA
#define clrMoccasin          0xFFE4B5
#define clrLightPink         0xFFB6C1
#define clrGainsboro         0xDCDCDC
#define clrPeachPuff         0xFFDAB9
#define clrLemonChiffon      0xFFFACD
#define clrBeige             0xF5F5DC
#define clrAntiqueWhite      0xFAEBD7
#define clrPapayaWhip        0xFFEFD5
#define clrLavender          0xE6E6FA
#define clrMistyRose         0xFFE4E1
#define clrOldLace           0xFDF5E6
#define clrWhiteSmoke        0xF5F5F5
#define clrLavenderBlush     0xFFF0F5
#define clrMintCream         0xF5FFFA
#define clrSnow              0xFFFAFA
#define clrWhite             0xFFFFFF
#define clrGreen             0x008000
#define clrTeal              0x008080
#define clrNavy              0x000080
#define clrPurple            0x800080
#define clrDarkOliveGreen    0x556B2F
#define clrSaddleBrown       0x8B4513
#define clrForestGreen       0x228B22
#define clrOliveDrab         0x6B8E23
#define clrMediumBlue        0x0000CD
#define clrBrown             0xA52A2A
#define clrDarkTurquoise     0x00CED1
#define clrDimGray           0x696969
#define clrMediumSeaGreen    0x3CB371
#define clrChocolate         0xD2691E
#define clrCrimson           0xDC143C
#define clrSteelBlue         0x4682B4
#define clrDarkOrchid        0x9932CC
#define clrYellowGreen       0x9ACD32
#define clrLimeGreen         0x32CD32
#define clrOrangeRed         0xFF4500
#define clrChartreuse        0x7FFF00
#define clrLime              0x00FF00
#define clrSpringGreen       0x00FF7F
#define clrAqua              0x00FFFF
#define clrGray              0x808080
#define clrSlateGray         0x708090
#define clrPeru              0xCD853F
#define clrBlueViolet        0x8A2BE2
#define clrTurquoise         0x40E0D0
#define clrRoyalBlue         0x4169E1
#define clrSlateBlue         0x6A5ACD
#define clrDarkKhaki         0xBDB76B
#define clrDarkSeaGreen      0x8FBC8F
#define clrTomato            0xFF6347
#define clrRosyBrown         0xBC8F8F
#define clrOrchid            0xDA70D6
#define clrDarkGray          0xA9A9A9
#define clrSandyBrown        0xF4A460
#define clrMediumSlateBlue   0x7B68EE
#define clrTan               0xD2B48C
#define clrViolet            0xEE82EE
#define clrLightCoral        0xF08080
#define clrSkyBlue           0x87CEEB
#define clrLightSalmon       0xFFA07A
#define clrSilver            0xC0C0C0
#define clrLightSkyBlue      0x87CEFA
#define clrLightSteelBlue    0xB0C4DE
#define clrLightBlue         0xADD8E6
#define clrPaleTurquoise     0xAFEEEE
#define clrLightGray         0xD3D3D3
#define clrWheat             0xF5DEB3
#define clrNavajoWhite       0xFFDEAD
#define clrPink              0xFFC0CB
#define clrBisque            0xFFE4C4
#define clrLightGoldenrod    0xEEDD82
#define clrBlanchedAlmond    0xFFEBCD
#define clrCornsilk          0xFFF8DC
#define clrLightYellow       0xFFFFE0
#define clrLightCyan         0xE0FFFF
#define clrLinen             0xFAF0E6
#define clrSeashell          0xFFF5EE
#define clrIvory             0xFFFFF0
#define clrHoneydew          0xF0FFF0
#define clrAliceBlue         0xF0F8FF

// ---------- アローコード ----------
#define SYMBOL_THUMBSUP     67   // 親指アップ記号
#define SYMBOL_THUMBSDOWN   68   // 親指ダウン記号
#define SYMBOL_ARROWUP      241  // 矢印アップ
#define SYMBOL_ARROWDOWN    242  // 矢印ダウン
#define SYMBOL_STOPSIGN     251  // ストップサイン
#define SYMBOL_CHECKSIGN    252  // チェックサイン

// ---------- 描画スタイル ----------
#define DRAW_LINE        0   // 線を描画
#define DRAW_SECTION     1   // セクションを描画
#define DRAW_HISTOGRAM   2   // ヒストグラムを描画
#define DRAW_ARROW       3   // 矢印を描画
#define DRAW_ZIGZAG      4   // 奇数と偶数のインジケータバッファ間のセクションを描画
#define DRAW_NONE        12  // 描画しない

// ---------- 定義済みマクロ ----------
#define __DATE__             "2025.08.28"  // コンパイル時の日付(時間無し)
#define __DATETIME__         "2025.08.28 16:00"  // コンパイル時の日時
#define __LINE__             1             // マクロを配置したソースコードの行数
#define __FILE__             "example.mq4" // コンパイルしたファイル名
#define __PATH__             "C:\\path\\to\\example.mq4" // コンパイルしたファイルへの絶対パス
#define __FUNCTION__         "FunctionName" // マクロが配置された関数名
#define __FUNCSIG__          "void FunctionName()" // マクロが配置された関数のシグネチャ
#define __MQLBUILD__         1234          // コンパイラのビルド番号
#define __MQL4BUILD__        1234          // コンパイラのビルド番号

// ---------- 数学定数 ----------
#define M_E          2.71828182845904523536      // 指数関数ネイピア定数：e
#define M_LOG2E      1.44269504088896340736      // 対数：log2(e)
#define M_LOG10E     0.434294481903251827651     // 対数：log10(e)
#define M_LN2        0.693147180559945309417     // 自然対数：ln(2)
#define M_LN10       2.30258509299404568402      // 自然対数：ln(10)
#define M_PI         3.14159265358979323846      // 円周率：pi
#define M_PI_2       1.57079632679489661923      // 円周率：pi/2
#define M_PI_4       0.785398163397448309616     // 円周率：pi/4
#define M_1_PI       0.318309886183790671538     // 円周率：1/pi
#define M_2_PI       0.636619772367581343076     // 円周率：2/pi
#define M_2_SQRTPI   1.12837916709551257390      // 平方根：2/sqrt(pi)
#define M_SQRT2      1.41421356237309504880      // 平方根：sqrt(2)
#define M_SQRT1_2    0.707106781186547524401     // 平方根：1/sqrt(2)

// ---------- 数値型定数 ----------

// char型
#define CHAR_MIN       -128
#define CHAR_MAX       127
#define UCHAR_MAX      255

// short型
#define SHORT_MIN      -32768
#define SHORT_MAX      32767
#define USHORT_MAX     65535

// int型
#define INT_MIN        -2147483648
#define INT_MAX        2147483647
#define UINT_MAX       4294967295

// long型
#define LONG_MIN       -9.22337E+18
#define LONG_MAX       9.22337E+18
#define ULONG_MAX      1.84467E+19

// double型
#define DBL_MIN        4.9406564584124654e-324   // 最小正数 (正確な値)
#define DBL_MAX        1.7976931348623158e+308
#define DBL_EPSILON    2.2204460492503131e-16
#define DBL_DIG        15
#define DBL_MANT_DIG   53
#define DBL_MAX_10_EXP 308
#define DBL_MAX_EXP    1024
#define DBL_MIN_10_EXP -307
#define DBL_MIN_EXP    -1021

// float型
#define FLT_MIN        1.17549435e-38
#define FLT_MAX        3.40282347e+38
#define FLT_EPSILON    1.192092896e-07
#define FLT_DIG        6
#define FLT_MANT_DIG   24
#define FLT_MAX_10_EXP 38
#define FLT_MAX_EXP    128
#define FLT_MIN_10_EXP -37
#define FLT_MIN_EXP    -125

// ---------- アンロードコード定義 ----------

// EAは ExpertRemove() 関数呼び出して動作を終了する
#define REASON_PROGRAM      0

// プログラムがチャートから削除された
#define REASON_REMOVE       1

// プログラムが再コンパイルされた
#define REASON_RECOMPILE    2

// 通貨ペアまたは時間軸が変更された
#define REASON_CHARTCHANGE  3

// チャートが閉じられた
#define REASON_CHARTCLOSE   4

// ユーザーによって入力パラメータが変更された
#define REASON_PARAMETERS   5

// トレードサーバーへの再接続が発生した、または別アカウントに変更された
#define REASON_ACCOUNT      6

// 新しいテンプレートが適用された
#define REASON_TEMPLATE     7

// OnInit() ハンドラが 0 以外の値を返した
#define REASON_INITFAILED   8

// ターミナルが閉じられた
#define REASON_CLOSE        9

// ---------- ファイルオープンフラグ ----------
#define FILE_READ        1      // ファイルは読み込みの為に開かれます (FileOpenで使用)
#define FILE_WRITE       2      // ファイルは書き込みの為に開かれます (FileOpenで使用)
#define FILE_BIN         4      // バイナリ読み込み/書き込みモード (文字列変換なし)
#define FILE_CSV         8      // CSVファイル (文字列変換＋セパレータ区切り対応)
#define FILE_TXT         16     // シンプルなテキストファイル (UnicodeまたはANSI文字列に変換)
#define FILE_ANSI        32     // ANSI型文字列 (1バイトシンボル)
#define FILE_UNICODE     64     // UNICODE型文字列 (2バイトシンボル)
#define FILE_SHARE_READ  128    // 複数プログラムからの読み取り共有アクセス
#define FILE_SHARE_WRITE 256    // 複数プログラムからの書き込み共有アクセス
#define FILE_REWRITE     512    // FileCopy(), FileMove() による書き換え可能
#define FILE_COMMON      4096   // common フォルダ (\Terminal\Common\Files) を使用


// ---------- コードページ ----------
#define CP_ACP        0      // Windows ANSIコードページ
#define CP_OEMCP      1      // 現在のシステムのOEMコードページ
#define CP_MACCP      2      // Macintoshコードページ（旧式、現在はUnicode利用）
#define CP_THREAD_ACP 3      // 現在のスレッド用のWindows ANSIコードページ
#define CP_SYMBOL     42     // シンボルコードページ
#define CP_UTF7       65000  // UTF-7コードページ
#define CP_UTF8       65001  // UTF-8コードページ

// ---------- メッセージボックス戻り値 ----------
#define IDOK         1   // OKボタンが押された
#define IDCANCEL     2   // キャンセルボタンが押された
#define IDABORT      3   // 中止ボタンが押された
#define IDRETRY      4   // 再試行ボタンが押された
#define IDIGNORE     5   // 無視ボタンが押された
#define IDYES        6   // はいボタンが押された
#define IDNO         7   // いいえボタンが押された
#define IDTRYAGAIN   10  // 再実行ボタンが押された
#define IDCONTINUE   11  // 続行ボタンが押された


#endif // __INTELLISENSE__
