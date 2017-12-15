/*
	THIS FILE IS A PART OF THE SKYRIM DRAGON SCRIPT PROJECT	
				(C) Alexander Blade 2011
			http://Alexander.SannyBuilder.com
*/

#pragma once

#include "types.h"
#include "invoke.h"
#include "plugin.h"

#define BSScript_StaticFunctionTag 0

namespace Game
{
    static void AddAchievement(int aiAchievementID) {
        NativeInvoke::Invoke<ScriptNone>("Game", "AddAchievement", BSScript_StaticFunctionTag, aiAchievementID);
    }

    static void AdvanceSkill(char * asSkillName, float afMagnitude) {
        char *_asSkillName = BSString_Create(asSkillName);
        NativeInvoke::Invoke<ScriptNone>("Game", "AdvanceSkill", BSScript_StaticFunctionTag, &_asSkillName, afMagnitude);
        BSString_Free(_asSkillName);
    }

    static bool AddHavokBallAndSocketConstraint(TESObjectREFR * arRefA, char * arRefANode, TESObjectREFR * arRefB, char * arRefBNode, float afRefALocalOffsetX, float afRefALocalOffsetY, float afRefALocalOffsetZ, float afRefBLocalOffsetX, float afRefBLocalOffsetY, float afRefBLocalOffsetZ) {
        char *_arRefANode = BSString_Create(arRefANode);
        char *_arRefBNode = BSString_Create(arRefBNode);
        bool result = NativeInvoke::Invoke<bool>("Game", "AddHavokBallAndSocketConstraint", BSScript_StaticFunctionTag, arRefA, &_arRefANode, arRefB, &_arRefBNode, afRefALocalOffsetX, afRefALocalOffsetY, afRefALocalOffsetZ, afRefBLocalOffsetX, afRefBLocalOffsetY, afRefBLocalOffsetZ);
        BSString_Free(_arRefANode);
        BSString_Free(_arRefBNode);
        return result;
    }

    static bool RemoveHavokConstraints(TESObjectREFR * arFirstRef, char * arFirstRefNodeName, TESObjectREFR * arSecondRef, char * arSecondRefNodeName) {
        char *_arFirstRefNodeName = BSString_Create(arFirstRefNodeName);
        char *_arSecondRefNodeName = BSString_Create(arSecondRefNodeName);
        bool result = NativeInvoke::Invoke<bool>("Game", "RemoveHavokConstraints", BSScript_StaticFunctionTag, arFirstRef, &_arFirstRefNodeName, arSecondRef, &_arSecondRefNodeName);
        BSString_Free(_arFirstRefNodeName);
        BSString_Free(_arSecondRefNodeName);
        return result;
    }

    static uint CalculateFavorCost(uint aiFavorPrice) {
        return NativeInvoke::Invoke<uint>("Game", "CalculateFavorCost", BSScript_StaticFunctionTag, aiFavorPrice);
    }

    static void ClearTempEffects() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ClearTempEffects", BSScript_StaticFunctionTag);
    }

    static void ClearPrison() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ClearPrison", BSScript_StaticFunctionTag);
    }

    static void DisablePlayerControls(bool abMovement, bool abFighting, bool abCamSwitch, bool abLooking, bool abSneaking, bool abMenu, bool abActivate, bool abJournalTabs, uint aiDisablePOVType) {
        NativeInvoke::Invoke<ScriptNone>("Game", "DisablePlayerControls", BSScript_StaticFunctionTag, abMovement, abFighting, abCamSwitch, abLooking, abSneaking, abMenu, abActivate, abJournalTabs, aiDisablePOVType);
    }

    static void EnablePlayerControls(bool abMovement, bool abFighting, bool abCamSwitch, bool abLooking, bool abSneaking, bool abMenu, bool abActivate, bool abJournalTabs, uint aiDisablePOVType) {
        NativeInvoke::Invoke<ScriptNone>("Game", "EnablePlayerControls", BSScript_StaticFunctionTag, abMovement, abFighting, abCamSwitch, abLooking, abSneaking, abMenu, abActivate, abJournalTabs, aiDisablePOVType);
    }

    static void EnableFastTravel(bool abEnable) {
        NativeInvoke::Invoke<ScriptNone>("Game", "EnableFastTravel", BSScript_StaticFunctionTag, abEnable);
    }

    static void FadeOutGame(bool abFadingOut, bool abBlackFade, float afSecsBeforeFade, float afFadeDuration) {
        NativeInvoke::Invoke<ScriptNone>("Game", "FadeOutGame", BSScript_StaticFunctionTag, abFadingOut, abBlackFade, afSecsBeforeFade, afFadeDuration);
    }

    static void FastTravel(TESObjectREFR * akDestination) {
        NativeInvoke::Invoke<ScriptNone>("Game", "FastTravel", BSScript_StaticFunctionTag, akDestination);
    }

    static TESObjectREFR * FindClosestReferenceOfType(TESForm * arBaseObject, float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<TESObjectREFR *>("Game", "FindClosestReferenceOfType", BSScript_StaticFunctionTag, arBaseObject, afX, afY, afZ, afRadius);
    }

    static TESObjectREFR * FindClosestReferenceOfAnyTypeInList(BGSListForm * arBaseObjects, float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<TESObjectREFR *>("Game", "FindClosestReferenceOfAnyTypeInList", BSScript_StaticFunctionTag, arBaseObjects, afX, afY, afZ, afRadius);
    }

    static TESObjectREFR * FindRandomReferenceOfType(TESForm * arBaseObject, float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<TESObjectREFR *>("Game", "FindRandomReferenceOfType", BSScript_StaticFunctionTag, arBaseObject, afX, afY, afZ, afRadius);
    }

    static TESObjectREFR * FindRandomReferenceOfAnyTypeInList(BGSListForm * arBaseObjects, float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<TESObjectREFR *>("Game", "FindRandomReferenceOfAnyTypeInList", BSScript_StaticFunctionTag, arBaseObjects, afX, afY, afZ, afRadius);
    }

    static CActor * FindClosestActor(float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<CActor *>("Game", "FindClosestActor", BSScript_StaticFunctionTag, afX, afY, afZ, afRadius);
    }

    static CActor * FindRandomActor(float afX, float afY, float afZ, float afRadius) {
        return NativeInvoke::Invoke<CActor *>("Game", "FindRandomActor", BSScript_StaticFunctionTag, afX, afY, afZ, afRadius);
    }

    static void ForceThirdPerson() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ForceThirdPerson", BSScript_StaticFunctionTag);
    }

    static void ForceFirstPerson() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ForceFirstPerson", BSScript_StaticFunctionTag);
    }

    static void ShowFirstPersonGeometry(bool abShow) {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShowFirstPersonGeometry", BSScript_StaticFunctionTag, abShow);
    }

    static TESForm * GetFormById(uint aiFormID) {
        return NativeInvoke::Invoke<TESForm *>("Game", "GetForm", BSScript_StaticFunctionTag, aiFormID);
    }

    static float GetGameSettingFloat(char * asGameSetting) {
        char *_asGameSetting = BSString_Create(asGameSetting);
        float result = NativeInvoke::Invoke<float>("Game", "GetGameSettingFloat", BSScript_StaticFunctionTag, &_asGameSetting);
        BSString_Free(_asGameSetting);
        return result;
    }

    static int GetGameSettingInt(char * asGameSetting) {
        char *_asGameSetting = BSString_Create(asGameSetting);
        int result = NativeInvoke::Invoke<int>("Game", "GetGameSettingInt", BSScript_StaticFunctionTag, &_asGameSetting);
        BSString_Free(_asGameSetting);
        return result;
    }

    static bool GetGameSettingString(char * asGameSetting) {
        char *_asGameSetting = BSString_Create(asGameSetting);
        bool result = NativeInvoke::Invoke<bool>("Game", "GetGameSettingString", BSScript_StaticFunctionTag, &_asGameSetting);
        BSString_Free(_asGameSetting);
        return result;
    }

    static CActor * GetPlayer() {
        return NativeInvoke::Invoke<CActor *>("Game", "GetPlayer", BSScript_StaticFunctionTag);
    }

    static TESObjectREFR * GetPlayerGrabbedRef() {
        return NativeInvoke::Invoke<TESObjectREFR *>("Game", "GetPlayerGrabbedRef", BSScript_StaticFunctionTag);
    }

    static CActor * GetPlayersLastRiddenHorse() {
        return NativeInvoke::Invoke<CActor *>("Game", "GetPlayersLastRiddenHorse", BSScript_StaticFunctionTag);
    }

    static float GetRealHoursPassed() {
        return NativeInvoke::Invoke<float>("Game", "GetRealHoursPassed", BSScript_StaticFunctionTag);
    }

    static void IncrementSkill(char * asSkillName) {
        char *_asSkillName = BSString_Create(asSkillName);
        NativeInvoke::Invoke<ScriptNone>("Game", "IncrementSkill", BSScript_StaticFunctionTag, &_asSkillName);
        BSString_Free(_asSkillName);
    }

    static void IncrementSkillBy(char * asSkillName, uint aiCount) {
        char *_asSkillName = BSString_Create(asSkillName);
        NativeInvoke::Invoke<ScriptNone>("Game", "IncrementSkillBy", BSScript_StaticFunctionTag, &_asSkillName, aiCount);
        BSString_Free(_asSkillName);
    }

    static void IncrementStat(char * asStatName, int aiModAmount) {
        char *_asStatName = BSString_Create(asStatName);
        NativeInvoke::Invoke<ScriptNone>("Game", "IncrementStat", BSScript_StaticFunctionTag, &_asStatName, aiModAmount);
        BSString_Free(_asStatName);
    }

    static bool IsActivateControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsActivateControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsCamSwitchControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsCamSwitchControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsFastTravelEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsFastTravelEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsFightingControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsFightingControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsJournalControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsJournalControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsLookingControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsLookingControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsMenuControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsMenuControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsMovementControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsMovementControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsSneakingControlsEnabled() {
        return NativeInvoke::Invoke<bool>("Game", "IsSneakingControlsEnabled", BSScript_StaticFunctionTag);
    }

    static bool IsWordUnlocked(TESWordOfPower * akWord) {
        return NativeInvoke::Invoke<bool>("Game", "IsWordUnlocked", BSScript_StaticFunctionTag, akWord);
    }

    static void PlayBink(char * asFileName, bool abInterruptible, bool abMuteAudio, bool abMuteMusic, bool abLetterbox) {
        char *_asFileName = BSString_Create(asFileName);
        NativeInvoke::Invoke<ScriptNone>("Game", "PlayBink", BSScript_StaticFunctionTag, &_asFileName, abInterruptible, abMuteAudio, abMuteMusic, abLetterbox);
        BSString_Free(_asFileName);
    }

    static void PrecacheCharGen() {
        NativeInvoke::Invoke<ScriptNone>("Game", "PrecacheCharGen", BSScript_StaticFunctionTag);
    }

    static void PrecacheCharGenClear() {
        NativeInvoke::Invoke<ScriptNone>("Game", "PrecacheCharGenClear", BSScript_StaticFunctionTag);
    }

    static int QueryStat(char * asStat) {
        char *_asStat = BSString_Create(asStat);
        int result = NativeInvoke::Invoke<int>("Game", "QueryStat", BSScript_StaticFunctionTag, &_asStat);
        BSString_Free(_asStat);
        return result;
    }

    static void QuitToMainMenu() {
        NativeInvoke::Invoke<ScriptNone>("Game", "QuitToMainMenu", BSScript_StaticFunctionTag);
    }

    static void RequestAutosave() {
        NativeInvoke::Invoke<ScriptNone>("Game", "RequestAutosave", BSScript_StaticFunctionTag);
    }

    static void RequestModel(char * asModelName) {
        char *_asModelName = BSString_Create(asModelName);
        NativeInvoke::Invoke<ScriptNone>("Game", "RequestModel", BSScript_StaticFunctionTag, &_asModelName);
        BSString_Free(_asModelName);
    }

    static void RequestSave() {
        NativeInvoke::Invoke<ScriptNone>("Game", "RequestSave", BSScript_StaticFunctionTag);
    }

    static void SendWereWolfTransformation() {
        NativeInvoke::Invoke<ScriptNone>("Game", "SendWereWolfTransformation", BSScript_StaticFunctionTag);
    }

    static void ServeTime() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ServeTime", BSScript_StaticFunctionTag);
    }

    static void SetBeastForm(bool abEntering) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetBeastForm", BSScript_StaticFunctionTag, abEntering);
    }

    static void SetCameraTarget(CActor * arTarget) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetCameraTarget", BSScript_StaticFunctionTag, arTarget);
    }

    static void SetHudCartMode(bool abSetCartMode) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetHudCartMode", BSScript_StaticFunctionTag, abSetCartMode);
    }

    static void SetInChargen(bool abDisableSaving, bool abDisableWaiting, bool abShowControlsDisabledMessage) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetInChargen", BSScript_StaticFunctionTag, abDisableSaving, abDisableWaiting, abShowControlsDisabledMessage);
    }

    static void SetPlayerAIDriven(bool abAIDriven) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetPlayerAIDriven", BSScript_StaticFunctionTag, abAIDriven);
    }

    static void SetPlayerReportCrime(bool abReportCrime) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetPlayerReportCrime", BSScript_StaticFunctionTag, abReportCrime);
    }

    static void SetSittingRotation(float afValue) {
        NativeInvoke::Invoke<ScriptNone>("Game", "SetSittingRotation", BSScript_StaticFunctionTag, afValue);
    }

    static void ShakeCamera(TESObjectREFR * akSource, float afStrength, float afDuration) {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShakeCamera", BSScript_StaticFunctionTag, akSource, afStrength, afDuration);
    }

    static void ShakeController(float afSmallMotorStrength, float afBigMotorStreangth, float afDuration) {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShakeController", BSScript_StaticFunctionTag, afSmallMotorStrength, afBigMotorStreangth, afDuration);
    }

    static void ShowTitleSequenceMenu() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShowTitleSequenceMenu", BSScript_StaticFunctionTag);
    }

    static void HideTitleSequenceMenu() {
        NativeInvoke::Invoke<ScriptNone>("Game", "HideTitleSequenceMenu", BSScript_StaticFunctionTag);
    }

    static void StartTitleSequence(char * asSequenceName) {
        char *_asSequenceName = BSString_Create(asSequenceName);
        NativeInvoke::Invoke<ScriptNone>("Game", "StartTitleSequence", BSScript_StaticFunctionTag, &_asSequenceName);
        BSString_Free(_asSequenceName);
    }

    static void ShowRaceMenu() {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShowRaceMenu", BSScript_StaticFunctionTag);
    }

    static void ShowTrainingMenu(CActor * aTrainer) {
        NativeInvoke::Invoke<ScriptNone>("Game", "ShowTrainingMenu", BSScript_StaticFunctionTag, aTrainer);
    }

    static void TeachWord(TESWordOfPower * akWord) {
        NativeInvoke::Invoke<ScriptNone>("Game", "TeachWord", BSScript_StaticFunctionTag, akWord);
    }

    static void TriggerScreenBlood(uint aiValue) {
        NativeInvoke::Invoke<ScriptNone>("Game", "TriggerScreenBlood", BSScript_StaticFunctionTag, aiValue);
    }

    static void UnlockWord(TESWordOfPower * akWord) {
        NativeInvoke::Invoke<ScriptNone>("Game", "UnlockWord", BSScript_StaticFunctionTag, akWord);
    }

    static bool UsingGamepad() {
        return NativeInvoke::Invoke<bool>("Game", "UsingGamepad", BSScript_StaticFunctionTag);
    }
}

namespace Utility
{
    static bool GameTimeToString(float afGameTime) {
        return NativeInvoke::Invoke<bool>("Utility", "GameTimeToString", BSScript_StaticFunctionTag, afGameTime);
    }

    static float GetCurrentGameTime() {
        return NativeInvoke::Invoke<float>("Utility", "GetCurrentGameTime", BSScript_StaticFunctionTag);
    }

    static float GetCurrentRealTime() {
        return NativeInvoke::Invoke<float>("Utility", "GetCurrentRealTime", BSScript_StaticFunctionTag);
    }

    static bool IsInMenuMode() {
        return NativeInvoke::Invoke<bool>("Utility", "IsInMenuMode", BSScript_StaticFunctionTag);
    }

    static int RandomInt(int aiMin, int aiMax) {
        return NativeInvoke::Invoke<int>("Utility", "RandomInt", BSScript_StaticFunctionTag, aiMin, aiMax);
    }

    static float RandomFloat(float afMin, float afMax) {
        return NativeInvoke::Invoke<float>("Utility", "RandomFloat", BSScript_StaticFunctionTag, afMin, afMax);
    }

    static void SetINIBool(char * ini, bool value) {
        char *_ini = BSString_Create(ini);
        NativeInvoke::Invoke<ScriptNone>("Utility", "SetINIBool", BSScript_StaticFunctionTag, &_ini, value);
        BSString_Free(_ini);
    }

    static void SetINIFloat(char * ini, float value) {
        char *_ini = BSString_Create(ini);
        NativeInvoke::Invoke<ScriptNone>("Utility", "SetINIFloat", BSScript_StaticFunctionTag, &_ini, value);
        BSString_Free(_ini);
    }

    static void SetINIInt(char * ini, int value) {
        char *_ini = BSString_Create(ini);
        NativeInvoke::Invoke<ScriptNone>("Utility", "SetINIInt", BSScript_StaticFunctionTag, &_ini, value);
        BSString_Free(_ini);
    }

    static void SetINIString(char * ini, char * value) {
        char *_ini = BSString_Create(ini);
        char *_value = BSString_Create(value);
        NativeInvoke::Invoke<ScriptNone>("Utility", "SetINIString", BSScript_StaticFunctionTag, &_ini, &_value);
        BSString_Free(_ini);
        BSString_Free(_value);
    }

    static bool WaitGameTime(float afHours) {
        return NativeInvoke::Invoke<bool>("Utility", "WaitGameTime", BSScript_StaticFunctionTag, afHours);
    }

    static bool WaitMenuMode(float afSeconds) {
        return NativeInvoke::Invoke<bool>("Utility", "WaitMenuMode", BSScript_StaticFunctionTag, afSeconds);
    }
}

namespace Debug
{
    static void CenterOnCell(char * asCellname) {
        char *_asCellname = BSString_Create(asCellname);
        NativeInvoke::Invoke<ScriptNone>("Debug", "CenterOnCell", BSScript_StaticFunctionTag, &_asCellname);
        BSString_Free(_asCellname);
    }

    static bool CenterOnCellAndWait(char * asCellname) {
        char *_asCellname = BSString_Create(asCellname);
        bool result = NativeInvoke::Invoke<bool>("Debug", "CenterOnCellAndWait", BSScript_StaticFunctionTag, &_asCellname);
        BSString_Free(_asCellname);
        return result;
    }

    static bool PlayerMoveToAndWait(char * asDestRef) {
        char *_asDestRef = BSString_Create(asDestRef);
        bool result = NativeInvoke::Invoke<bool>("Debug", "PlayerMoveToAndWait", BSScript_StaticFunctionTag, &_asDestRef);
        BSString_Free(_asDestRef);
        return result;
    }

    static void CloseUserLog(char * asLogName) {
        char *_asLogName = BSString_Create(asLogName);
        NativeInvoke::Invoke<ScriptNone>("Debug", "CloseUserLog", BSScript_StaticFunctionTag, &_asLogName);
        BSString_Free(_asLogName);
    }

    static void DebugChannelNotify(char * channel, char * message) {
        char *_channel = BSString_Create(channel);
        char *_message = BSString_Create(message);
        NativeInvoke::Invoke<ScriptNone>("Debug", "DebugChannelNotify", BSScript_StaticFunctionTag, &_channel, &_message);
        BSString_Free(_channel);
        BSString_Free(_message);
    }

    static void DumpAliasData(TESQuest * akQuest) {
        NativeInvoke::Invoke<ScriptNone>("Debug", "DumpAliasData", BSScript_StaticFunctionTag, akQuest);
    }

    static bool GetConfigName() {
        return NativeInvoke::Invoke<bool>("Debug", "GetConfigName", BSScript_StaticFunctionTag);
    }

    static bool GetPlatformName() {
        return NativeInvoke::Invoke<bool>("Debug", "GetPlatformName", BSScript_StaticFunctionTag);
    }

    static bool GetVersionNumber() {
        return NativeInvoke::Invoke<bool>("Debug", "GetVersionNumber", BSScript_StaticFunctionTag);
    }

    static void ShowMessageBox(char * asMessageBoxText) {
        char *_asMessageBoxText = BSString_Create(asMessageBoxText);
        NativeInvoke::Invoke<ScriptNone>("Debug", "MessageBox", BSScript_StaticFunctionTag, &_asMessageBoxText);
        BSString_Free(_asMessageBoxText);
    }

    static void Notification(char * asNotificationText) {
        char *_asNotificationText = BSString_Create(asNotificationText);
        NativeInvoke::Invoke<ScriptNone>("Debug", "Notification", BSScript_StaticFunctionTag, &_asNotificationText);
        BSString_Free(_asNotificationText);
    }

    static bool OpenUserLog(char * asLogName) {
        char *_asLogName = BSString_Create(asLogName);
        bool result = NativeInvoke::Invoke<bool>("Debug", "OpenUserLog", BSScript_StaticFunctionTag, &_asLogName);
        BSString_Free(_asLogName);
        return result;
    }

    static void QuitGame() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "QuitGame", BSScript_StaticFunctionTag);
    }

    static void SendAnimationEvent(TESObjectREFR * arRef, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        NativeInvoke::Invoke<ScriptNone>("Debug", "SendAnimationEvent", BSScript_StaticFunctionTag, arRef, &_asEventName);
        BSString_Free(_asEventName);
    }

    static void SetFootIK(bool abFootIK) {
        NativeInvoke::Invoke<ScriptNone>("Debug", "SetFootIK", BSScript_StaticFunctionTag, abFootIK);
    }

    static void SetGodMode(bool abGodMode) {
        NativeInvoke::Invoke<ScriptNone>("Debug", "SetGodMode", BSScript_StaticFunctionTag, abGodMode);
    }

    static void StartScriptProfiling(char * asScriptName) {
        char *_asScriptName = BSString_Create(asScriptName);
        NativeInvoke::Invoke<ScriptNone>("Debug", "StartScriptProfiling", BSScript_StaticFunctionTag, &_asScriptName);
        BSString_Free(_asScriptName);
    }

    static void StartStackProfiling() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "StartStackProfiling", BSScript_StaticFunctionTag);
    }

    static void StopScriptProfiling(char * asScriptName) {
        char *_asScriptName = BSString_Create(asScriptName);
        NativeInvoke::Invoke<ScriptNone>("Debug", "StopScriptProfiling", BSScript_StaticFunctionTag, &_asScriptName);
        BSString_Free(_asScriptName);
    }

    static void StopStackProfiling() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "StopStackProfiling", BSScript_StaticFunctionTag);
    }

    static void TakeScreenshot(char * asFilename) {
        char *_asFilename = BSString_Create(asFilename);
        NativeInvoke::Invoke<ScriptNone>("Debug", "TakeScreenshot", BSScript_StaticFunctionTag, &_asFilename);
        BSString_Free(_asFilename);
    }

    static void ToggleAI() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "ToggleAI", BSScript_StaticFunctionTag);
    }

    static void ToggleCollisions() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "ToggleCollisions", BSScript_StaticFunctionTag);
    }

    static void ToggleMenus() {
        NativeInvoke::Invoke<ScriptNone>("Debug", "ToggleMenus", BSScript_StaticFunctionTag);
    }

    static void Trace(char * asTextToPrint, uint aiSeverity) {
        char *_asTextToPrint = BSString_Create(asTextToPrint);
        NativeInvoke::Invoke<ScriptNone>("Debug", "Trace", BSScript_StaticFunctionTag, &_asTextToPrint, aiSeverity);
        BSString_Free(_asTextToPrint);
    }

    static void TraceStack(char * asTextToPrint, uint aiSeverity) {
        char *_asTextToPrint = BSString_Create(asTextToPrint);
        NativeInvoke::Invoke<ScriptNone>("Debug", "TraceStack", BSScript_StaticFunctionTag, &_asTextToPrint, aiSeverity);
        BSString_Free(_asTextToPrint);
    }

    static bool TraceUser(char * asUserLog, char * asTextToPrint, uint aiSeverity) {
        char *_asUserLog = BSString_Create(asUserLog);
        char *_asTextToPrint = BSString_Create(asTextToPrint);
        bool result = NativeInvoke::Invoke<bool>("Debug", "TraceUser", BSScript_StaticFunctionTag, &_asUserLog, &_asTextToPrint, aiSeverity);
        BSString_Free(_asUserLog);
        BSString_Free(_asTextToPrint);
        return result;
    }
}

namespace Math
{
    static float abs(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "abs", BSScript_StaticFunctionTag, afValue);
    }

    static float acos(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "acos", BSScript_StaticFunctionTag, afValue);
    }

    static float asin(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "asin", BSScript_StaticFunctionTag, afValue);
    }

    static float atan(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "atan", BSScript_StaticFunctionTag, afValue);
    }

    static int Ceiling(float afValue) {
        return NativeInvoke::Invoke<int>("Math", "Ceiling", BSScript_StaticFunctionTag, afValue);
    }

    static float cos(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "cos", BSScript_StaticFunctionTag, afValue);
    }

    static float DegreesToRadians(float afDegrees) {
        return NativeInvoke::Invoke<float>("Math", "DegreesToRadians", BSScript_StaticFunctionTag, afDegrees);
    }

    static int Floor(float afValue) {
        return NativeInvoke::Invoke<int>("Math", "Floor", BSScript_StaticFunctionTag, afValue);
    }

    static float pow(float x, float y) {
        return NativeInvoke::Invoke<float>("Math", "pow", BSScript_StaticFunctionTag, x, y);
    }

    static float RadiansToDegrees(float afRadians) {
        return NativeInvoke::Invoke<float>("Math", "RadiansToDegrees", BSScript_StaticFunctionTag, afRadians);
    }

    static float sin(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "sin", BSScript_StaticFunctionTag, afValue);
    }

    static float sqrt(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "sqrt", BSScript_StaticFunctionTag, afValue);
    }

    static float tan(float afValue) {
        return NativeInvoke::Invoke<float>("Math", "tan", BSScript_StaticFunctionTag, afValue);
    }
}

namespace Form
{
    static uint GetFormID(TESForm * self) {
        return NativeInvoke::Invoke<uint>("Form", "GetFormID", self);
    }

    static int GetGoldValue(TESForm * self) {
        return NativeInvoke::Invoke<int>("Form", "GetGoldValue", self);
    }

    static bool HasKeyword(TESForm * self, BGSKeyword * akKeyword) {
        return NativeInvoke::Invoke<bool>("Form", "HasKeyword", self, akKeyword);
    }

    static bool PlayerKnows(TESForm * self) {
        return NativeInvoke::Invoke<bool>("Form", "PlayerKnows", self);
    }

    static bool RegisterForAnimationEvent(TESForm * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        bool result = NativeInvoke::Invoke<bool>("Form", "RegisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
        return result;
    }

    static void RegisterForLOS(TESForm * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForLOS", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSGain(TESForm * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForSingleLOSGain", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSLost(TESForm * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForSingleLOSLost", self, akViewer, akTarget);
    }

    static void RegisterForSingleUpdate(TESForm * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForSingleUpdate", self, afInterval);
    }

    static void RegisterForSingleUpdateGameTime(TESForm * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForSingleUpdateGameTime", self, afInterval);
    }

    static void RegisterForSleep(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForSleep", self);
    }

    static void RegisterForTrackedStatsEvent(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForTrackedStatsEvent", self);
    }

    static void RegisterForUpdate(TESForm * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForUpdate", self, afInterval);
    }

    static void RegisterForUpdateGameTime(TESForm * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Form", "RegisterForUpdateGameTime", self, afInterval);
    }

    static void StartObjectProfiling(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "StartObjectProfiling", self);
    }

    static void StopObjectProfiling(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "StopObjectProfiling", self);
    }

    static void UnregisterForAnimationEvent(TESForm * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
    }

    static void UnregisterForLOS(TESForm * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForLOS", self, akViewer, akTarget);
    }

    static void UnregisterForSleep(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForSleep", self);
    }

    static void UnregisterForTrackedStatsEvent(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForTrackedStatsEvent", self);
    }

    static void UnregisterForUpdate(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForUpdate", self);
    }

    static void UnregisterForUpdateGameTime(TESForm * self) {
        NativeInvoke::Invoke<ScriptNone>("Form", "UnregisterForUpdateGameTime", self);
    }
}

namespace Keyword
{
    static void SendStoryEvent(BGSKeyword * self, BGSLocation * akLoc, TESObjectREFR * akRef1, TESObjectREFR * akRef2, uint aiValue1, uint aiValue2) {
        NativeInvoke::Invoke<ScriptNone>("Keyword", "SendStoryEvent", self, akLoc, akRef1, akRef2, aiValue1, aiValue2);
    }

    static bool SendStoryEventAndWait(BGSKeyword * self, BGSLocation * akLoc, TESObjectREFR * akRef1, TESObjectREFR * akRef2, uint aiValue1, uint aiValue2) {
        return NativeInvoke::Invoke<bool>("Keyword", "SendStoryEventAndWait", self, akLoc, akRef1, akRef2, aiValue1, aiValue2);
    }
}

namespace Location
{
    static float GetKeywordData(BGSLocation * self, BGSKeyword * akKeyword) {
        return NativeInvoke::Invoke<float>("Location", "GetKeywordData", self, akKeyword);
    }

    static uint GetRefTypeAliveCount(BGSLocation * self, BGSLocation * akRefType) {
        return NativeInvoke::Invoke<uint>("Location", "GetRefTypeAliveCount", self, akRefType);
    }

    static uint GetRefTypeDeadCount(BGSLocation * self, BGSLocation * akRefType) {
        return NativeInvoke::Invoke<uint>("Location", "GetRefTypeDeadCount", self, akRefType);
    }

    static bool HasCommonParent(BGSLocation * self, BGSLocation * akOther, BGSKeyword * akFilter) {
        return NativeInvoke::Invoke<bool>("Location", "HasCommonParent", self, akOther, akFilter);
    }

    static bool HasRefType(BGSLocation * self, BGSLocation * akRefType) {
        return NativeInvoke::Invoke<bool>("Location", "HasRefType", self, akRefType);
    }

    static bool IsChild(BGSLocation * self, BGSLocation * akOther) {
        return NativeInvoke::Invoke<bool>("Location", "IsChild", self, akOther);
    }

    static bool IsCleared(BGSLocation * self) {
        return NativeInvoke::Invoke<bool>("Location", "IsCleared", self);
    }

    static bool IsLoaded(BGSLocation * self) {
        return NativeInvoke::Invoke<bool>("Location", "IsLoaded", self);
    }

    static void SetCleared(BGSLocation * self, bool abCleared) {
        NativeInvoke::Invoke<ScriptNone>("Location", "SetCleared", self, abCleared);
    }

    static void SetKeywordData(BGSLocation * self, BGSKeyword * akKeyword, float afData) {
        NativeInvoke::Invoke<ScriptNone>("Location", "SetKeywordData", self, akKeyword, afData);
    }
}

namespace Message
{
    static bool Show(BGSMessage * self, float afArg1, float afArg2, float afArg3, float afArg4, float afArg5, float afArg6, float afArg7, float afArg8, float afArg9) {
        return NativeInvoke::Invoke<bool>("Message", "Show", self, afArg1, afArg2, afArg3, afArg4, afArg5, afArg6, afArg7, afArg8, afArg9);
    }

    static void ShowAsHelpMessage(BGSMessage * self, char * asEvent, float afDuration, float afInterval, int aiMaxTimes) {
        char *_asEvent = BSString_Create(asEvent);
        NativeInvoke::Invoke<ScriptNone>("Message", "ShowAsHelpMessage", self, &_asEvent, afDuration, afInterval, aiMaxTimes);
        BSString_Free(_asEvent);
    }

    static void ResetHelpMessage(char * asEvent) {
        char *_asEvent = BSString_Create(asEvent);
        NativeInvoke::Invoke<ScriptNone>("Message", "ResetHelpMessage", BSScript_StaticFunctionTag, &_asEvent);
        BSString_Free(_asEvent);
    }
}

namespace MusicType
{
    static void Add(BGSMusicType * self) {
        NativeInvoke::Invoke<ScriptNone>("MusicType", "Add", self);
    }

    static void Remove(BGSMusicType * self) {
        NativeInvoke::Invoke<ScriptNone>("MusicType", "Remove", self);
    }
}

namespace VisualEffect
{
    static void Play(BGSReferenceEffect * self, TESObjectREFR * akObject, float afTime, TESObjectREFR * akFacingObject) {
        NativeInvoke::Invoke<ScriptNone>("VisualEffect", "Play", self, akObject, afTime, akFacingObject);
    }

    static void Stop(BGSReferenceEffect * self, TESObjectREFR * akObject) {
        NativeInvoke::Invoke<ScriptNone>("VisualEffect", "Stop", self, akObject);
    }


}

namespace Scene
{
    static void ForceStart(BGSScene * self) {
        NativeInvoke::Invoke<ScriptNone>("Scene", "ForceStart", self);
    }

    static TESQuest * GetOwningQuest(BGSScene * self) {
        return NativeInvoke::Invoke<TESQuest *>("Scene", "GetOwningQuest", self);
    }

    static bool IsActionComplete(BGSScene * self, uint aiActionID) {
        return NativeInvoke::Invoke<bool>("Scene", "IsActionComplete", self, aiActionID);
    }

    static bool IsPlaying(BGSScene * self) {
        return NativeInvoke::Invoke<bool>("Scene", "IsPlaying", self);
    }

    static void Start(BGSScene * self) {
        NativeInvoke::Invoke<ScriptNone>("Scene", "Start", self);
    }

    static void Stop(BGSScene * self) {
        NativeInvoke::Invoke<ScriptNone>("Scene", "Stop", self);
    }
}

namespace ShaderParticleGeometry
{
    static void Apply(BGSShaderParticleGeometryData * self, float afFadeTime) {
        NativeInvoke::Invoke<ScriptNone>("ShaderParticleGeometry", "Apply", self, afFadeTime);
    }

    static void Remove(BGSShaderParticleGeometryData * self, float afFadeTime) {
        NativeInvoke::Invoke<ScriptNone>("ShaderParticleGeometry", "Remove", self, afFadeTime);
    }
}

namespace SoundCategory
{
    static void Pause(BGSSoundCategory * self) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "Pause", self);
    }

    static void UnPause(BGSSoundCategory * self) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "UnPause", self);
    }

    static void Mute(BGSSoundCategory * self) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "Mute", self);
    }

    static void UnMute(BGSSoundCategory * self) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "UnMute", self);
    }

    static void SetVolume(BGSSoundCategory * self, float afVolume) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "SetVolume", self, afVolume);
    }

    static void SetFrequency(BGSSoundCategory * self, float afFrequencyCoeffecient) {
        NativeInvoke::Invoke<ScriptNone>("SoundCategory", "SetFrequency", self, afFrequencyCoeffecient);
    }
}

namespace MagicEffect
{
    static bool GetAssociatedSkill(EffectSetting * self) {
        return NativeInvoke::Invoke<bool>("MagicEffect", "GetAssociatedSkill", self);
    }
}

namespace EffectShader
{
    static void Play(TESEffectShader * self, TESObjectREFR * akObject, float afDuration) {
        NativeInvoke::Invoke<ScriptNone>("EffectShader", "Play", self, akObject, afDuration);
    }

    static void Stop(TESEffectShader * self, TESObjectREFR * akObject) {
        NativeInvoke::Invoke<ScriptNone>("EffectShader", "Stop", self, akObject);
    }
}

namespace Faction
{
    static bool CanPayCrimeGold(TESFaction * self) {
        return NativeInvoke::Invoke<bool>("Faction", "CanPayCrimeGold", self);
    }

    static uint GetCrimeGold(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetCrimeGold", self);
    }

    static uint GetCrimeGoldNonViolent(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetCrimeGoldNonViolent", self);
    }

    static uint GetCrimeGoldViolent(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetCrimeGoldViolent", self);
    }

    static uint GetInfamy(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetInfamy", self);
    }

    static uint GetInfamyNonViolent(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetInfamyNonViolent", self);
    }

    static uint GetInfamyViolent(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetInfamyViolent", self);
    }

    static int GetReaction(TESFaction * self, TESFaction * akOther) {
        return NativeInvoke::Invoke<int>("Faction", "GetReaction", self, akOther);
    }

    static uint GetStolenItemValueCrime(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetStolenItemValueCrime", self);
    }

    static uint GetStolenItemValueNoCrime(TESFaction * self) {
        return NativeInvoke::Invoke<uint>("Faction", "GetStolenItemValueNoCrime", self);
    }

    static bool IsFactionInCrimeGroup(TESFaction * self, TESFaction * akOther) {
        return NativeInvoke::Invoke<bool>("Faction", "IsFactionInCrimeGroup", self, akOther);
    }

    static bool IsPlayerExpelled(TESFaction * self) {
        return NativeInvoke::Invoke<bool>("Faction", "IsPlayerExpelled", self);
    }

    static void ModCrimeGold(TESFaction * self, int aiAmount, bool abViolent) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "ModCrimeGold", self, aiAmount, abViolent);
    }

    static void ModReaction(TESFaction * self, TESFaction * akOther, int aiAmount) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "ModReaction", self, akOther, aiAmount);
    }

    static void PlayerPayCrimeGold(TESFaction * self, bool abRemoveStolenItems, bool abGoToJail) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "PlayerPayCrimeGold", self, abRemoveStolenItems, abGoToJail);
    }

    static void SendAssaultAlarm(TESFaction * self) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SendAssaultAlarm", self);
    }

    static bool SendPlayerToJail(TESFaction * self, bool abRemoveInventory, bool abRealJail) {
        return NativeInvoke::Invoke<bool>("Faction", "SendPlayerToJail", self, abRemoveInventory, abRealJail);
    }

    static void SetAlly(TESFaction * self, TESFaction * akOther, bool abSelfIsFriendToOther, bool abOtherIsFriendToSelf) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetAlly", self, akOther, abSelfIsFriendToOther, abOtherIsFriendToSelf);
    }

    static void SetCrimeGold(TESFaction * self, uint aiGold) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetCrimeGold", self, aiGold);
    }

    static void SetCrimeGoldViolent(TESFaction * self, uint aiGold) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetCrimeGoldViolent", self, aiGold);
    }

    static void SetEnemy(TESFaction * self, TESFaction * akOther, bool abSelfIsNeutralToOther, bool abOtherIsNeutralToSelf) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetEnemy", self, akOther, abSelfIsNeutralToOther, abOtherIsNeutralToSelf);
    }

    static void SetPlayerEnemy(TESFaction * self, bool abIsEnemy) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetPlayerEnemy", self, abIsEnemy);
    }

    static void SetPlayerExpelled(TESFaction * self, bool abIsExpelled) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetPlayerExpelled", self, abIsExpelled);
    }

    static void SetReaction(TESFaction * self, TESFaction * akOther, int aiNewValue) {
        NativeInvoke::Invoke<ScriptNone>("Faction", "SetReaction", self, akOther, aiNewValue);
    }
}

namespace GlobalVariable
{
    static float GetValue(TESGlobal * self) {
        return NativeInvoke::Invoke<float>("GlobalVariable", "GetValue", self);
    }

    static void SetValue(TESGlobal * self, float afNewValue) {
        NativeInvoke::Invoke<ScriptNone>("GlobalVariable", "SetValue", self, afNewValue);
    }
}

namespace ImageSpaceModifier
{
    static void Apply(TESImageSpaceModifier * self, float afStrength) {
        NativeInvoke::Invoke<ScriptNone>("ImageSpaceModifier", "Apply", self, afStrength);
    }

    static void ApplyCrossFade(TESImageSpaceModifier * self, float afFadeDuration) {
        NativeInvoke::Invoke<ScriptNone>("ImageSpaceModifier", "ApplyCrossFade", self, afFadeDuration);
    }

    static void PopTo(TESImageSpaceModifier * self, TESImageSpaceModifier * akNewModifier, float afStrength) {
        NativeInvoke::Invoke<ScriptNone>("ImageSpaceModifier", "PopTo", self, akNewModifier, afStrength);
    }

    static void Remove(TESImageSpaceModifier * self) {
        NativeInvoke::Invoke<ScriptNone>("ImageSpaceModifier", "Remove", self);
    }

    static void RemoveCrossFade(float afFadeDuration) {
        NativeInvoke::Invoke<ScriptNone>("ImageSpaceModifier", "RemoveCrossFade", BSScript_StaticFunctionTag, afFadeDuration);
    }
}

namespace LeveledActor
{
    static void AddForm(TESLevCharacter * self, TESForm * apForm, uint aiLevel) {
        NativeInvoke::Invoke<ScriptNone>("LeveledActor", "AddForm", self, apForm, aiLevel);
    }

    static void Revert(TESLevCharacter * self) {
        NativeInvoke::Invoke<ScriptNone>("LeveledActor", "Revert", self);
    }
}

namespace LeveledItem
{
    static void AddForm(TESLevItem * self, TESForm * apForm, uint aiLevel, uint aiCount) {
        NativeInvoke::Invoke<ScriptNone>("LeveledItem", "AddForm", self, apForm, aiLevel, aiCount);
    }

    static void Revert(TESLevItem * self) {
        NativeInvoke::Invoke<ScriptNone>("LeveledItem", "Revert", self);
    }
}

namespace LeveledSpell
{
    static void AddForm(TESLevSpell * self, TESForm * apForm, uint aiLevel) {
        NativeInvoke::Invoke<ScriptNone>("LeveledSpell", "AddForm", self, apForm, aiLevel);
    }

    static void Revert(TESLevSpell * self) {
        NativeInvoke::Invoke<ScriptNone>("LeveledSpell", "Revert", self);
    }
}

namespace ActorBase
{
    static TESClass * GetClass(TESNPC * self) {
        return NativeInvoke::Invoke<TESClass *>("ActorBase", "GetClass", self);
    }

    static int GetDeadCount(TESNPC * self) {
        return NativeInvoke::Invoke<int>("ActorBase", "GetDeadCount", self);
    }

    static BGSListForm * GetGiftFilter(TESNPC * self) {
        return NativeInvoke::Invoke<BGSListForm *>("ActorBase", "GetGiftFilter", self);
    }

    static TESRace * GetRace(TESNPC * self) {
        return NativeInvoke::Invoke<TESRace *>("ActorBase", "GetRace", self);
    }

    static int GetSex(TESNPC * self) {
        return NativeInvoke::Invoke<int>("ActorBase", "GetSex", self);
    }

    static bool IsEssential(TESNPC * self) {
        return NativeInvoke::Invoke<bool>("ActorBase", "IsEssential", self);
    }

    static bool IsInvulnerable(TESNPC * self) {
        return NativeInvoke::Invoke<bool>("ActorBase", "IsInvulnerable", self);
    }

    static bool IsProtected(TESNPC * self) {
        return NativeInvoke::Invoke<bool>("ActorBase", "IsProtected", self);
    }

    static bool IsUnique(TESNPC * self) {
        return NativeInvoke::Invoke<bool>("ActorBase", "IsUnique", self);
    }

    static void SetEssential(TESNPC * self, bool abEssential) {
        NativeInvoke::Invoke<ScriptNone>("ActorBase", "SetEssential", self, abEssential);
    }

    static void SetInvulnerable(TESNPC * self, bool abInvulnerable) {
        NativeInvoke::Invoke<ScriptNone>("ActorBase", "SetInvulnerable", self, abInvulnerable);
    }

    static void SetProtected(TESNPC * self, bool abProtected) {
        NativeInvoke::Invoke<ScriptNone>("ActorBase", "SetProtected", self, abProtected);
    }

    static void SetOutfit(TESNPC * self, BGSOutfit * akOutfit, bool abSleepOutfit) {
        NativeInvoke::Invoke<ScriptNone>("ActorBase", "SetOutfit", self, akOutfit, abSleepOutfit);
    }
}


namespace Cell
{
    static TESNPC * GetActorOwner(TESObjectCELL * self) {
        return NativeInvoke::Invoke<TESNPC *>("Cell", "GetActorOwner", self);
    }

    static TESFaction * GetFactionOwner(TESObjectCELL * self) {
        return NativeInvoke::Invoke<TESFaction *>("Cell", "GetFactionOwner", self);
    }

    static bool IsAttached(TESObjectCELL * self) {
        return NativeInvoke::Invoke<bool>("Cell", "IsAttached", self);
    }

    static bool IsInterior(TESObjectCELL * self) {
        return NativeInvoke::Invoke<bool>("Cell", "IsInterior", self);
    }

    static void Reset(TESObjectCELL * self) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "Reset", self);
    }

    static void SetActorOwner(TESObjectCELL * self, TESNPC * akActor) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetActorOwner", self, akActor);
    }

    static void SetFactionOwner(TESObjectCELL * self, TESFaction * akFaction) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetFactionOwner", self, akFaction);
    }

    static void SetFogColor(TESObjectCELL * self, uint aiNearRed, uint aiNearGreen, uint aiNearBlue, uint aiFarRed, uint aiFarGreen, uint aiFarBlue) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetFogColor", self, aiNearRed, aiNearGreen, aiNearBlue, aiFarRed, aiFarGreen, aiFarBlue);
    }

    static void SetFogPlanes(TESObjectCELL * self, float afNear, float afFar) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetFogPlanes", self, afNear, afFar);
    }

    static void SetFogPower(TESObjectCELL * self, float afPower) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetFogPower", self, afPower);
    }

    static void SetPublic(TESObjectCELL * self, bool abPublic) {
        NativeInvoke::Invoke<ScriptNone>("Cell", "SetPublic", self, abPublic);
    }
}

namespace ObjectReference
{
    static bool Activate(TESObjectREFR * self, TESObjectREFR * akActivator, bool abDefaultProcessingOnly) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Activate", self, akActivator, abDefaultProcessingOnly);
    }

    static void AddInventoryEventFilter(TESObjectREFR * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "AddInventoryEventFilter", self, akFilter);
    }

    static void TetherToHorse(TESObjectREFR * self, TESObjectREFR * akHorse) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "TetherToHorse", self, akHorse);
    }

    static bool AddDependentAnimatedObjectReference(TESObjectREFR * self, TESObjectREFR * akDependent) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "AddDependentAnimatedObjectReference", self, akDependent);
    }

    static bool AddItem(TESObjectREFR * self, TESForm * akItemToAdd, uint aiCount, bool abSilent) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "AddItem", self, akItemToAdd, aiCount, abSilent);
    }

    static void AddToMap(TESObjectREFR * self, bool abAllowFastTravel) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "AddToMap", self, abAllowFastTravel);
    }

    static bool ApplyHavokImpulse(TESObjectREFR * self, float afX, float afY, float afZ, float afMagnitude) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "ApplyHavokImpulse", self, afX, afY, afZ, afMagnitude);
    }

    static void BlockActivation(TESObjectREFR * self, bool abBlocked) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "BlockActivation", self, abBlocked);
    }

    static uint CalculateEncounterLevel(TESObjectREFR * self, uint aiDifficulty) {
        return NativeInvoke::Invoke<uint>("ObjectReference", "CalculateEncounterLevel", self, aiDifficulty);
    }

    static bool CanFastTravelToMarker(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "CanFastTravelToMarker", self);
    }

    static void ClearDestruction(TESObjectREFR * self) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "ClearDestruction", self);
    }

    static void CreateDetectionEvent(TESObjectREFR * self, CActor * akOwner, uint aiSoundLevel) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "CreateDetectionEvent", self, akOwner, aiSoundLevel);
    }

    static bool DamageObject(TESObjectREFR * self, float afDamage) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "DamageObject", self, afDamage);
    }

    static bool Delete(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Delete", self);
    }

    static bool Disable(TESObjectREFR * self, bool abFadeOut) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Disable", self, abFadeOut);
    }

    static void DisableNoWait(TESObjectREFR * self, bool abFadeOut) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "DisableNoWait", self, abFadeOut);
    }

    static bool DropObject(TESObjectREFR * self, TESForm * akObject, uint aiCount) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "DropObject", self, akObject, aiCount);
    }

    static bool Enable(TESObjectREFR * self, bool abFadeIn) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Enable", self, abFadeIn);
    }

    static void EnableFastTravel(TESObjectREFR * self, bool abEnable) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "EnableFastTravel", self, abEnable);
    }

    static void EnableNoWait(TESObjectREFR * self, bool abFadeIn) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "EnableNoWait", self, abFadeIn);
    }

    static bool ForceAddRagdollToWorld(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "ForceAddRagdollToWorld", self);
    }

    static bool ForceRemoveRagdollFromWorld(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "ForceRemoveRagdollFromWorld", self);
    }

    static TESNPC * GetActorOwner(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESNPC *>("ObjectReference", "GetActorOwner", self);
    }

    static float GetAngleX(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetAngleX", self);
    }

    static float GetAngleY(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetAngleY", self);
    }

    static float GetAngleZ(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetAngleZ", self);
    }

    static bool GetAnimationVariableBool(TESObjectREFR * self, char * arVariableName) {
        char *_arVariableName = BSString_Create(arVariableName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "GetAnimationVariableBool", self, &_arVariableName);
        BSString_Free(_arVariableName);
        return result;
    }

    static int GetAnimationVariableInt(TESObjectREFR * self, char * arVariableName) {
        char *_arVariableName = BSString_Create(arVariableName);
        int result = NativeInvoke::Invoke<int>("ObjectReference", "GetAnimationVariableInt", self, &_arVariableName);
        BSString_Free(_arVariableName);
        return result;
    }

    static float GetAnimationVariableFloat(TESObjectREFR * self, char * arVariableName) {
        char *_arVariableName = BSString_Create(arVariableName);
        float result = NativeInvoke::Invoke<float>("ObjectReference", "GetAnimationVariableFloat", self, &_arVariableName);
        BSString_Free(_arVariableName);
        return result;
    }

    static TESForm * GetBaseObject(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESForm *>("ObjectReference", "GetBaseObject", self);
    }

    static int GetCurrentDestructionStage(TESObjectREFR * self) {
        return NativeInvoke::Invoke<int>("ObjectReference", "GetCurrentDestructionStage", self);
    }

    static BGSLocation * GetCurrentLocation(TESObjectREFR * self) {
        return NativeInvoke::Invoke<BGSLocation *>("ObjectReference", "GetCurrentLocation", self);
    }

    static BGSScene * GetCurrentScene(TESObjectREFR * self) {
        return NativeInvoke::Invoke<BGSScene *>("ObjectReference", "GetCurrentScene", self);
    }

    static float GetDistance(TESObjectREFR * self, TESObjectREFR * akOther) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetDistance", self, akOther);
    }

    static BGSLocation * GetEditorLocation(TESObjectREFR * self) {
        return NativeInvoke::Invoke<BGSLocation *>("ObjectReference", "GetEditorLocation", self);
    }

    static TESFaction * GetFactionOwner(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESFaction *>("ObjectReference", "GetFactionOwner", self);
    }

    static float GetHeadingAngle(TESObjectREFR * self, TESObjectREFR * akOther) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetHeadingAngle", self, akOther);
    }

    static float GetHeight(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetHeight", self);
    }

    static uint GetItemCount(TESObjectREFR * self, TESForm * akItem) {
        return NativeInvoke::Invoke<uint>("ObjectReference", "GetItemCount", self, akItem);
    }

    static float GetItemHealthPercent(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetItemHealthPercent", self);
    }

    static TESKey * GetKey(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESKey *>("ObjectReference", "GetKey", self);
    }

    static float GetLength(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetLength", self);
    }

    static TESObjectREFR * GetLinkedRef(TESObjectREFR * self, BGSKeyword * apKeyword) {
        return NativeInvoke::Invoke<TESObjectREFR *>("ObjectReference", "GetLinkedRef", self, apKeyword);
    }

    static int GetLockLevel(TESObjectREFR * self) {
        return NativeInvoke::Invoke<int>("ObjectReference", "GetLockLevel", self);
    }

    static float GetMass(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetMass", self);
    }

    static TESObjectREFR * GetNthLinkedRef(TESObjectREFR * self, int aiLinkedRef) {
        return NativeInvoke::Invoke<TESObjectREFR *>("ObjectReference", "GetNthLinkedRef", self, aiLinkedRef);
    }

    static uint GetOpenState(TESObjectREFR * self) {
        return NativeInvoke::Invoke<uint>("ObjectReference", "GetOpenState", self);
    }

    static TESObjectCELL * GetParentCell(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESObjectCELL *>("ObjectReference", "GetParentCell", self);
    }

    static float GetPositionX(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetPositionX", self);
    }

    static float GetPositionY(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetPositionY", self);
    }

    static float GetPositionZ(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetPositionZ", self);
    }

    static float GetScale(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetScale", self);
    }

    static uint GetTriggerObjectCount(TESObjectREFR * self) {
        return NativeInvoke::Invoke<uint>("ObjectReference", "GetTriggerObjectCount", self);
    }

    static BGSVoiceType * GetVoiceType(TESObjectREFR * self) {
        return NativeInvoke::Invoke<BGSVoiceType *>("ObjectReference", "GetVoiceType", self);
    }

    static float GetWidth(TESObjectREFR * self) {
        return NativeInvoke::Invoke<float>("ObjectReference", "GetWidth", self);
    }

    static TESWorldSpace * GetWorldSpace(TESObjectREFR * self) {
        return NativeInvoke::Invoke<TESWorldSpace *>("ObjectReference", "GetWorldSpace", self);
    }

    static bool HasEffectKeyword(TESObjectREFR * self, BGSKeyword * akKeyword) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "HasEffectKeyword", self, akKeyword);
    }

    static bool HasNode(TESObjectREFR * self, char * asNodeName) {
        char *_asNodeName = BSString_Create(asNodeName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "HasNode", self, &_asNodeName);
        BSString_Free(_asNodeName);
        return result;
    }

    static bool HasRefType(TESObjectREFR * self, BGSLocation * akRefType) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "HasRefType", self, akRefType);
    }

    static void IgnoreFriendlyHits(TESObjectREFR * self, bool abIgnore) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "IgnoreFriendlyHits", self, abIgnore);
    }

    static void InterruptCast(TESObjectREFR * self) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "InterruptCast", self);
    }

    static bool Is3DLoaded(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Is3DLoaded", self);
    }

    static bool IsActivateChild(TESObjectREFR * self, TESObjectREFR * akChild) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsActivateChild", self, akChild);
    }

    static bool IsActivationBlocked(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsActivationBlocked", self);
    }

    static bool IsDisabled(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsDisabled", self);
    }

    static bool IsFurnitureInUse(TESObjectREFR * self, bool abIgnoreReserved) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsFurnitureInUse", self, abIgnoreReserved);
    }

    static bool IsFurnitureMarkerInUse(TESObjectREFR * self, uint aiMarker, bool abIgnoreReserved) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsFurnitureMarkerInUse", self, aiMarker, abIgnoreReserved);
    }

    static bool IsIgnoringFriendlyHits(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsIgnoringFriendlyHits", self);
    }

    static bool IsInDialogueWithPlayer(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsInDialogueWithPlayer", self);
    }

    static bool IsLockBroken(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsLockBroken", self);
    }

    static bool IsLocked(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsLocked", self);
    }

    static bool IsMapMarkerVisible(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "IsMapMarkerVisible", self);
    }

    static void KnockAreaEffect(TESObjectREFR * self, float afMagnitude, float afRadius) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "KnockAreaEffect", self, afMagnitude, afRadius);
    }

    static void Lock(TESObjectREFR * self, bool abLock, bool abAsOwner) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "Lock", self, abLock, abAsOwner);
    }

    static bool MoveTo(TESObjectREFR * self, TESObjectREFR * akTarget, float afXOffset, float afYOffset, float afZOffset, bool abMatchRotation) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "MoveTo", self, akTarget, afXOffset, afYOffset, afZOffset, abMatchRotation);
    }

    static bool MoveToInteractionLocation(TESObjectREFR * self, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "MoveToInteractionLocation", self, akTarget);
    }

    static bool MoveToMyEditorLocation(TESObjectREFR * self) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "MoveToMyEditorLocation", self);
    }

    static bool MoveToNode(TESObjectREFR * self, TESObjectREFR * akTarget, char * asNodeName) {
        char *_asNodeName = BSString_Create(asNodeName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "MoveToNode", self, akTarget, &_asNodeName);
        BSString_Free(_asNodeName);
        return result;
    }

    static TESObjectREFR * PlaceAtMe(TESObjectREFR * self, TESForm * akFormToPlace, uint aiCount, bool abForcePersist, bool abInitiallyDisabled) {
        return NativeInvoke::Invoke<TESObjectREFR *>("ObjectReference", "PlaceAtMe", self, akFormToPlace, aiCount, abForcePersist, abInitiallyDisabled);
    }

    static CActor * PlaceActorAtMe(TESObjectREFR * self, TESNPC * akActorToPlace, uint aiLevelMod, BGSEncounterZone * akZone) {
        return NativeInvoke::Invoke<CActor *>("ObjectReference", "PlaceActorAtMe", self, akActorToPlace, aiLevelMod, akZone);
    }

    static bool PlayAnimation(TESObjectREFR * self, char * asAnimation) {
        char *_asAnimation = BSString_Create(asAnimation);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlayAnimation", self, &_asAnimation);
        BSString_Free(_asAnimation);
        return result;
    }

    static bool PlayAnimationAndWait(TESObjectREFR * self, char * asAnimation, char * asEventName) {
        char *_asAnimation = BSString_Create(asAnimation);
        char *_asEventName = BSString_Create(asEventName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlayAnimationAndWait", self, &_asAnimation, &_asEventName);
        BSString_Free(_asAnimation);
        BSString_Free(_asEventName);
        return result;
    }

    static bool PlayGamebryoAnimation(TESObjectREFR * self, char * asAnimation, bool abStartOver, float afEaseInTime) {
        char *_asAnimation = BSString_Create(asAnimation);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlayGamebryoAnimation", self, &_asAnimation, abStartOver, afEaseInTime);
        BSString_Free(_asAnimation);
        return result;
    }

    static bool PlayImpactEffect(TESObjectREFR * self, BGSImpactDataSet * akImpactEffect, char * asNodeName, float afPickDirX, float afPickDirY, float afPickDirZ, float afPickLength, bool abApplyNodeRotation, bool abUseNodeLocalRotation) {
        char *_asNodeName = BSString_Create(asNodeName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlayImpactEffect", self, akImpactEffect, &_asNodeName, afPickDirX, afPickDirY, afPickDirZ, afPickLength, abApplyNodeRotation, abUseNodeLocalRotation);
        BSString_Free(_asNodeName);
        return result;
    }

    static bool PlaySyncedAnimationSS(TESObjectREFR * self, char * asAnimation1, TESObjectREFR * akObj2, char * asAnimation2) {
        char *_asAnimation1 = BSString_Create(asAnimation1);
        char *_asAnimation2 = BSString_Create(asAnimation2);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlaySyncedAnimationSS", self, &_asAnimation1, akObj2, &_asAnimation2);
        BSString_Free(_asAnimation1);
        BSString_Free(_asAnimation2);
        return result;
    }

    static bool PlaySyncedAnimationAndWaitSS(TESObjectREFR * self, char * asAnimation1, char * asEvent1, TESObjectREFR * akObj2, char * asAnimation2, char * asEvent2) {
        char *_asAnimation1 = BSString_Create(asAnimation1);
        char *_asEvent1 = BSString_Create(asEvent1);
        char *_asAnimation2 = BSString_Create(asAnimation2);
        char *_asEvent2 = BSString_Create(asEvent2);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "PlaySyncedAnimationAndWaitSS", self, &_asAnimation1, &_asEvent1, akObj2, &_asAnimation2, &_asEvent2);
        BSString_Free(_asAnimation1);
        BSString_Free(_asEvent1);
        BSString_Free(_asAnimation2);
        BSString_Free(_asEvent2);
        return result;
    }

    static void PlayTerrainEffect(TESObjectREFR * self, char * asEffectModelName, char * asAttachBoneName) {
        char *_asEffectModelName = BSString_Create(asEffectModelName);
        char *_asAttachBoneName = BSString_Create(asAttachBoneName);
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "PlayTerrainEffect", self, &_asEffectModelName, &_asAttachBoneName);
        BSString_Free(_asEffectModelName);
        BSString_Free(_asAttachBoneName);
    }

    static void ProcessTrapHit(TESObjectREFR * self, TESObjectREFR * akTrap, float afDamage, float afPushback, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, float afStagger) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "ProcessTrapHit", self, akTrap, afDamage, afPushback, afXVel, afYVel, afZVel, afXPos, afYPos, afZPos, aeMaterial, afStagger);
    }

    static void PushActorAway(TESObjectREFR * self, CActor * akActorToPush, float aiKnockbackForce) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "PushActorAway", self, akActorToPush, aiKnockbackForce);
    }

    static void RemoveAllInventoryEventFilters(TESObjectREFR * self) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "RemoveAllInventoryEventFilters", self);
    }

    static void RemoveAllItems(TESObjectREFR * self, TESObjectREFR * akTransferTo, bool abKeepOwnership, bool abRemoveQuestItems) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "RemoveAllItems", self, akTransferTo, abKeepOwnership, abRemoveQuestItems);
    }

    static bool RemoveDependentAnimatedObjectReference(TESObjectREFR * self, TESObjectREFR * akDependent) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "RemoveDependentAnimatedObjectReference", self, akDependent);
    }

    static void RemoveInventoryEventFilter(TESObjectREFR * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "RemoveInventoryEventFilter", self, akFilter);
    }

    static void RemoveItem(TESObjectREFR * self, TESForm * akItemToRemove, uint aiCount, bool abSilent, TESObjectREFR * akOtherContainer) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "RemoveItem", self, akItemToRemove, aiCount, abSilent, akOtherContainer);
    }

    static bool Reset(TESObjectREFR * self, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "Reset", self, akTarget);
    }

    static void Say(TESObjectREFR * self, TESTopic * akTopicToSay, CActor * akActorToSpeakAs, bool abSpeakInPlayersHead) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "Say", self, akTopicToSay, akActorToSpeakAs, abSpeakInPlayersHead);
    }

    static void SendStealAlarm(TESObjectREFR * self, CActor * akThief) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SendStealAlarm", self, akThief);
    }

    static void SetActorCause(TESObjectREFR * self, CActor * akActor) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetActorCause", self, akActor);
    }

    static void SetActorOwner(TESObjectREFR * self, TESNPC * akActorBase) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetActorOwner", self, akActorBase);
    }

    static bool SetAngle(TESObjectREFR * self, float afXAngle, float afYAngle, float afZAngle) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "SetAngle", self, afXAngle, afYAngle, afZAngle);
    }

    static void SetAnimationVariableBool(TESObjectREFR * self, char * arVariableName, bool abNewValue) {
        char *_arVariableName = BSString_Create(arVariableName);
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetAnimationVariableBool", self, &_arVariableName, abNewValue);
        BSString_Free(_arVariableName);
    }

    static void SetAnimationVariableInt(TESObjectREFR * self, char * arVariableName, int aiNewValue) {
        char *_arVariableName = BSString_Create(arVariableName);
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetAnimationVariableInt", self, &_arVariableName, aiNewValue);
        BSString_Free(_arVariableName);
    }

    static void SetAnimationVariableFloat(TESObjectREFR * self, char * arVariableName, float afNewValue) {
        char *_arVariableName = BSString_Create(arVariableName);
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetAnimationVariableFloat", self, &_arVariableName, afNewValue);
        BSString_Free(_arVariableName);
    }

    static void SetDestroyed(TESObjectREFR * self, bool abDestroyed) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetDestroyed", self, abDestroyed);
    }

    static bool SetScale(TESObjectREFR * self, float afScale) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "SetScale", self, afScale);
    }

    static void SetFactionOwner(TESObjectREFR * self, TESFaction * akFaction) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetFactionOwner", self, akFaction);
    }

    static void SetLockLevel(TESObjectREFR * self, uint aiLockLevel) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetLockLevel", self, aiLockLevel);
    }

    static bool SetMotionType(TESObjectREFR * self, uint aeMotionType, bool abAllowActivate) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "SetMotionType", self, aeMotionType, abAllowActivate);
    }

    static void SetNoFavorAllowed(TESObjectREFR * self, bool abNoFavor) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetNoFavorAllowed", self, abNoFavor);
    }

    static void SetOpen(TESObjectREFR * self, bool abOpen) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SetOpen", self, abOpen);
    }

    static bool SetPosition(TESObjectREFR * self, float afX, float afY, float afZ) {
        return NativeInvoke::Invoke<bool>("ObjectReference", "SetPosition", self, afX, afY, afZ);
    }

    static void TranslateTo(TESObjectREFR * self, float afX, float afY, float afZ, float afXAngle, float afYAngle, float afZAngle, float afSpeed, float afMaxRotationSpeed) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "TranslateTo", self, afX, afY, afZ, afXAngle, afYAngle, afZAngle, afSpeed, afMaxRotationSpeed);
    }

    static void SplineTranslateTo(TESObjectREFR * self, float afX, float afY, float afZ, float afXAngle, float afYAngle, float afZAngle, float afTangentMagnitude, float afSpeed, float afMaxRotationSpeed) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SplineTranslateTo", self, afX, afY, afZ, afXAngle, afYAngle, afZAngle, afTangentMagnitude, afSpeed, afMaxRotationSpeed);
    }

    static void SplineTranslateToRefNode(TESObjectREFR * self, TESObjectREFR * arTarget, char * arNodeName, float afTangentMagnitude, float afSpeed, float afMaxRotationSpeed) {
        char *_arNodeName = BSString_Create(arNodeName);
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "SplineTranslateToRefNode", self, arTarget, &_arNodeName, afTangentMagnitude, afSpeed, afMaxRotationSpeed);
        BSString_Free(_arNodeName);
    }

    static void StopTranslation(TESObjectREFR * self) {
        NativeInvoke::Invoke<ScriptNone>("ObjectReference", "StopTranslation", self);
    }

    static bool WaitForAnimationEvent(TESObjectREFR * self, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        bool result = NativeInvoke::Invoke<bool>("ObjectReference", "WaitForAnimationEvent", self, &_asEventName);
        BSString_Free(_asEventName);
        return result;
    }
}


namespace Weapon
{
    static void Fire(TESObjectWEAP * self, TESObjectREFR * akSource, TESAmmo * akAmmo) {
        NativeInvoke::Invoke<ScriptNone>("Weapon", "Fire", self, akSource, akAmmo);
    }
}


namespace Package
{
    static TESQuest * GetOwningQuest(TESPackage * self) {
        return NativeInvoke::Invoke<TESQuest *>("Package", "GetOwningQuest", self);
    }

    static TESPackage * GetTemplate(TESPackage * self) {
        return NativeInvoke::Invoke<TESPackage *>("Package", "GetTemplate", self);
    }
}

namespace Quest
{
    static void CompleteAllObjectives(TESQuest * self) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "CompleteAllObjectives", self);
    }

    static void CompleteQuest(TESQuest * self) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "CompleteQuest", self);
    }

    static void FailAllObjectives(TESQuest * self) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "FailAllObjectives", self);
    }

    static BGSBaseAlias * GetAlias(TESQuest * self, uint aiAliasID) {
        return NativeInvoke::Invoke<BGSBaseAlias *>("Quest", "GetAlias", self, aiAliasID);
    }

    static uint GetCurrentStageID(TESQuest * self) {
        return NativeInvoke::Invoke<uint>("Quest", "GetCurrentStageID", self);
    }

    static bool IsActive(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsActive", self);
    }

    static bool IsCompleted(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsCompleted", self);
    }

    static bool IsObjectiveCompleted(TESQuest * self, uint aiObjective) {
        return NativeInvoke::Invoke<bool>("Quest", "IsObjectiveCompleted", self, aiObjective);
    }

    static bool IsObjectiveDisplayed(TESQuest * self, uint aiObjective) {
        return NativeInvoke::Invoke<bool>("Quest", "IsObjectiveDisplayed", self, aiObjective);
    }

    static bool IsObjectiveFailed(TESQuest * self, uint aiObjective) {
        return NativeInvoke::Invoke<bool>("Quest", "IsObjectiveFailed", self, aiObjective);
    }

    static bool IsRunning(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsRunning", self);
    }

    static bool IsStageDone(TESQuest * self, uint aiStage) {
        return NativeInvoke::Invoke<bool>("Quest", "IsStageDone", self, aiStage);
    }

    static bool IsStarting(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsStarting", self);
    }

    static bool IsStopping(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsStopping", self);
    }

    static bool IsStopped(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "IsStopped", self);
    }

    static void Reset(TESQuest * self) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "Reset", self);
    }

    static void SetActive(TESQuest * self, bool abActive) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "SetActive", self, abActive);
    }

    static bool SetCurrentStageID(TESQuest * self, uint aiStageID) {
        return NativeInvoke::Invoke<bool>("Quest", "SetCurrentStageID", self, aiStageID);
    }

    static void SetObjectiveCompleted(TESQuest * self, uint aiObjective, bool abCompleted) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "SetObjectiveCompleted", self, aiObjective, abCompleted);
    }

    static void SetObjectiveDisplayed(TESQuest * self, uint aiObjective, bool abDisplayed, bool abForce) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "SetObjectiveDisplayed", self, aiObjective, abDisplayed, abForce);
    }

    static void SetObjectiveFailed(TESQuest * self, uint aiObjective, bool abFailed) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "SetObjectiveFailed", self, aiObjective, abFailed);
    }

    static bool Start(TESQuest * self) {
        return NativeInvoke::Invoke<bool>("Quest", "Start", self);
    }

    static void Stop(TESQuest * self) {
        NativeInvoke::Invoke<ScriptNone>("Quest", "Stop", self);
    }

    static bool UpdateCurrentInstanceGlobal(TESQuest * self, TESGlobal * aUpdateGlobal) {
        return NativeInvoke::Invoke<bool>("Quest", "UpdateCurrentInstanceGlobal", self, aUpdateGlobal);
    }
}

namespace Sound
{
    static uint Play(TESSound * self, TESObjectREFR * akSource) {
        return NativeInvoke::Invoke<uint>("Sound", "Play", self, akSource);
    }

    static bool PlayAndWait(TESSound * self, TESObjectREFR * akSource) {
        return NativeInvoke::Invoke<bool>("Sound", "PlayAndWait", self, akSource);
    }

    static void StopInstance(uint aiPlaybackInstance) {
        NativeInvoke::Invoke<ScriptNone>("Sound", "StopInstance", BSScript_StaticFunctionTag, aiPlaybackInstance);
    }

    static void SetInstanceVolume(uint aiPlaybackInstance, float afVolume) {
        NativeInvoke::Invoke<ScriptNone>("Sound", "SetInstanceVolume", BSScript_StaticFunctionTag, aiPlaybackInstance, afVolume);
    }
}

namespace Topic
{
    static void Add(TESTopic * self) {
        NativeInvoke::Invoke<ScriptNone>("Topic", "Add", self);
    }
}

namespace TopicInfo
{
    static TESQuest * GetOwningQuest(TESTopic * self) {
        return NativeInvoke::Invoke<TESQuest *>("TopicInfo", "GetOwningQuest", self);
    }
}

namespace Actor
{
    static void AddPerk(CActor * self, BGSPerk * akPerk) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "AddPerk", self, akPerk);
    }

    static bool AddShout(CActor * self, TESShout * akShout) {
        return NativeInvoke::Invoke<bool>("Actor", "AddShout", self, akShout);
    }

    static bool AddSpell(CActor * self, SpellItem * akSpell, bool abVerbose) {
        return NativeInvoke::Invoke<bool>("Actor", "AddSpell", self, akSpell, abVerbose);
    }

    static void AllowBleedoutDialogue(CActor * self, bool abCanTalk) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "AllowBleedoutDialogue", self, abCanTalk);
    }

    static void AllowPCDialogue(CActor * self, bool abTalk) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "AllowPCDialogue", self, abTalk);
    }

    static void AttachAshPile(CActor * self, TESForm * akAshPileBase) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "AttachAshPile", self, akAshPileBase);
    }

    static void ClearArrested(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ClearArrested", self);
    }

    static void ClearExtraArrows(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ClearExtraArrows", self);
    }

    static void ClearKeepOffsetFromActor(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ClearKeepOffsetFromActor", self);
    }

    static void ClearLookAt(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ClearLookAt", self);
    }

    static void DamageActorValue(CActor * self, char * asValueName, float afDamage) {
        char *_asValueName = BSString_Create(asValueName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "DamageActorValue", self, &_asValueName, afDamage);
        BSString_Free(_asValueName);
    }

    static void DispelAllSpells(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "DispelAllSpells", self);
    }

    static bool DispelSpell(CActor * self, SpellItem * akSpell) {
        return NativeInvoke::Invoke<bool>("Actor", "DispelSpell", self, akSpell);
    }

    static void DoCombatSpellApply(CActor * self, SpellItem * akSpell, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "DoCombatSpellApply", self, akSpell, akTarget);
    }

    static void EnableAI(CActor * self, bool abEnable) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "EnableAI", self, abEnable);
    }

    static void EquipItem(CActor * self, TESForm * akItem, bool abPreventRemoval, bool abSilent) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "EquipItem", self, akItem, abPreventRemoval, abSilent);
    }

    static void EquipShout(CActor * self, TESShout * akShout) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "EquipShout", self, akShout);
    }

    static void EquipSpell(CActor * self, SpellItem * akSpell, uint aiSource) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "EquipSpell", self, akSpell, aiSource);
    }

    static void EvaluatePackage(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "EvaluatePackage", self);
    }

    static void ForceActorValue(CActor * self, char * asValueName, float afNewValue) {
        char *_asValueName = BSString_Create(asValueName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "ForceActorValue", self, &_asValueName, afNewValue);
        BSString_Free(_asValueName);
    }

    static float GetActorValue(CActor * self, char * asValueName) {
        char *_asValueName = BSString_Create(asValueName);
        float result = NativeInvoke::Invoke<float>("Actor", "GetActorValue", self, &_asValueName);
        BSString_Free(_asValueName);
        return result;
    }

    static float GetActorValuePercentage(CActor * self, char * asValueName) {
        char *_asValueName = BSString_Create(asValueName);
        float result = NativeInvoke::Invoke<float>("Actor", "GetActorValuePercentage", self, &_asValueName);
        BSString_Free(_asValueName);
        return result;
    }

    static float GetBaseActorValue(CActor * self, char * asValueName) {
        char *_asValueName = BSString_Create(asValueName);
        float result = NativeInvoke::Invoke<float>("Actor", "GetBaseActorValue", self, &_asValueName);
        BSString_Free(_asValueName);
        return result;
    }

    static uint GetBribeAmount(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetBribeAmount", self);
    }

    static TESFaction * GetCrimeFaction(CActor * self) {
        return NativeInvoke::Invoke<TESFaction *>("Actor", "GetCrimeFaction", self);
    }

    static uint GetCombatState(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetCombatState", self);
    }

    static CActor * GetCombatTarget(CActor * self) {
        return NativeInvoke::Invoke<CActor *>("Actor", "GetCombatTarget", self);
    }

    static TESPackage * GetCurrentPackage(CActor * self) {
        return NativeInvoke::Invoke<TESPackage *>("Actor", "GetCurrentPackage", self);
    }

    static CActor * GetDialogueTarget(CActor * self) {
        return NativeInvoke::Invoke<CActor *>("Actor", "GetDialogueTarget", self);
    }

    static TESShout * GetEquippedShout(CActor * self) {
        return NativeInvoke::Invoke<TESShout *>("Actor", "GetEquippedShout", self);
    }

    static SpellItem * GetEquippedSpell(CActor * self, uint aiSource) {
        return NativeInvoke::Invoke<SpellItem *>("Actor", "GetEquippedSpell", self, aiSource);
    }

    static TESObjectWEAP * GetEquippedWeapon(CActor * self, bool abLeftHand) {
        return NativeInvoke::Invoke<TESObjectWEAP *>("Actor", "GetEquippedWeapon", self, abLeftHand);
    }

    static TESObjectARMO * GetEquippedShield(CActor * self) {
        return NativeInvoke::Invoke<TESObjectARMO *>("Actor", "GetEquippedShield", self);
    }

    static int GetEquippedItemType(CActor * self, uint aiHand) {
        return NativeInvoke::Invoke<int>("Actor", "GetEquippedItemType", self, aiHand);
    }

    static int GetFactionRank(CActor * self, TESFaction * akFaction) {
        return NativeInvoke::Invoke<int>("Actor", "GetFactionRank", self, akFaction);
    }

    static uint GetFactionReaction(CActor * self, CActor * akOther) {
        return NativeInvoke::Invoke<uint>("Actor", "GetFactionReaction", self, akOther);
    }

    static uint GetFlyingState(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetFlyingState", self);
    }

    static int GetGoldAmount(CActor * self) {
        return NativeInvoke::Invoke<int>("Actor", "GetGoldAmount", self);
    }

    static int GetHighestRelationshipRank(CActor * self) {
        return NativeInvoke::Invoke<int>("Actor", "GetHighestRelationshipRank", self);
    }

    static CActor * GetKiller(CActor * self) {
        return NativeInvoke::Invoke<CActor *>("Actor", "GetKiller", self);
    }

    static TESObjectREFR * GetForcedLandingMarker(CActor * self) {
        return NativeInvoke::Invoke<TESObjectREFR *>("Actor", "GetForcedLandingMarker", self);
    }

    static uint GetLevel(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetLevel", self);
    }

    static TESNPC * GetLeveledActorBase(CActor * self) {
        return NativeInvoke::Invoke<TESNPC *>("Actor", "GetLeveledActorBase", self);
    }

    static float GetLightLevel(CActor * self) {
        return NativeInvoke::Invoke<float>("Actor", "GetLightLevel", self);
    }

    static int GetLowestRelationshipRank(CActor * self) {
        return NativeInvoke::Invoke<int>("Actor", "GetLowestRelationshipRank", self);
    }

    static bool GetNoBleedoutRecovery(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "GetNoBleedoutRecovery", self);
    }

    static bool GetPlayerControls(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "GetPlayerControls", self);
    }

    static TESRace * GetRace(CActor * self) {
        return NativeInvoke::Invoke<TESRace *>("Actor", "GetRace", self);
    }

    static int GetRelationshipRank(CActor * self, CActor * akOther) {
        return NativeInvoke::Invoke<int>("Actor", "GetRelationshipRank", self, akOther);
    }

    static uint GetSitState(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetSitState", self);
    }

    static uint GetSleepState(CActor * self) {
        return NativeInvoke::Invoke<uint>("Actor", "GetSleepState", self);
    }

    static float GetVoiceRecoveryTime(CActor * self) {
        return NativeInvoke::Invoke<float>("Actor", "GetVoiceRecoveryTime", self);
    }

    static bool HasAssociation(CActor * self, BGSAssociationType * akAssociation, CActor * akOther) {
        return NativeInvoke::Invoke<bool>("Actor", "HasAssociation", self, akAssociation, akOther);
    }

    static bool HasFamilyRelationship(CActor * self, CActor * akOther) {
        return NativeInvoke::Invoke<bool>("Actor", "HasFamilyRelationship", self, akOther);
    }

    static bool HasLOS(CActor * self, TESObjectREFR * akOther) {
        return NativeInvoke::Invoke<bool>("Actor", "HasLOS", self, akOther);
    }

    static bool HasMagicEffect(CActor * self, EffectSetting * akEffect) {
        return NativeInvoke::Invoke<bool>("Actor", "HasMagicEffect", self, akEffect);
    }

    static bool HasMagicEffectWithKeyword(CActor * self, BGSKeyword * akKeyword) {
        return NativeInvoke::Invoke<bool>("Actor", "HasMagicEffectWithKeyword", self, akKeyword);
    }

    static bool HasParentRelationship(CActor * self, CActor * akOther) {
        return NativeInvoke::Invoke<bool>("Actor", "HasParentRelationship", self, akOther);
    }

    static bool HasPerk(CActor * self, BGSPerk * akPerk) {
        return NativeInvoke::Invoke<bool>("Actor", "HasPerk", self, akPerk);
    }

    static bool HasSpell(CActor * self, TESForm * akForm) {
        return NativeInvoke::Invoke<bool>("Actor", "HasSpell", self, akForm);
    }

    static bool IsAlarmed(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsAlarmed", self);
    }

    static bool IsAlerted(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsAlerted", self);
    }

    static bool IsAllowedToFly(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsAllowedToFly", self);
    }

    static bool IsArrested(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsArrested", self);
    }

    static bool IsArrestingTarget(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsArrestingTarget", self);
    }

    static bool IsBleedingOut(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsBleedingOut", self);
    }

    static bool IsBribed(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsBribed", self);
    }

    static bool IsChild(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsChild", self);
    }

    static bool IsCommandedActor(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsCommandedActor", self);
    }

    static bool IsDead(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsDead", self);
    }

    static bool IsDetectedBy(CActor * self, CActor * akOther) {
        return NativeInvoke::Invoke<bool>("Actor", "IsDetectedBy", self, akOther);
    }

    static bool IsDoingFavor(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsDoingFavor", self);
    }

    static bool IsEquipped(CActor * self, TESForm * akItem) {
        return NativeInvoke::Invoke<bool>("Actor", "IsEquipped", self, akItem);
    }

    static bool IsEssential(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsEssential", self);
    }

    static bool IsFlying(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsFlying", self);
    }

    static bool IsGhost(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsGhost", self);
    }

    static bool IsGuard(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsGuard", self);
    }

    static bool IsHostileToActor(CActor * self, CActor * akActor) {
        return NativeInvoke::Invoke<bool>("Actor", "IsHostileToActor", self, akActor);
    }

    static bool IsInCombat(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsInCombat", self);
    }

    static bool IsInFaction(CActor * self, TESFaction * akFaction) {
        return NativeInvoke::Invoke<bool>("Actor", "IsInFaction", self, akFaction);
    }

    static bool IsInKillMove(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsInKillMove", self);
    }

    static bool IsIntimidated(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsIntimidated", self);
    }

    static bool IsPlayersLastRiddenHorse(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsPlayersLastRiddenHorse", self);
    }

    static bool IsPlayerTeammate(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsPlayerTeammate", self);
    }

    static bool IsRunning(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsRunning", self);
    }

    static bool IsSneaking(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsSneaking", self);
    }

    static bool IsSprinting(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsSprinting", self);
    }

    static bool IsTrespassing(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsTrespassing", self);
    }

    static bool IsUnconscious(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsUnconscious", self);
    }

    static bool IsWeaponDrawn(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "IsWeaponDrawn", self);
    }

    static void KeepOffsetFromActor(CActor * self, CActor * arTarget, float afOffsetX, float afOffsetY, float afOffsetZ, float afOffsetAngleX, float afOffsetAngleY, float afOffsetAngleZ, float afCatchUpRadius, float afFollowRadius) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "KeepOffsetFromActor", self, arTarget, afOffsetX, afOffsetY, afOffsetZ, afOffsetAngleX, afOffsetAngleY, afOffsetAngleZ, afCatchUpRadius, afFollowRadius);
    }

    static void KillSilent(CActor * self, CActor * akKiller) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "KillSilent", self, akKiller);
    }

    static void Kill(CActor * self, CActor * akKiller) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "Kill", self, akKiller);
    }

    static void ModActorValue(CActor * self, char * asValueName, float afAmount) {
        char *_asValueName = BSString_Create(asValueName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "ModActorValue", self, &_asValueName, afAmount);
        BSString_Free(_asValueName);
    }

    static void ModFactionRank(CActor * self, TESFaction * akFaction, int aiMod) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ModFactionRank", self, akFaction, aiMod);
    }

    static bool MoveToPackageLocation(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "MoveToPackageLocation", self);
    }

    static void OpenInventory(CActor * self, bool abForceOpen) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "OpenInventory", self, abForceOpen);
    }

    static bool PathToReference(CActor * self, TESObjectREFR * aTarget, float afWalkRunPercent) {
        return NativeInvoke::Invoke<bool>("Actor", "PathToReference", self, aTarget, afWalkRunPercent);
    }

    static bool PlayIdle(CActor * self, TESIdleForm * akIdle) {
        return NativeInvoke::Invoke<bool>("Actor", "PlayIdle", self, akIdle);
    }

    static bool PlayIdleWithTarget(CActor * self, TESIdleForm * akIdle, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("Actor", "PlayIdleWithTarget", self, akIdle, akTarget);
    }

    static void PlaySubGraphAnimation(CActor * self, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "PlaySubGraphAnimation", self, &_asEventName);
        BSString_Free(_asEventName);
    }

    static void RemoveFromFaction(CActor * self, TESFaction * akFaction) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "RemoveFromFaction", self, akFaction);
    }

    static void RemoveFromAllFactions(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "RemoveFromAllFactions", self);
    }

    static void RemovePerk(CActor * self, BGSPerk * akPerk) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "RemovePerk", self, akPerk);
    }

    static bool RemoveShout(CActor * self, TESShout * akShout) {
        return NativeInvoke::Invoke<bool>("Actor", "RemoveShout", self, akShout);
    }

    static bool RemoveSpell(CActor * self, SpellItem * akSpell) {
        return NativeInvoke::Invoke<bool>("Actor", "RemoveSpell", self, akSpell);
    }

    static void ResetHealthAndLimbs(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ResetHealthAndLimbs", self);
    }

    static bool Resurrect(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "Resurrect", self);
    }

    static void RestoreActorValue(CActor * self, char * asValueName, float afAmount) {
        char *_asValueName = BSString_Create(asValueName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "RestoreActorValue", self, &_asValueName, afAmount);
        BSString_Free(_asValueName);
    }

    static void SendAssaultAlarm(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SendAssaultAlarm", self);
    }

    static void SendTrespassAlarm(CActor * self, CActor * akCriminal) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SendTrespassAlarm", self, akCriminal);
    }

    static void SetActorValue(CActor * self, char * asValueName, float afValue) {
        char *_asValueName = BSString_Create(asValueName);
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetActorValue", self, &_asValueName, afValue);
        BSString_Free(_asValueName);
    }

    static void SetAlert(CActor * self, bool abAlerted) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetAlert", self, abAlerted);
    }

    static void SetAllowFlying(CActor * self, bool abAllowed) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetAllowFlying", self, abAllowed);
    }

    static void SetAlpha(CActor * self, float afTargetAlpha, bool abFade) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetAlpha", self, afTargetAlpha, abFade);
    }

    static void SetAttackActorOnSight(CActor * self, bool abAttackOnSight) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetAttackActorOnSight", self, abAttackOnSight);
    }

    static void SetBribed(CActor * self, bool abBribe) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetBribed", self, abBribe);
    }

    static void SetCrimeFaction(CActor * self, TESFaction * akFaction) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetCrimeFaction", self, akFaction);
    }

    static void SetCriticalStage(CActor * self, uint aiStage) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetCriticalStage", self, aiStage);
    }

    static void SetDoingFavor(CActor * self, bool abDoingFavor) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetDoingFavor", self, abDoingFavor);
    }

    static void SetFactionRank(CActor * self, TESFaction * akFaction, int aiRank) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetFactionRank", self, akFaction, aiRank);
    }

    static void SetGhost(CActor * self, bool abIsGhost) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetGhost", self, abIsGhost);
    }

    static void SetHeadTracking(CActor * self, bool abEnable) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetHeadTracking", self, abEnable);
    }

    static void SetForcedLandingMarker(CActor * self, TESObjectREFR * aMarker) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetForcedLandingMarker", self, aMarker);
    }

    static void SetIntimidated(CActor * self, bool abIntimidate) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetIntimidated", self, abIntimidate);
    }

    static void SetLookAt(CActor * self, TESObjectREFR * akTarget, bool abPathingLookAt) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetLookAt", self, akTarget, abPathingLookAt);
    }

    static void SetNoBleedoutRecovery(CActor * self, bool abAllowed) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetNoBleedoutRecovery", self, abAllowed);
    }

    static void SetNotShowOnStealthMeter(CActor * self, bool abNotShow) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetNotShowOnStealthMeter", self, abNotShow);
    }

    static void SetOutfit(CActor * self, BGSOutfit * akOutfit, bool abSleepOutfit) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetOutfit", self, akOutfit, abSleepOutfit);
    }

    static void SetPlayerControls(CActor * self, bool abControls) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetPlayerControls", self, abControls);
    }

    static void SetPlayerResistingArrest(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetPlayerResistingArrest", self);
    }

    static void SetPlayerTeammate(CActor * self, bool abTeammate, bool abCanDoFavor) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetPlayerTeammate", self, abTeammate, abCanDoFavor);
    }

    static void SetRace(CActor * self, TESRace * akRace) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetRace", self, akRace);
    }

    static void SetRelationshipRank(CActor * self, CActor * akOther, int aiRank) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetRelationshipRank", self, akOther, aiRank);
    }

    static void SetRestrained(CActor * self, bool abRestrained) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetRestrained", self, abRestrained);
    }

    static void SetUnconscious(CActor * self, bool abUnconscious) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetUnconscious", self, abUnconscious);
    }

    static void SetVehicle(CActor * self, TESObjectREFR * akVehicle) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetVehicle", self, akVehicle);
    }

    static void SetVoiceRecoveryTime(CActor * self, float afTime) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "SetVoiceRecoveryTime", self, afTime);
    }

    static void ShowBarterMenu(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "ShowBarterMenu", self);
    }

    static bool ShowGiftMenu(CActor * self, bool abGivingGift, BGSListForm * apFilterList, bool abShowStolenItems, bool abUseFavorPoints) {
        return NativeInvoke::Invoke<bool>("Actor", "ShowGiftMenu", self, abGivingGift, apFilterList, abShowStolenItems, abUseFavorPoints);
    }

    static void StartCannibal(CActor * self, CActor * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "StartCannibal", self, akTarget);
    }

    static void StartCombat(CActor * self, CActor * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "StartCombat", self, akTarget);
    }

    static void StartVampireFeed(CActor * self, CActor * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "StartVampireFeed", self, akTarget);
    }

    static void StopCombat(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "StopCombat", self);
    }

    static void StopCombatAlarm(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "StopCombatAlarm", self);
    }

    static bool TrapSoul(CActor * self, CActor * akTarget) {
        return NativeInvoke::Invoke<bool>("Actor", "TrapSoul", self, akTarget);
    }

    static void UnequipAll(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "UnequipAll", self);
    }

    static void UnequipItem(CActor * self, TESForm * akItem, bool abPreventEquip, bool abSilent) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "UnequipItem", self, akItem, abPreventEquip, abSilent);
    }

    static void UnequipShout(CActor * self, TESShout * akShout) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "UnequipShout", self, akShout);
    }

    static void UnequipSpell(CActor * self, SpellItem * akSpell, uint aiSource) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "UnequipSpell", self, akSpell, aiSource);
    }

    static void UnlockOwnedDoorsInCell(CActor * self) {
        NativeInvoke::Invoke<ScriptNone>("Actor", "UnlockOwnedDoorsInCell", self);
    }

    static bool WillIntimidateSucceed(CActor * self) {
        return NativeInvoke::Invoke<bool>("Actor", "WillIntimidateSucceed", self);
    }

    static bool WornHasKeyword(CActor * self, BGSKeyword * akKeyword) {
        return NativeInvoke::Invoke<bool>("Actor", "WornHasKeyword", self, akKeyword);
    }
}


namespace Alias
{
    static TESQuest * GetOwningQuest(BGSBaseAlias * self) {
        return NativeInvoke::Invoke<TESQuest *>("Alias", "GetOwningQuest", self);
    }

    static bool RegisterForAnimationEvent(BGSBaseAlias * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        bool result = NativeInvoke::Invoke<bool>("Alias", "RegisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
        return result;
    }

    static void RegisterForLOS(BGSBaseAlias * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForLOS", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSGain(BGSBaseAlias * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForSingleLOSGain", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSLost(BGSBaseAlias * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForSingleLOSLost", self, akViewer, akTarget);
    }

    static void RegisterForSingleUpdate(BGSBaseAlias * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForSingleUpdate", self, afInterval);
    }

    static void RegisterForSingleUpdateGameTime(BGSBaseAlias * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForSingleUpdateGameTime", self, afInterval);
    }

    static void RegisterForSleep(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForSleep", self);
    }

    static void RegisterForTrackedStatsEvent(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForTrackedStatsEvent", self);
    }

    static void RegisterForUpdate(BGSBaseAlias * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForUpdate", self, afInterval);
    }

    static void RegisterForUpdateGameTime(BGSBaseAlias * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "RegisterForUpdateGameTime", self, afInterval);
    }

    static void StartObjectProfiling(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "StartObjectProfiling", self);
    }

    static void StopObjectProfiling(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "StopObjectProfiling", self);
    }

    static void UnregisterForAnimationEvent(BGSBaseAlias * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
    }

    static void UnregisterForLOS(BGSBaseAlias * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForLOS", self, akViewer, akTarget);
    }

    static void UnregisterForSleep(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForSleep", self);
    }

    static void UnregisterForTrackedStatsEvent(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForTrackedStatsEvent", self);
    }

    static void UnregisterForUpdate(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForUpdate", self);
    }

    static void UnregisterForUpdateGameTime(BGSBaseAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("Alias", "UnregisterForUpdateGameTime", self);
    }
}

namespace ReferenceAlias
{
    static void AddInventoryEventFilter(BGSRefAlias * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ReferenceAlias", "AddInventoryEventFilter", self, akFilter);
    }

    static void Clear(BGSRefAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("ReferenceAlias", "Clear", self);
    }

    static TESObjectREFR * GetReference(BGSRefAlias * self) {
        return NativeInvoke::Invoke<TESObjectREFR *>("ReferenceAlias", "GetReference", self);
    }

    static void ForceRefTo(BGSRefAlias * self, TESObjectREFR * akNewRef) {
        NativeInvoke::Invoke<ScriptNone>("ReferenceAlias", "ForceRefTo", self, akNewRef);
    }

    static void RemoveAllInventoryEventFilters(BGSRefAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("ReferenceAlias", "RemoveAllInventoryEventFilters", self);
    }

    static void RemoveInventoryEventFilter(BGSRefAlias * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ReferenceAlias", "RemoveInventoryEventFilter", self, akFilter);
    }
}

namespace LocationAlias
{
    static void Clear(BGSLocAlias * self) {
        NativeInvoke::Invoke<ScriptNone>("LocationAlias", "Clear", self);
    }

    static BGSLocation * GetLocation(BGSLocAlias * self) {
        return NativeInvoke::Invoke<BGSLocation *>("LocationAlias", "GetLocation", self);
    }

    static void ForceLocationTo(BGSLocAlias * self, BGSLocation * akNewLocation) {
        NativeInvoke::Invoke<ScriptNone>("LocationAlias", "ForceLocationTo", self, akNewLocation);
    }
}

namespace FormList
{
    static void AddForm(BGSListForm * self, TESForm * apForm) {
        NativeInvoke::Invoke<ScriptNone>("FormList", "AddForm", self, apForm);
    }

    static void RemoveAddedForm(BGSListForm * self, TESForm * apForm) {
        NativeInvoke::Invoke<ScriptNone>("FormList", "RemoveAddedForm", self, apForm);
    }

    static TESForm * GetAt(BGSListForm * self, uint aiIndex) {
        return NativeInvoke::Invoke<TESForm *>("FormList", "GetAt", self, aiIndex);
    }

    static uint GetSize(BGSListForm * self) {
        return NativeInvoke::Invoke<uint>("FormList", "GetSize", self);
    }

    static bool HasForm(BGSListForm * self, TESForm * akForm) {
        return NativeInvoke::Invoke<bool>("FormList", "HasForm", self, akForm);
    }

    static void Revert(BGSListForm * self) {
        NativeInvoke::Invoke<ScriptNone>("FormList", "Revert", self);
    }
}

namespace Spell
{
    static bool Cast(SpellItem * self, TESObjectREFR * akSource, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("Spell", "Cast", self, akSource, akTarget);
    }

    static bool RemoteCast(SpellItem * self, TESObjectREFR * akSource, CActor * akBlameActor, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("Spell", "RemoteCast", self, akSource, akBlameActor, akTarget);
    }

    static bool IsHostile(SpellItem * self) {
        return NativeInvoke::Invoke<bool>("Spell", "IsHostile", self);
    }
}

namespace Scroll
{
    static bool Cast(ScrollItem * self, TESObjectREFR * akSource, TESObjectREFR * akTarget) {
        return NativeInvoke::Invoke<bool>("Scroll", "Cast", self, akSource, akTarget);
    }
}

namespace ActiveMagicEffect
{
    static void AddInventoryEventFilter(ActiveEffect * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "AddInventoryEventFilter", self, akFilter);
    }

    static void Dispel(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "Dispel", self);
    }

    static EffectSetting * GetBaseObject(ActiveEffect * self) {
        return NativeInvoke::Invoke<EffectSetting *>("ActiveMagicEffect", "GetBaseObject", self);
    }

    static CActor * GetCasterActor(ActiveEffect * self) {
        return NativeInvoke::Invoke<CActor *>("ActiveMagicEffect", "GetCasterActor", self);
    }

    static CActor * GetTargetActor(ActiveEffect * self) {
        return NativeInvoke::Invoke<CActor *>("ActiveMagicEffect", "GetTargetActor", self);
    }

    static bool RegisterForAnimationEvent(ActiveEffect * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        bool result = NativeInvoke::Invoke<bool>("ActiveMagicEffect", "RegisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
        return result;
    }

    static void RegisterForLOS(ActiveEffect * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForLOS", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSGain(ActiveEffect * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForSingleLOSGain", self, akViewer, akTarget);
    }

    static void RegisterForSingleLOSLost(ActiveEffect * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForSingleLOSLost", self, akViewer, akTarget);
    }

    static void RegisterForSingleUpdate(ActiveEffect * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForSingleUpdate", self, afInterval);
    }

    static void RegisterForSingleUpdateGameTime(ActiveEffect * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForSingleUpdateGameTime", self, afInterval);
    }

    static void RegisterForSleep(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForSleep", self);
    }

    static void RegisterForTrackedStatsEvent(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForTrackedStatsEvent", self);
    }

    static void RegisterForUpdate(ActiveEffect * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForUpdate", self, afInterval);
    }

    static void RegisterForUpdateGameTime(ActiveEffect * self, float afInterval) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RegisterForUpdateGameTime", self, afInterval);
    }

    static void RemoveAllInventoryEventFilters(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RemoveAllInventoryEventFilters", self);
    }

    static void RemoveInventoryEventFilter(ActiveEffect * self, TESForm * akFilter) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "RemoveInventoryEventFilter", self, akFilter);
    }

    static void StartObjectProfiling(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "StartObjectProfiling", self);
    }

    static void StopObjectProfiling(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "StopObjectProfiling", self);
    }

    static void UnregisterForAnimationEvent(ActiveEffect * self, TESObjectREFR * akSender, char * asEventName) {
        char *_asEventName = BSString_Create(asEventName);
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForAnimationEvent", self, akSender, &_asEventName);
        BSString_Free(_asEventName);
    }

    static void UnregisterForLOS(ActiveEffect * self, CActor * akViewer, TESObjectREFR * akTarget) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForLOS", self, akViewer, akTarget);
    }

    static void UnregisterForSleep(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForSleep", self);
    }

    static void UnregisterForTrackedStatsEvent(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForTrackedStatsEvent", self);
    }

    static void UnregisterForUpdate(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForUpdate", self);
    }

    static void UnregisterForUpdateGameTime(ActiveEffect * self) {
        NativeInvoke::Invoke<ScriptNone>("ActiveMagicEffect", "UnregisterForUpdateGameTime", self);
    }
}

namespace Weather
{
    static void ReleaseOverride() {
        NativeInvoke::Invoke<ScriptNone>("Weather", "ReleaseOverride", BSScript_StaticFunctionTag);
    }

    static TESWeather * GetCurrentWeather() {
        return NativeInvoke::Invoke<TESWeather *>("Weather", "GetCurrentWeather", BSScript_StaticFunctionTag);
    }

    static TESWeather * GetOutgoingWeather() {
        return NativeInvoke::Invoke<TESWeather *>("Weather", "GetOutgoingWeather", BSScript_StaticFunctionTag);
    }

    static float GetCurrentWeatherTransition() {
        return NativeInvoke::Invoke<float>("Weather", "GetCurrentWeatherTransition", BSScript_StaticFunctionTag);
    }

    static uint GetSkyMode() {
        return NativeInvoke::Invoke<uint>("Weather", "GetSkyMode", BSScript_StaticFunctionTag);
    }

    static TESWeather * FindWeather(uint auiType) {
        return NativeInvoke::Invoke<TESWeather *>("Weather", "FindWeather", BSScript_StaticFunctionTag, auiType);
    }

    static void ForceActive(TESWeather * self, bool abOverride) {
        NativeInvoke::Invoke<ScriptNone>("Weather", "ForceActive", self, abOverride);
    }

    static void SetActive(TESWeather * self, bool abOverride, bool abAccelerate) {
        NativeInvoke::Invoke<ScriptNone>("Weather", "SetActive", self, abOverride, abAccelerate);
    }

    static int GetClassification(TESWeather * self) {
        return NativeInvoke::Invoke<int>("Weather", "GetClassification", self);
    }
}

namespace Ingredient
{
    static bool IsHostile(IngredientItem * self) {
        return NativeInvoke::Invoke<bool>("Ingredient", "IsHostile", self);
    }

    static void LearnEffect(IngredientItem * self, uint aiIndex) {
        NativeInvoke::Invoke<ScriptNone>("Ingredient", "LearnEffect", self, aiIndex);
    }
    
    static uint LearnNextEffect(IngredientItem * self) {
        return NativeInvoke::Invoke<uint>("Ingredient", "LearnNextEffect", self);
    }
    
    static void LearnAllEffects(IngredientItem * self) {
        NativeInvoke::Invoke<ScriptNone>("Ingredient", "LearnAllEffects", self);
    }
 }

namespace Potion
{
    static bool IsHostile(AlchemyItem * self) {
        return NativeInvoke::Invoke<bool>("Potion", "IsHostile", self);
    }
}

namespace Enchantment
{
    static bool IsHostile(EnchantmentItem * self) {
        return NativeInvoke::Invoke<bool>("Enchantment", "IsHostile", self);
    }
 }