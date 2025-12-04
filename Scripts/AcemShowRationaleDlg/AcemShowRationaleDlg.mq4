//+------------------------------------------------------------------+
//|                                         AcemShowRationaleDlg.mq4 |
//|                                         Copyright 2023, Acem0608 |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict

#include <Acem/Common/AcemDefine.mqh>

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
    EventChartCustom(ChartID(), ACEM_CUSTOM_EVENT_ID, 0, 0.0, ACEM_CUSTOM_EVENT_CMD_SHOW_RATIONALLE_DLG);
  }
//+------------------------------------------------------------------+
