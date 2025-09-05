#ifdef __INTELLISENSE__

#ifndef MQL_STUBS_H
#define MQL_STUBS_H

// ---------- Basic types ----------
#include <stdint.h>

typedef const char* string;
typedef int64_t     datetime;
typedef uint64_t    ulong;
typedef uint32_t    color;

// ---------- Common constants ----------
#ifndef TRUE
#define TRUE 1
#endif
#ifndef FALSE
#define FALSE 0
#endif

// Order Select constants (simulated)
#define SELECT_BY_POS 0
#define SELECT_BY_TICKET 1
#define MODE_TRADES 0
#define MODE_HISTORY 1

// Series indexing
#define MODE_OPEN 0
#define MODE_LOW 1
#define MODE_HIGH 2
#define MODE_CLOSE 3
#define MODE_VOLUME 4

// Indicator buffers (placeholder)
#define INDICATOR_CALCULATIONS 0

// ---------- Utility macros ----------
#ifndef __MQL4__
#define __MQL4__ 1 // Set one of __MQL4__/__MQL5__ if you want conditional sections
#endif
#ifndef __MQL5__
#define __MQL5__ 1
#endif

#include <MQL_Define.mqh>
#include <MQL_Enum.mqh>
#include <MQL_Function.mqh>

#endif // MQL_STUBS_H

#endif // __INTELLISENSE__
