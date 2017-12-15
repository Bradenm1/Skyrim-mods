/*
	THIS FILE IS A PART OF THE SKYRIM DRAGON SCRIPT PROJECT	
				(C) Alexander Blade 2011
			http://Alexander.SannyBuilder.com
*/

#pragma once

#include "plugin.h"
#include <windows.h>

enum
{
	StackElSize = 4,
	StackMaxLen = 32
};

extern DWORD ___stack[MAX_STACK_LEN];
extern DWORD ___stackindex;
extern DWORD ___result;

class NativeInvoke
{
private:
	static inline void StackReset()
	{
		___stackindex = 0;
	}

	template <typename T>
	static void __stdcall Push(T value) 
	{
		if (sizeof(T) > StackElSize)
		{
			// Each arg shud be 32 bits length
			MessageBoxA(0, "Native argument has a size greater than 32 bits", "Native call error", MB_ICONERROR);
			ExitProcess(0);
		}
		else if (sizeof(T) < StackElSize)
		{
			// Null current stack entry
			___stack[___stackindex] = 0;
		}
		//PrintDebug("Push called , ___stackindex = %d", ___stackindex);
		___stack[___stackindex] = *reinterpret_cast<DWORD *>(&value);
		___stackindex++;
	}

	static inline void Call(char *clname, char *fname)
	{
		NativeCall(clname, fname, ___stackindex, ___stack, &___result);
	}

	template <typename T>
	static inline T GetResult()
	{
		return *reinterpret_cast<T *>(&___result);
	}

public:
	template <typename R>
	static inline R Invoke(char *clname, char *fname)
	{
		StackReset();
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1>
	static inline R Invoke(char *clname, char *fname, T1 p1)
	{
		StackReset();
		Push(p1);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7, typename T8>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7, T8 p8)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Push(p8);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7, typename T8, typename T9>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7, T8 p8, T9 p9)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Push(p8);
		Push(p9);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7, typename T8, typename T9, typename T10>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7, T8 p8, T9 p9, T10 p10)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Push(p8);
		Push(p9);
		Push(p10);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7, typename T8, typename T9, typename T10, typename T11>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7, T8 p8, T9 p9, T10 p10, T11 p11)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Push(p8);
		Push(p9);
		Push(p10);
		Push(p11);
		Call(clname, fname);
		return GetResult<R>();
	}

	template <typename R, typename T1, typename T2, typename T3, typename T4, typename T5, typename T6, typename T7, typename T8, typename T9, typename T10, typename T11, typename T12>
	static inline R Invoke(char *clname, char *fname, T1 p1, T2 p2, T3 p3, T4 p4, T5 p5, T6 p6, T7 p7, T8 p8, T9 p9, T10 p10, T11 p11, T12 p12)
	{
		StackReset();
		Push(p1);
		Push(p2);
		Push(p3);
		Push(p4);
		Push(p5);
		Push(p6);
		Push(p7);
		Push(p8);
		Push(p9);
		Push(p10);
		Push(p11);
		Push(p12);
		Call(clname, fname);
		return GetResult<R>();
	}

};

class ObscriptInvoke
{
public:
	static inline double Invoke(char *fname)
	{
		return ObscriptCall(fname, 0, 0, 0);
	}

	template <typename T1>
	static inline double Invoke(char *fname, T1 p1)
	{
		return ObscriptCall(fname, *reinterpret_cast<DWORD *>(&p1), 0, 0);
	}

	template <typename T1, typename T2>
	static inline double Invoke(char *fname, T1 p1, T2 p2)
	{
		return ObscriptCall(fname, *reinterpret_cast<DWORD *>(&p1), *reinterpret_cast<DWORD *>(&p2), 0);
	}

	template <typename T1, typename T2, typename T3>
	static inline double Invoke(char *fname, T1 p1, T2 p2, T3 p3)
	{
		return ObscriptCall(fname, *reinterpret_cast<DWORD *>(&p1), *reinterpret_cast<DWORD *>(&p2), *reinterpret_cast<DWORD *>(&p3));
	}
};