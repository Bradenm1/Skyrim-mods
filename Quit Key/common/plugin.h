/*
	THIS FILE IS A PART OF THE SKYRIM DRAGON SCRIPT PROJECT	
				(C) Alexander Blade 2011
			http://Alexander.SannyBuilder.com
*/

#pragma once

#include "types.h"
#include <string>
#include <windows.h>

#define MAX_STACK_LEN 32

typedef void (_stdcall *TNativeCall)(char *clname, char *fname, DWORD stackparamcount, DWORD *stack, DWORD *result);
typedef double (_stdcall *TObscriptCall)(char *fname, DWORD self, DWORD param1, DWORD param2);
typedef PlayerCharacter *(_stdcall *TGetPlayerObjectHandle)();
typedef void (_stdcall *TExecuteConsoleCommand)(char *cmd, HANDLE selectedref);
typedef TESObjectREFR *(_stdcall *TGetConsoleSelectedRef)();
typedef void * (_stdcall *Tdyn_cast)(void *src, char *from, char *to);
typedef void (_stdcall *TRegisterPlugin)(HMODULE hModule);
typedef void (_stdcall *TWait)(int time);
typedef char * (_stdcall *TBSString_Create)(char *src);
typedef void (_stdcall *TBSString_Free)(char *BSString);

extern TNativeCall NativeCall;						 
extern TObscriptCall ObscriptCall;				 
extern TGetPlayerObjectHandle GetPlayerObjectHandle; 
extern TExecuteConsoleCommand ExecuteConsoleCommand; 
extern TGetConsoleSelectedRef GetConsoleSelectedRef; 
extern Tdyn_cast dyn_cast;							 
extern TRegisterPlugin RegisterPlugin;				 
extern TWait Wait;									 
extern TBSString_Create BSString_Create;			 
extern TBSString_Free BSString_Free;	
extern DWORD ___stack[MAX_STACK_LEN];
extern DWORD ___stackindex;
extern DWORD ___result;

// helper functions
std::string GetKeyName(BYTE key);
bool GetKeyPressed(BYTE key);
void PrintNote(char *pattern, ...);
void PrintDebug(char *pattern, ...);
int IniReadInt(char *inifile, char *section, char *param, int def);
