//+------------------------------------------------------------------+
//|                                      AcemFreeCurveUsingPpink.mq4 |
//|                                             Copyright 2023, Acem |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict

#define INDICATOR_SHORT_NAME "AcemUsingPpink"

#include <Acem/Common/AcemUtility.mqh>
#include <Acem/Cmd/AcemUsingPpink.mqh>

CAcemUsingPpink usingPpink;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
{
//--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        return (INIT_FAILED);
    }
    ChartSetInteger(chartId, CHART_EVENT_MOUSE_MOVE, true);
    ChartSetInteger(chartId, CHART_EVENT_OBJECT_CREATE, true);
    ChartSetInteger(chartId, CHART_EVENT_OBJECT_DELETE, true);

    if (!usingPpink.init()) {
        return (INIT_FAILED);
    }
    //---
    return (INIT_SUCCEEDED);
//---
}

void OnDeinit(const int reason)
{
    usingPpink.deinit(reason);
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
    usingPpink.OnChartEvent(id, lparam, dparam, sparam);
  }
//+------------------------------------------------------------------+
