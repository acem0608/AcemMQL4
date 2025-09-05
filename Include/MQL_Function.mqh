#ifdef __INTELLISENSE__

//=== イベント処理関数 ===
void OnBookEvent(const MqlBookInfo &book_info);
int  OnCalculate(const int rates_total,
                 const int prev_calculated,
                 const datetime &time[],
                 const double &open[],
                 const double &high[],
                 const double &low[],
                 const double &close[],
                 const long &tick_volume[],
                 const long &volume[],
                 const int &spread[]);
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam);
void OnDeinit(const int reason);
int  OnInit();
void OnStart();
double OnTester();
void OnTesterDeinit();
void OnTesterInit();
void OnTesterPass();
void OnTick();
void OnTimer();
void OnTrade();
void OnTradeTransaction(const MqlTradeTransaction &trans,
                        const MqlTradeRequest &request,
                        const MqlTradeResult &result);

//=== イベント操作関数 ===
bool EventChartCustom(long chart_id,
                      long id,
                      long lparam=0,
                      double dparam=0.0,
                      string sparam="");
bool EventKillTimer();
bool EventSetMillisecondTimer(uint milliseconds);
bool EventSetTimer(uint seconds);

//=== オブジェクト関数 ===
bool   ObjectCreate(long chart_id, string name, ENUM_OBJECT type, int sub_window=0, datetime time1=0, double price1=0);
bool   ObjectDelete(long chart_id, string name, int sub_window=0);
int    ObjectFind(long chart_id, string name);
double ObjectGetDouble(long chart_id, string name, int prop_id, int index=0);
long   ObjectGetInteger(long chart_id, string name, int prop_id, int index=0);
string ObjectGetString(long chart_id, string name, int prop_id, int index=0);
datetime ObjectGetTimeByValue(long chart_id, string name, double value);
double ObjectGetValueByTime(long chart_id, string name, datetime time);
bool   ObjectMove(long chart_id, string name, int point_index, datetime time, double price);
string ObjectName(long chart_id, int sub_window, int index);
int    ObjectsDeleteAll(long chart_id, ENUM_OBJECT type, int sub_window=0);
bool   ObjectSetDouble(long chart_id, string name, int prop_id, double value, int index=0);
bool   ObjectSetInteger(long chart_id, string name, int prop_id, long value, int index=0);
bool   ObjectSetString(long chart_id, string name, int prop_id, string value, int index=0);
int    ObjectsTotal(long chart_id, int sub_window=-1);

//=== テキスト描画関数 ===
void   TextGetSize(string text, int &width, int &height);
void   TextOut(string text, int x, int y);
bool   TextSetFont(string font_name, int size, ENUM_FONT_STYLE style=FONT_STYLE_NORMAL);

//=== カスタム指標関数 ===
bool   IndicatorSetDouble(int prop_id, double value);
bool   IndicatorSetInteger(int prop_id, long value);
bool   IndicatorSetString(int prop_id, string value);
long   PlotIndexGetInteger(int plot_index, int prop_id);
bool   PlotIndexSetDouble(int plot_index, int prop_id, double value);
bool   PlotIndexSetInteger(int plot_index, int prop_id, long value);
bool   PlotIndexSetString(int plot_index, int prop_id, string value);
bool   SetIndexBuffer(int index, double &buffer[]);

//=== カスタム銘柄関数 ===
bool   CustomBookAdd(string symbol, const MqlBookInfo &book_info);
bool   CustomRatesDelete(string symbol, ENUM_TIMEFRAMES timeframe, datetime from, datetime to);
bool   CustomRatesReplace(string symbol, ENUM_TIMEFRAMES timeframe, const MqlRates rates[], int count, datetime start=0);
bool   CustomRatesUpdate(string symbol, ENUM_TIMEFRAMES timeframe, const MqlRates rates[], int count);
bool   CustomSymbolCreate(string name, string group, ENUM_SYMBOL_TYPE type);
bool   CustomSymbolDelete(string name);
bool   CustomSymbolSetDouble(string name, int prop_id, double value);
bool   CustomSymbolSetInteger(string name, int prop_id, long value);
bool   CustomSymbolSetMarginRate(string name, ENUM_ORDER_TYPE order_type, ENUM_POSITION_TYPE pos_type, double rate);
bool   CustomSymbolSetSessionQuote(string name, ENUM_DAY_OF_WEEK day, datetime session_from, datetime session_to);
bool   CustomSymbolSetSessionTrade(string name, ENUM_DAY_OF_WEEK day, datetime session_from, datetime session_to);
bool   CustomSymbolSetString(string name, int prop_id, string value);
bool   CustomTicksAdd(string symbol, const MqlTick ticks[], int count);
bool   CustomTicksDelete(string symbol, datetime from, datetime to);
bool   CustomTicksReplace(string symbol, const MqlTick ticks[], int count, datetime start=0);

//=== チェックアップ関数 ===
int      Digits();
int      GetLastError();
bool     IsStopped();
long     MQLInfoInteger(int property_id);
string   MQLInfoString(int property_id);
ENUM_TIMEFRAMES Period();
double   Point();
string   Symbol();
double   TerminalInfoDouble(int property_id);
long     TerminalInfoInteger(int property_id);
string   TerminalInfoString(int property_id);
int      UninitializeReason();

//=== チャート操作関数 ===
bool     ChartApplyTemplate(long chart_id, string filename);
bool     ChartClose(long chart_id);
long     ChartFirst();
double   ChartGetDouble(long chart_id, int prop_id);
long     ChartGetInteger(long chart_id, int prop_id);
string   ChartGetString(long chart_id, int prop_id);
long     ChartID();
bool     ChartIndicatorAdd(long chart_id, int sub_window, int indicator_handle);
bool     ChartIndicatorDelete(long chart_id, int sub_window, string short_name);
int      ChartIndicatorGet(long chart_id, int sub_window, string short_name);
string   ChartIndicatorName(long chart_id, int sub_window, int index);
int      ChartIndicatorsTotal(long chart_id, int sub_window);
bool     ChartNavigate(long chart_id, datetime time, int shift);
long     ChartNext(long chart_id);
long     ChartOpen(string symbol, ENUM_TIMEFRAMES period);
ENUM_TIMEFRAMES ChartPeriod(long chart_id);
double   ChartPriceOnDropped(long chart_id);
bool     ChartRedraw(long chart_id);
bool     ChartSaveTemplate(long chart_id, string filename);
bool     ChartScreenShot(long chart_id, string filename, int width, int height, int quality);
bool     ChartSetDouble(long chart_id, int prop_id, double value);
bool     ChartSetInteger(long chart_id, int prop_id, long value);
bool     ChartSetString(long chart_id, int prop_id, string value);
bool     ChartSetSymbolPeriod(long chart_id, string symbol, ENUM_TIMEFRAMES period);
string   ChartSymbol(long chart_id);
datetime ChartTimeOnDropped(long chart_id);
bool     ChartTimePriceToXY(long chart_id, datetime time, double price, int &x, int &y);
int      ChartWindowFind(long chart_id, int sub_window);
int      ChartWindowOnDropped(long chart_id);
int      ChartXOnDropped(long chart_id);
bool     ChartXYToTimePrice(long chart_id, int x, int y, datetime &time, double &price);
int      ChartYOnDropped(long chart_id);
//=== データベース操作関数 ===
bool     DatabaseBind(int request_id, string param_name, double value);
bool     DatabaseBindArray(int request_id, string param_name, const double &array[]);
bool     DatabaseClose(int db_id);
uchar    DatabaseColumnBlob(int request_id, int column_index, uchar &buffer[]);
double   DatabaseColumnDouble(int request_id, int column_index);
int      DatabaseColumnInteger(int request_id, int column_index);
long     DatabaseColumnLong(int request_id, int column_index);
string   DatabaseColumnName(int request_id, int column_index);
int      DatabaseColumnsCount(int request_id);
int      DatabaseColumnSize(int request_id, int column_index);
string   DatabaseColumnText(int request_id, int column_index);
int      DatabaseColumnType(int request_id, int column_index);
bool     DatabaseExecute(int db_id, string query);
bool     DatabaseExport(int db_id, string table_or_query, string filename);
bool     DatabaseFinalize(int request_id);
bool     DatabaseImport(int db_id, string filename, string table_name);
int      DatabaseOpen(string filename);
int      DatabasePrepare(int db_id, string query);
void     DatabasePrint(int request_id);
bool     DatabaseRead(int request_id);
bool     DatabaseReset(int request_id);
bool     DatabaseTableExists(int db_id, string table_name);
bool     DatabaseTransactionBegin(int db_id);
bool     DatabaseTransactionCommit(int db_id);
bool     DatabaseTransactionRollback(int db_id);

//=== テクニカル指標関数 ===
int      iAD(string symbol, ENUM_TIMEFRAMES period, int applied_price, int shift);
int      iADX(string symbol, ENUM_TIMEFRAMES period, int applied_price, int shift);
int      iADXWilder(string symbol, ENUM_TIMEFRAMES period, int applied_price, int shift);
int      iAlligator(string symbol, ENUM_TIMEFRAMES period, int jaw_period, int jaw_shift,
                    int teeth_period, int teeth_shift, int lips_period, int lips_shift,
                    int applied_price, int mode, int shift);
int      iAMA(string symbol, ENUM_TIMEFRAMES period, int period_ama, double fast_ema, double slow_ema,
               int applied_price, int shift);
int      iAO(string symbol, ENUM_TIMEFRAMES period, int shift);
int      iATR(string symbol, ENUM_TIMEFRAMES period, int period_atr, int shift);
int      iBands(string symbol, ENUM_TIMEFRAMES period, int period_bands, double deviation,
                int bands_shift, int applied_price, int mode, int shift);
int      iBearsPower(string symbol, ENUM_TIMEFRAMES period, int period_ma, int applied_price, int shift);
int      iBullsPower(string symbol, ENUM_TIMEFRAMES period, int period_ma, int applied_price, int shift);
int      iBWMFI(string symbol, ENUM_TIMEFRAMES period, int shift);
int      iCCI(string symbol, ENUM_TIMEFRAMES period, int period_cci, int applied_price, int shift);
int      iChaikin(string symbol, ENUM_TIMEFRAMES period, int fast_ema, int slow_ema, int shift);
int      iCustom(string symbol, ENUM_TIMEFRAMES period, string name, ...);
int      iDEMA(string symbol, ENUM_TIMEFRAMES period, int period_dema, int applied_price, int shift);
int      iDeMarker(string symbol, ENUM_TIMEFRAMES period, int period_demarker, int shift);
int      iEnvelopes(string symbol, ENUM_TIMEFRAMES period, int ma_period, int ma_method, int applied_price,
                    double deviation, int mode, int shift);
int      iForce(string symbol, ENUM_TIMEFRAMES period, int period_force, int applied_price, int shift);
int      iFractals(string symbol, ENUM_TIMEFRAMES period, int shift);
int      iFrAMA(string symbol, ENUM_TIMEFRAMES period, int period_frama, int applied_price, int shift);
int      iGator(string symbol, ENUM_TIMEFRAMES period, int jaw_period, int jaw_shift,
                int teeth_period, int teeth_shift, int lips_period, int lips_shift, int shift);
int      iIchimoku(string symbol, ENUM_TIMEFRAMES period, int tenkan, int kijun, int senkou,
                   int applied_price, int mode, int shift);
int      iMA(string symbol, ENUM_TIMEFRAMES period, int ma_period, int ma_shift, int ma_method,
             int applied_price, int mode, int shift);
int      iMACD(string symbol, ENUM_TIMEFRAMES period, int fast_ema, int slow_ema, int signal_sma,
               int applied_price, int mode, int shift);
int      iMFI(string symbol, ENUM_TIMEFRAMES period, int period_mfi, int shift);
int      iMomentum(string symbol, ENUM_TIMEFRAMES period, int period_momentum, int applied_price, int shift);
int      iOBV(string symbol, ENUM_TIMEFRAMES period, int applied_price, int shift);
int      iOsMA(string symbol, ENUM_TIMEFRAMES period, int fast_ema, int slow_ema, int signal_sma,
               int mode, int shift);
int      iRSI(string symbol, ENUM_TIMEFRAMES period, int period_rsi, int applied_price, int shift);
int      iRVI(string symbol, ENUM_TIMEFRAMES period, int period_rvi, int applied_price, int mode, int shift);
int      iSAR(string symbol, ENUM_TIMEFRAMES period, double step, double maximum, int shift);
int      iStdDev(string symbol, ENUM_TIMEFRAMES period, int period_stddev, int ma_method, int applied_price, int shift);
int      iStochastic(string symbol, ENUM_TIMEFRAMES period, int k_period, int d_period, int slowing,
                     int ma_method, int price_field, int mode, int shift);
int      iTEMA(string symbol, ENUM_TIMEFRAMES period, int period_tema, int applied_price, int shift);
int      iTriX(string symbol, ENUM_TIMEFRAMES period, int period_trix, int signal_period, int applied_price, int shift);
int      iVIDyA(string symbol, ENUM_TIMEFRAMES period, int period_vidya, double k, int applied_price, int shift);
int      iVolumes(string symbol, ENUM_TIMEFRAMES period, int shift);
int      iWPR(string symbol, ENUM_TIMEFRAMES period, int period_wpr, int shift);

//=== ネットワーク関数 ===
bool     SocketClose(int socket);
bool     SocketConnect(int socket, string host, int port, int timeout);
int      SocketCreate(int flags);
bool     SocketIsConnected(int socket);
int      SocketIsReadable(int socket);
bool     SocketIsWritable(int socket);
int      SocketRead(int socket, uchar &buffer[], int size);
int      SocketSend(int socket, const uchar &buffer[], int size);
bool     SocketTimeouts(int socket, int send_timeout, int recv_timeout);
string   SocketTlsCertificate(int socket, int type);
bool     SocketTlsHandshake(int socket, string host);
int      SocketTlsRead(int socket, uchar &buffer[], int size);
int      SocketTlsReadAvailable(int socket);
int      SocketTlsSend(int socket, const uchar &buffer[], int size);

//=== ファイル関数 ===
bool     FileClose(int handle);
bool     FileCopy(string source, string destination, bool overwrite=false);
bool     FileDelete(string filename);
bool     FileFindClose(int handle);
int      FileFindFirst(string filename, string &name, uint &size, datetime &time);
bool     FileFindNext(int handle, string &name, uint &size, datetime &time);
bool     FileFlush(int handle);
int      FileGetInteger(int handle, int prop_id);
bool     FileIsEnding(int handle);
bool     FileIsExist(string filename);
bool     FileIsLineEnding(int handle);
bool     FileMove(string source, string destination);
int      FileOpen(string filename, int mode, int type=FILE_BIN|FILE_READ);
bool     FileReadArray(int handle, double &array[], int start=0, int count=-1);
bool     FileReadBool(int handle);
datetime FileReadDatetime(int handle);
double   FileReadDouble(int handle);
float    FileReadFloat(int handle);
int      FileReadInteger(int handle);
long     FileReadLong(int handle);
double   FileReadNumber(int handle);
string   FileReadString(int handle);
bool     FileReadStruct(int handle, void &structure);
bool     FileSeek(int handle, int offset, int origin=SEEK_SET);
long     FileSize(int handle);
int      FileTell(int handle);
bool     FileWrite(int handle, ...);
bool     FileWriteArray(int handle, const double &array[], int start=0, int count=-1);
bool     FileWriteDouble(int handle, double value);
bool     FileWriteFloat(int handle, float value);
bool     FileWriteInteger(int handle, int value);
bool     FileWriteLong(int handle, long value);
bool     FileWriteString(int handle, string value);
bool     FileWriteStruct(int handle, const void &structure);
bool     FolderClean(string folder);
bool     FolderCreate(string folder);
bool     FolderDelete(string folder);

//=== 共通関数 ===
void     Alert(string message);
int      CheckPointer(void &obj);
void     Comment(string message);
bool     CryptDecode(uchar &data[], int method);
bool     CryptEncode(uchar &data[], int method);
void     DebugBreak();
void     ExpertRemove();
void*    GetPointer(void &obj);
uint     GetTickCount();
int      MessageBox(string text, string caption="", int type=MB_OK);
int      PeriodSeconds();
bool     PlaySound(string filename);
void     Print(...);
void     PrintFormat(string format,...);
void     ResetLastError();
int      ResourceCreate(string name, int width, int height, const uchar &data[]);
bool     ResourceFree(int id);
bool     ResourceReadImage(int id, uchar &data[]);
bool     ResourceSave(int id, string filename);
bool     SendFTP(string filename);
bool     SendMail(string to, string subject, string message);
bool     SendNotification(string message);
void     Sleep(int milliseconds);
void     TerminalClose();
double   TesterStatistics(int type);
char     WebRequest(string method, string url, string headers, string &result, int timeout=5000);
void     ZeroMemory(void &var);

//=== 経済指標カレンダー ===
string[] CalendarCountries();
string   CalendarCountryById(int id);
string[] CalendarEventByCountry(string country_code);
string[] CalendarEventByCurrency(string currency);
string   CalendarEventById(int id);
double   CalendarValueById(int id);
double[] CalendarValueHistory(datetime from, datetime to, string filter="");
double[] CalendarValueHistoryByEvent(int event_id, datetime from, datetime to);
double[] CalendarValueLast(int change_id);
double[] CalendarValueLastByEvent(int change_id);

//=== 口座情報 ===
double   AccountInfoDouble(int property_id);
long     AccountInfoInteger(int property_id);
string   AccountInfoString(int property_id);

//=== 最適化の結果の操作 ===
bool     FrameAdd(const double &data[]);
bool     FrameFilter(int filter_id);
bool     FrameFirst();
double[] FrameInputs();
bool     FrameNext();
bool     ParameterGetRange(int param_id, double &from, double &to, double &step);
bool     ParameterSetRange(int param_id, double from, double to, double step);

//=== 市場情報 ===
bool     MarketBookAdd(string symbol);
MqlBookInfo[] MarketBookGet(string symbol);
bool     MarketBookRelease(string symbol);
double   SymbolInfoDouble(string symbol, int property_id);
long     SymbolInfoInteger(string symbol, int property_id);
double   SymbolInfoMarginRate(string symbol, int type, int direction);
bool     SymbolInfoSessionQuote(string symbol, int day_of_week, datetime &from, datetime &to);
bool     SymbolInfoSessionTrade(string symbol, int day_of_week, datetime &from, datetime &to);
string   SymbolInfoString(string symbol, int property_id);
bool     SymbolInfoTick(string symbol, MqlTick &tick);
bool     SymbolIsSynchronized(string symbol);
string   SymbolName(int index, bool selected_only=false);
bool     SymbolSelect(string symbol, bool select);
int      SymbolsTotal(bool selected_only=false);

//=== 時系列と指標へのアクセス ===
int      Bars(string symbol, ENUM_TIMEFRAMES timeframe);
int      BarsCalculated(int handle);
bool     CopyBuffer(int handle, int buffer_num, int start, int count, double &array[]);
bool     CopyClose(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, double &array[]);
bool     CopyHigh(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, double &array[]);
bool     CopyLow(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, double &array[]);
bool     CopyOpen(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, double &array[]);
bool     CopyRates(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, MqlRates &rates[]);
bool     CopyRealVolume(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, long &volume[]);
bool     CopySpread(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, double &spread[]);
bool     CopyTicks(MqlTick &ticks[], int start=0, int count=-1);
bool     CopyTickVolume(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, long &volume[]);
bool     CopyTime(string symbol, ENUM_TIMEFRAMES timeframe, int start, int count, datetime &times[]);
int      iBars(string symbol, ENUM_TIMEFRAMES timeframe);
int      iBarShift(string symbol, ENUM_TIMEFRAMES timeframe, datetime time);
double   iClose(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
double   iHigh(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
int      iHighest(string symbol, ENUM_TIMEFRAMES timeframe, int count, int start=0);
double   iLow(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
int      iLowest(string symbol, ENUM_TIMEFRAMES timeframe, int count, int start=0);
int      IndicatorCreate(MqlParam &params[]);
int      IndicatorParameters(int handle, MqlParam &params[]);
bool     IndicatorRelease(int handle);
double   iOpen(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
long     iRealVolume(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
double   iSpread(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
long     iTickVolume(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
datetime iTime(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
long     iVolume(string symbol, ENUM_TIMEFRAMES timeframe, int shift);
long     SeriesInfoInteger(int handle, int property_id);

//=== 取引関数 ===
double   HistoryDealGetDouble(int deal_ticket, int property_id);
long     HistoryDealGetInteger(int deal_ticket, int property_id);
string   HistoryDealGetString(int deal_ticket, int property_id);
int      HistoryDealGetTicket(int index);
bool     HistoryDealSelect(int index);
int      HistoryDealsTotal();

double   HistoryOrderGetDouble(int order_ticket, int property_id);
long     HistoryOrderGetInteger(int order_ticket, int property_id);
string   HistoryOrderGetString(int order_ticket, int property_id);
int      HistoryOrderGetTicket(int index);
bool     HistoryOrderSelect(int index);
int      HistoryOrdersTotal();

bool     HistorySelect(datetime from, datetime to);
bool     HistorySelectByPosition(ulong position_id);

double   OrderCalcMargin(int type, string symbol, double volume, double price=0.0);
double   OrderCalcProfit(int type, string symbol, double volume, double price_open, double price_close);

int      OrderCheck(string symbol, int cmd, double volume, double price, int slippage, double stoploss=0.0, double takeprofit=0.0);

double   OrderGetDouble(int property_id);
long     OrderGetInteger(int property_id);
string   OrderGetString(int property_id);
int      OrderGetTicket();
bool     OrderSelect(int index, int select=SELECT_BY_POS, int pool=MODE_TRADES);
int      OrderSend(MqlTradeRequest &request, MqlTradeResult &result);
int      OrderSendAsync(MqlTradeRequest &request, MqlTradeResult &result);
int      OrdersTotal();

double   PositionGetDouble(int property_id);
long     PositionGetInteger(int property_id);
string   PositionGetString(int property_id);
string   PositionGetSymbol();
bool     PositionSelect(string symbol);
int      PositionsTotal();

//=== 数学関数 ===
double   acos(double x);
double   asin(double x);
double   atan(double x);
double   ceil(double x);
double   cos(double x);
double   exp(double x);
double   fabs(double x);
double   floor(double x);
double   fmax(double x, double y);
double   fmin(double x, double y);
double   fmod(double x, double y);
double   log(double x);
double   log10(double x);
double   MathAbs(double x);
double   MathArccos(double x);
double   MathArcsin(double x);
double   MathArctan(double x);
double   MathCeil(double x);
double   MathCos(double x);
double   MathExp(double x);
double   MathFloor(double x);
bool     MathIsValidNumber(double x);
double   MathLog(double x);
double   MathLog10(double x);
double   MathMax(double x, double y);
double   MathMin(double x, double y);
double   MathMod(double x, double y);
double   MathPow(double base, double exponent);
int      MathRand();
double   MathRound(double x);
double   MathSin(double x);
double   MathSqrt(double x);
void     MathSrand(int seed);
double   MathTan(double x);

double   pow(double base, double exponent);
int      rand();
double   round(double x);
double   sin(double x);
double   sqrt(double x);
void     srand(int seed);
double   tan(double x);

//=== 端末のグローバル変数 ===
bool     GlobalVariableCheck(string name);
bool     GlobalVariableDel(string name);
double   GlobalVariableGet(string name);
string   GlobalVariableName(int index);
int      GlobalVariablesDeleteAll(string prefix);
bool     GlobalVariableSet(string name, double value);
bool     GlobalVariableSetOnCondition(string name, double value, int condition);
bool     GlobalVariablesFlush();
int      GlobalVariablesTotal();
bool     GlobalVariableTemp(string name, double value);
datetime GlobalVariableTime(string name);

//=== 日付と時刻 ===
datetime StructToTime(MqlDateTime &dt);
datetime TimeCurrent();
int      TimeDaylightSavings();
datetime TimeGMT();
int      TimeGMTOffset();
datetime TimeLocal();
void     TimeToStruct(datetime time, MqlDateTime &dt);
datetime TimeTradeServer();

//=== 配列関数 ===
int      ArrayBsearch(void &array[], double value, int start=0, int count=-1);
int      ArrayCompare(void &array1[], void &array2[], int count);
int      ArrayCopy(void &dest[], const void &src[], int start=0, int count=-1);
void     ArrayFill(void &array[], int start, int count, double value);
void     ArrayFree(void &array[]);
bool     ArrayGetAsSeries(void &array[]);
void     ArrayInitialize(void &array[], double value);
void     ArrayInsert(void &dest[], int index, const void &src[], int count);
bool     ArrayIsDynamic(void &array[]);
bool     ArrayIsSeries(void &array[]);
double   ArrayMaximum(double &array[], int start=0, int count=-1);
double   ArrayMinimum(double &array[], int start=0, int count=-1);
void     ArrayPrint(void &array[]);
int      ArrayRange(void &array[], int dimension=0);
void     ArrayRemove(void &array[], int index, int count);
void     ArrayResize(void &array[], int new_size);
void     ArrayReverse(void &array[], int index=0, int count=-1);
void     ArraySetAsSeries(void &array[], bool as_series);
int      ArraySize(void &array[]);
void     ArraySort(void &array[], int start=0, int count=-1, int mode=SORT_ASCEND);
void     ArraySwap(void &array1[], void &array2[]);

//=== 売買シグナル ===
double   SignalBaseGetDouble(int index, int property_id);
long     SignalBaseGetInteger(int index, int property_id);
string   SignalBaseGetString(int index, int property_id);
bool     SignalBaseSelect(int index);
int      SignalBaseTotal();

double   SignalInfoGetDouble(int signal_handle, int property_id);
long     SignalInfoGetInteger(int signal_handle, int property_id);
string   SignalInfoGetString(int signal_handle, int property_id);
bool     SignalInfoSetDouble(int signal_handle, int property_id, double value);
bool     SignalInfoSetInteger(int signal_handle, int property_id, long value);
bool     SignalSubscribe(int signal_handle);
bool     SignalUnsubscribe(int signal_handle);

//=== 文字列関数 ===
string  StringAdd(string str1, string str2);
int     StringBufferLen(string str);
int     StringCompare(string str1, string str2);
string  StringConcatenate(string str1, string str2, ...);
string  StringFill(string str, int start, int count, uchar ch);
int     StringFind(string str, string substring, int start=0);
int     StringGetCharacter(string str, int index);
string  StringInit(uchar ch, int length);
int     StringLen(string str);
string  StringReplace(string str, string search, string replace);
string  StringSetCharacter(string str, int index, uchar ch);
int     StringSplit(string str, string separator, string &array[]);
string  StringSubstr(string str, int start, int length=-1);
string  StringToLower(string str);
string  StringToUpper(string str);
string  StringTrimLeft(string str);
string  StringTrimRight(string str);

//=== 変換関数 ===
string  CharArrayToString(uchar &array[], int start=0, int count=-1);
string  CharToString(uchar ch);
uint    ColorToARGB(color c);
string  ColorToString(color c);
string  DoubleToString(double value, int digits=8);
string  EnumToString(int value, int type);
string  IntegerToString(int value, int digits=0);
double  NormalizeDouble(double value, int digits);
string  ShortArrayToString(ushort &array[], int start=0, int count=-1);
string  ShortToString(ushort ch);
string  StringFormat(string format, ...);
void    StringToCharArray(string str, uchar &array[], int start=0, int count=-1);
color   StringToColor(string str);
double  StringToDouble(string str);
int     StringToInteger(string str);
void    StringToShortArray(string str, ushort &array[], int start=0, int count=-1);
datetime StringToTime(string str);
string   TimeToString(datetime time, int mode=TIME_DATE|TIME_MINUTES);

#endif // __INTELLISENSE__