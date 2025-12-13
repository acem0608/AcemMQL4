//+------------------------------------------------------------------+
//|                                        QuickDrawSyncProTrial.mq4 |
//|                                             Copyright 2023, Acem |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property strict

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
#define _GOGOJUNGLE_
#define _GOGOJUNGLE_TRIAL_

#include <Acem/Cmd/AcemQuickEditManagement.mqh>
#include <Acem/Cmd/AcemSyncCursor.mqh>
#include <Acem/Cmd/AcemSyncObject.mqh>
#include <Acem/Common/AcemUtility.mqh>

#define INDICATOR_SHORT_NAME "AcemQuickDraw"

CAcemQuickEditManagement quickManagement;
CAcemSyncCursor syncCursor;
CAcemSyncObject syncObjcet("AcemQuickDraw");

int OnInit()
{
    //--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        Alert(GOGOJUNGLE_TRIAL_ALREADY_RUNNING_MSG);
        return (INIT_FAILED);
    }

    string strSymbol = ChartSymbol(ChartID());
    if (StringFind(strSymbol, "USDJPY") < 0) {
        Alert(GOGOJUNGLE_TRIAL_SYMBOL_NG_MSG);
        return (INIT_FAILED);
    }

    int indiCnt = 0;
    for (long checkId = ChartFirst(); checkId != -1; checkId = ChartNext(checkId)) {
        if (checkId == ChartID()) {
            continue;
        }
        strSymbol = ChartSymbol(checkId);
        if (StringFind(strSymbol, "USDJPY") < 0) {
            continue;
        }

        int indicatorNum = ChartIndicatorsTotal(checkId, 0);
        int i;
        int indiNum = 0;
        for (i = 0; i < indicatorNum; i++) {
            string indiName = ChartIndicatorName(chartId, 0, i);
            if (indiName == INDICATOR_SHORT_NAME) {
                indiCnt++;
                break;
            }
        }

        if (indiCnt >= 2) {
            Alert(GOGOJUNGLE_TRIAL_CHART_OVER_MSG);
            return (INIT_FAILED);
        }
    }
    
    ChartSetInteger(ChartID(), CHART_EVENT_MOUSE_MOVE, true);
    ChartSetInteger(ChartID(), CHART_EVENT_OBJECT_CREATE, true);
    ChartSetInteger(ChartID(), CHART_EVENT_OBJECT_DELETE, true);

    syncCursor.init();
    syncObjcet.init();
    //---
    return (INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
    syncCursor.deinit(reason);
    syncObjcet.deinit(reason);
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
/*    
    if (id == CHARTEVENT_KEYDOWN) {
        switch(lparam) {
            case KEY_CHANNEL:
            case KEY_HLINE:
            case KEY_RECT:
            case KEY_TLINE:
            case KEY_VLINE:
            case KEY_CONTIONOUS_LINE:
            {
            }
            break;
        }
        
        if (lparam == KEY_CONTIONOUS_LINE) {
        }
    }
*/
    quickManagement.OnChartEvent(id, lparam, dparam, sparam);
    syncCursor.OnChartEvent(id, lparam, dparam, sparam);
    syncObjcet.OnChartEvent(id, lparam, dparam, sparam);
}
//+------------------------------------------------------------------+
