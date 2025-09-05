//+------------------------------------------------------------------+
//|                                              AcemGhostCursor.mq4 |
//|                                             Copyright 2023, Acem |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict

#include <Acem/Sync/AcemSyncCursor.mqh>
#include <Acem/Common/AcemUtility.mqh>

CAcemSyncCursor syncCursor;

#define INDICATOR_SHORT_NAME "AcemSyncCursor"

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        return(INIT_FAILED);
    }
    ChartSetInteger(chartId, CHART_EVENT_MOUSE_MOVE, true);
    ChartSetInteger(chartId, CHART_EVENT_OBJECT_CREATE, true);
    ChartSetInteger(chartId, CHART_EVENT_OBJECT_DELETE, true);
   syncCursor.init();
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   syncCursor.OnChartEvent(id, lparam, dparam, sparam);
  }
//+------------------------------------------------------------------+
