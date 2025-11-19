//+------------------------------------------------------------------+
//|                                         AcemExportBidAskData.mq4 |
//|                                             Copyright 2023, Acem |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict

#include <Acem/Cmd/AcemExportBidAsk.mqh>
#include <Acem/Common/AcemUtility.mqh>

#define INDICATOR_SHORT_NAME "AcemDisplaySymbolWatermark"

CAcemExportBidAsk exportBidAsk;

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

    if (exportBidAsk.init() == false) {
        return INIT_FAILED;
    }

    //---
    return (INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
    exportBidAsk.deinit(reason);
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime& time[],
                const double& open[],
                const double& high[],
                const double& low[],
                const double& close[],
                const long& tick_volume[],
                const long& volume[],
                const int& spread[])
{
    //---
    exportBidAsk.OnCalculate(rates_total, prev_calculated, time, open, high, low, close, tick_volume, volume, spread);
    //--- return value of prev_calculated for next call
    return (rates_total);
}
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long& lparam,
                  const double& dparam,
                  const string& sparam)
{
    //---
    exportBidAsk.OnChartEvent(id, lparam, dparam, sparam);
}
//+------------------------------------------------------------------+
