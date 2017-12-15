/*
	THIS FILE IS A PART OF THE SKYRIM DRAGON SCRIPT PROJECT	
			  (C) Alexander Blade 2011-2012
			http://Alexander.SannyBuilder.com
*/

#pragma once

/*
	All this funcs are from the old obscript engine , they were not used in the original Skyrim scripts ,
	so all of this funcs are deprecated and they may not work or work the way they shudn't . 
	Use 'em careful !
	Note : 
	- All param types are ScriptAny , i don't wanna waste my time with describing deprecated engine =D
	  So u shud look onto the param name and decide by urself whats the type is.
	  But be ware - all ids etc must be passed as class handles . For ex. if param name ObjectID says 
	  that param type shud be id u must pass the class handle of this id instead of id itself .
*/

#include "types.h"
#include "invoke.h"

namespace Obscript
{
	/* new in 1.6.89.0 */

	static double CanFlyHere(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("CanFlyHere", self);
    }

	static double IsRidingMount(TESObjectREFR * self) {  // replacing for IsRidinigHorse 
        return ObscriptInvoke::Invoke("IsRidingMount", self);
    }


	/* before 1.6.89.0 */

	static double GetKnockStateEnum(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetKnockStateEnum", self);
    }

    static double EffectWasDualCast(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("EffectWasDualCast", self);
    }

    static double GetItemHealthPercent(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetItemHealthPercent", self);
    }

    static double IsPoison(TESObjectREFR * self) { /* Is the object a Poison potion */
        return ObscriptInvoke::Invoke("IsPoison", self);
    }

    static double IsUnlockedDoor(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsUnlockedDoor", self);
    }

    static double GetRealHoursPassed() { 
        return ObscriptInvoke::Invoke("GetRealHoursPassed", 0);
    }

    static double IsUndead(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsUndead", self);
    }

    static double IsBeingRidden(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsBeingRidden", self);
    }

    static double GetLightLevel(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLightLevel", self);
    }

    static double IsIgnoringCombat(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsIgnoringCombat", self);
    }

    static double GetCombatGroupMemberCount(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCombatGroupMemberCount", self);
    }

    static double IsPathing(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsPathing", self);
    }

    static double IsExitingInteractionQuick(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsExitingInteractionQuick", self);
    }

    static double IsRecoiling(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsRecoiling", self);
    }

    static double IsStaggered(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsStaggered", self);
    }

    static double IsCommandedActor(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsCommandedActor", self);
    }

    static double IsAllowedToFly(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsAllowedToFly", self);
    }

    static double GetNoBleedoutRecovery(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetNoBleedoutRecovery", self);
    }

    static double GetPathingCurrentSpeed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetPathingCurrentSpeed", self);
    }

    static double GetActivationHeight(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetActivationHeight", self);
    }

    static double GetCurrentShoutVariation(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCurrentShoutVariation", self);
    }

    static double IsLastHostileActor(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsLastHostileActor", self);
    }

    static double IsPowerAttacking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsPowerAttacking", self);
    }

    static double IsAttacking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsAttacking", self);
    }

    static double EPTemperingItemIsEnchanted() { 
        return ObscriptInvoke::Invoke("EPTemperingItemIsEnchanted", 0);
    }

    static double GetArrestingActor(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetArrestingActor", self);
    }

    static double GetArrestedState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetArrestedState", self);
    }

    static double GetIntimidateSuccess(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIntimidateSuccess", self);
    }

    static double GetBribeSuccess(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetBribeSuccess", self);
    }

    static double GetIsHastyLandRequest(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsHastyLandRequest", self);
    }

    static double GetIsCrashLandRequest(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsCrashLandRequest", self);
    }

    static double GetIsInjured(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsInjured", self);
    }

    static double GetLastBumpDirection(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLastBumpDirection", self);
    }

    static double IsUnique(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsUnique", self);
    }

    static double IsInFriendStatewithPlayer(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInFriendStatewithPlayer", self);
    }

    static double IsExitingInstant(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsExitingInstant", self);
    }

    static double HasTwoHandedWeaponEquipped(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("HasTwoHandedWeaponEquipped", self);
    }

    static double IsInFavorState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInFavorState", self);
    }

    static double GetFlyingState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetFlyingState", self);
    }

    static double IsCasting(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsCasting", self);
    }

    static double IsEnteringInteractionQuick(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsEnteringInteractionQuick", self);
    }

    static double IsDualCasting(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsDualCasting", self);
    }

    static double GetMovementSpeed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetMovementSpeed", self);
    }

    static double GetPathingTargetSpeed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetPathingTargetSpeed", self);
    }

    static double HasFamilyRelationshipAny(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("HasFamilyRelationshipAny", self);
    }

    static double GetLowestRelationshipRank(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLowestRelationshipRank", self);
    }

    static double GetHighestRelationshipRank(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetHighestRelationshipRank", self);
    }

    static double GetIsFlying(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsFlying", self);
    }

    static double IsInScene(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInScene", self);
    }

    static double GetMovementDirection(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetMovementDirection", self);
    }

    static double IsBleedingOut(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsBleedingOut", self);
    }

    static double GetAttackState(TESObjectREFR * self) { /* 0 = None, 1 = Draw, 2 = Swing, 3 = Hit, 4 = Next Attack, 5 = Follow Through, 6 = Bash */
        return ObscriptInvoke::Invoke("GetAttackState", self);
    }

    static double IsBlocking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsBlocking", self);
    }

    static double IsSprinting(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsSprinting", self);
    }

    static double HasLoaded3D() { 
        return ObscriptInvoke::Invoke("HasLoaded3D", 0);
    }

    static double GetActorsInHigh() { 
        return ObscriptInvoke::Invoke("GetActorsInHigh", 0);
    }

    static double IsGoreDisabled() { 
        return ObscriptInvoke::Invoke("IsGoreDisabled", 0);
    }

    static double GetXPForNextLevel() { 
        return ObscriptInvoke::Invoke("GetXPForNextLevel", 0);
    }

    static double GetIsLockBroken(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsLockBroken", self);
    }

    static double GetLastHitCritical(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLastHitCritical", self);
    }

    static double GetAllowWorldInteractions(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetAllowWorldInteractions", self);
    }

    static double EPAlchemyGetMakingPoison() { 
        return ObscriptInvoke::Invoke("EPAlchemyGetMakingPoison", 0);
    }

    static double GetDaysInJail(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDaysInJail", self);
    }

    static double GetKillingBlowLimb(TESObjectREFR * self) { /* Which BGSBodyPart::LIMB_ENUM received the killing blow */
        return ObscriptInvoke::Invoke("GetKillingBlowLimb", self);
    }

    static double GetMapMarkerVisible(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetMapMarkerVisible", self);
    }

    static double GetConcussed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetConcussed", self);
    }

    static double IsCarryable(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsCarryable", self);
    }

    static double IsProtected(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsProtected", self);
    }

    static double GetDestructionStage(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDestructionStage", self);
    }

    static double GetActorCrimePlayerEnemy(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetActorCrimePlayerEnemy", self);
    }

    static double GetPlayerTeammateCount() { 
        return ObscriptInvoke::Invoke("GetPlayerTeammateCount", 0);
    }

    static double GetPlayerTeammate(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetPlayerTeammate", self);
    }

    static double GetDialogueEmotionValue(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDialogueEmotionValue", self);
    }

    static double GetDialogueEmotion(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDialogueEmotion", self);
    }

    static double GetHealthPercentage(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetHealthPercentage", self);
    }

    static double IsScenePackageRunning(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsScenePackageRunning", self);
    }

    static double GetPlantedExplosive(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetPlantedExplosive", self);
    }

    static double GetGroupTargetCount(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetGroupTargetCount", self);
    }

    static double GetGroupMemberCount(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetGroupMemberCount", self);
    }

    static double IsBribedbyPlayer(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsBribedbyPlayer", self);
    }

    static double GetCauseofDeath(TESObjectREFR * self) { /* What killed the actor */
        return ObscriptInvoke::Invoke("GetCauseofDeath", self);
    }

    static double IsPC1stPerson() { /* Is the player playing in 1st person mode? */
        return ObscriptInvoke::Invoke("IsPC1stPerson", 0);
    }

    static double GetHitLocation(TESObjectREFR * self) { /* What BGSBodyPart::LIMB_ENUM was hit. -1 = none, 0 = torso, ... */
        return ObscriptInvoke::Invoke("GetHitLocation", self);
    }

    static double GetLastPlayerAction() { 
        return ObscriptInvoke::Invoke("GetLastPlayerAction", 0);
    }

    static double IsChild(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsChild", self);
    }

    static double GetTimeDead(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetTimeDead", self);
    }

    static double IsPlayerMovingIntoNewSpace() { 
        return ObscriptInvoke::Invoke("IsPlayerMovingIntoNewSpace", 0);
    }

    static double IsEssential(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsEssential", self);
    }

    static double IsActor(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsActor", self);
    }

    static double IsPlayersLastRiddenHorse(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsPlayersLastRiddenHorse", self);
    }

    static double GetIgnoreFriendlyHits(TESObjectREFR * self) { /* See if an actor is ignoring friendly hits */
        return ObscriptInvoke::Invoke("GetIgnoreFriendlyHits", self);
    }

    static double IsInDangerousWater(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInDangerousWater", self);
    }

    static double IsFleeing(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsFleeing", self);
    }

    static double IsRidingHorse(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsRidingHorse", self);
    }

    static double GetCombatState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCombatState", self);
    }

    static double GetNoRumors(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetNoRumors", self);
    }

    static double GetIdleDoneOnce() { 
        return ObscriptInvoke::Invoke("GetIdleDoneOnce", 0);
    }

    static double GetTotalPersuasionNumber() { 
        return ObscriptInvoke::Invoke("GetTotalPersuasionNumber", 0);
    }

    static double IsActorAVictim(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsActorAVictim", self);
    }

    static double GetPairedAnimation(TESObjectREFR * self) { /* See if this reference is currently playing a paired animation. */
        return ObscriptInvoke::Invoke("GetPairedAnimation", self);
    }

    static double IsXBox() { 
        return ObscriptInvoke::Invoke("IsXBox", 0);
    }

    static double IsActorUsingATorch(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsActorUsingATorch", self);
    }

    static double GetPlayerAction(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetPlayerAction", self);
    }

    static double IsWaterObject(TESObjectREFR * self) { /* Water condition used for drinking animation. */
        return ObscriptInvoke::Invoke("IsWaterObject", self);
    }

    static double IsInInterior(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInInterior", self);
    }

    static double GetFriendHit(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetFriendHit", self);
    }

    static double IsRunning(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsRunning", self);
    }

    static double IsSneaking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsSneaking", self);
    }

    static double IsLeftUp(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsLeftUp", self);
    }

    static double IsHorseStolen(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsHorseStolen", self);
    }

    static double IsSmallBump(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsSmallBump", self);
    }

    static double IsCloudy() { 
        return ObscriptInvoke::Invoke("IsCloudy", 0);
    }

    static double IsPleasant() { 
        return ObscriptInvoke::Invoke("IsPleasant", 0);
    }

    static double IsTimePassing() { 
        return ObscriptInvoke::Invoke("IsTimePassing", 0);
    }

    static double IsWeaponOut(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsWeaponOut", self);
    }

    static double GetOffersServicesNow(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetOffersServicesNow", self);
    }

    static double GetIsPlayableRace(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsPlayableRace", self);
    }

    static double IsInDialogueWithPlayer(TESObjectREFR * self) { /* True if actor is currently in a dialogue state with player */
        return ObscriptInvoke::Invoke("IsInDialogueWithPlayer", self);
    }

    static double GetRestrained(TESObjectREFR * self) { /* Returns 1 if is restrained. */
        return ObscriptInvoke::Invoke("GetRestrained", self);
    }

    static double GetUnconscious(TESObjectREFR * self) { /* Returns 1 if is unconscious. */
        return ObscriptInvoke::Invoke("GetUnconscious", self);
    }

    static double GetIsGhost(TESObjectREFR * self) { /* Returns 1 if the actor is acting as a 'ghost'. */
        return ObscriptInvoke::Invoke("GetIsGhost", self);
    }

    static double GetVatsTargetHeight() { 
        return ObscriptInvoke::Invoke("GetVatsTargetHeight", 0);
    }

    static double GetClassDefaultMatch() { 
        return ObscriptInvoke::Invoke("GetClassDefaultMatch", 0);
    }

    static double GetCannibal(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCannibal", self);
    }

    static double GetVampireFeed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetVampireFeed", self);
    }

    static double GetPersuasionNumber() { 
        return ObscriptInvoke::Invoke("GetPersuasionNumber", 0);
    }

    static double GetVATSMode() { 
        return ObscriptInvoke::Invoke("GetVATSMode", 0);
    }

    static double GetAnimAction(TESObjectREFR * self) { /* Return the actors current anim action. */
        return ObscriptInvoke::Invoke("GetAnimAction", self);
    }

    static double GetDefaultOpen(TESObjectREFR * self) { /* Returns 1 if this object is open by default. */
        return ObscriptInvoke::Invoke("GetDefaultOpen", self);
    }

    static double GetDestroyed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDestroyed", self);
    }

    static double GetIgnoreCrime() { 
        return ObscriptInvoke::Invoke("GetIgnoreCrime", 0);
    }

    static double GetAmountSoldStolen() { 
        return ObscriptInvoke::Invoke("GetAmountSoldStolen", 0);
    }

    static double IsSwimming(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsSwimming", self);
    }

    static double IsPCAMurderer() { 
        return ObscriptInvoke::Invoke("IsPCAMurderer", 0);
    }

    static double IsPCSleeping() { 
        return ObscriptInvoke::Invoke("IsPCSleeping", 0);
    }

    static double GetDayOfWeek() { 
        return ObscriptInvoke::Invoke("GetDayOfWeek", 0);
    }

    static double GetSitting(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetSitting", self);
    }

    static double GetOpenState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetOpenState", self);
    }

    static double HasFlames(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("HasFlames", self);
    }

    static double CanHaveFlames(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("CanHaveFlames", self);
    }

    static double IsContinuingPackagePCNear(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsContinuingPackagePCNear", self);
    }

    static double GetCurrentWeatherPercent() { 
        return ObscriptInvoke::Invoke("GetCurrentWeatherPercent", 0);
    }

    static double GetWindSpeed() { 
        return ObscriptInvoke::Invoke("GetWindSpeed", 0);
    }

    static double IsInMyOwnedCell(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsInMyOwnedCell", self);
    }

    static double IsTrespassing(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsTrespassing", self);
    }

    static double GetTrespassWarningLevel(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetTrespassWarningLevel", self);
    }

    static double GetCurrentAIProcedure(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCurrentAIProcedure", self);
    }

    static double GetWalkSpeed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetWalkSpeed", self);
    }

    static double IsTalking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsTalking", self);
    }

    static double SameSexAsPC(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("SameSexAsPC", self);
    }

    static double SameRaceAsPC(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("SameRaceAsPC", self);
    }

    static double SameFactionAsPC(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("SameFactionAsPC", self);
    }

    static double GetStaminaPercentage(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetStaminaPercentage", self);
    }

    static double HasBeenEaten(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("HasBeenEaten", self);
    }

    static double IsGuard(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsGuard", self);
    }

    static double IsGreetingPlayer(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsGreetingPlayer", self);
    }

    static double GetActorAggroRadiusViolated(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetActorAggroRadiusViolated", self);
    }

    static double IsIntimidatedbyPlayer(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsIntimidatedbyPlayer", self);
    }

    static double IsIdlePlaying(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsIdlePlaying", self);
    }

    static double IsWaiting(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsWaiting", self);
    }

    static double GetCurrentAIPackage(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCurrentAIPackage", self);
    }

    static double GetWeaponAnimType(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetWeaponAnimType", self);
    }

    static double GetKnockedState(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetKnockedState", self);
    }

    static double IsFacingUp(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsFacingUp", self);
    }

    static double IsShieldOut(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsShieldOut", self);
    }

    static double IsTorchOut(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsTorchOut", self);
    }

    static double IsWeaponMagicOut(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsWeaponMagicOut", self);
    }

    static double GetIsAlerted(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsAlerted", self);
    }

    static double IsRotating(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("IsRotating", self);
    }

    static double GetLevel(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLevel", self);
    }

    static double GetRandomPercent() { 
        return ObscriptInvoke::Invoke("GetRandomPercent", 0);
    }

    static double IsSnowing() { 
        return ObscriptInvoke::Invoke("IsSnowing", 0);
    }

    static double GetLockLevel(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLockLevel", self);
    }

    static double GetIsCreature(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetIsCreature", self);
    }

    static double GetAttacked(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetAttacked", self);
    }

    static double IsRaining() { 
        return ObscriptInvoke::Invoke("IsRaining", 0);
    }

    static double GetAlarmed(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetAlarmed", self);
    }

    static double GetTalkedToPC(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetTalkedToPC", self);
    }

    static double GetSleeping(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetSleeping", self);
    }

    static double GetGold(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetGold", self);
    }

    static double GetDead(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDead", self);
    }

    static double GetClothingValue(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetClothingValue", self);
    }

    static double GetDisease(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDisease", self);
    }

    static double GetDisabled(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetDisabled", self);
    }

    static double IsTurning(TESObjectREFR * self) { /* Is the actor turning? */
        return ObscriptInvoke::Invoke("IsTurning", self);
    }

    static double IsMoving(TESObjectREFR * self) { /* Is the actor moving? */
        return ObscriptInvoke::Invoke("IsMoving", self);
    }

    static double GetScale(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetScale", self);
    }

    static double GetCurrentGameTime(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetCurrentTime", self);
    }

    static double GetSecondsPassed() { 
        return ObscriptInvoke::Invoke("GetSecondsPassed", 0);
    }

    static double GetLocked(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetLocked", self);
    }

    static double GetWantBlocking(TESObjectREFR * self) { 
        return ObscriptInvoke::Invoke("GetWantBlocking", self);
    }

    static double GetDistance(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetDistance", self, ObjectReferenceID);
    }

    static double GetPos(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetPos", self, Axis);
    }

    static double GetAngle(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetAngle", self, Axis);
    }

    static double GetStartingPos(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetStartingPos", self, Axis);
    }

    static double GetStartingAngle(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetStartingAngle", self, Axis);
    }

    static double GetActorValue(TESObjectREFR * self, ScriptAny ActorValue) { /* Get an actor value. [player.getav luck] */
        return ObscriptInvoke::Invoke("GetActorValue", self, ActorValue);
    }

    static double GetLineOfSight(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetLineOfSight", self, ObjectReferenceID);
    }

    static double GetInSameCell(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetInSameCell", self, ObjectReferenceID);
    }

    static double MenuMode(ScriptAny IntegerOptional) { 
        return ObscriptInvoke::Invoke("MenuMode", 0, IntegerOptional);
    }

    static double SameFaction(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("SameFaction", self, Actor);
    }

    static double SameRace(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("SameRace", self, Actor);
    }

    static double SameSex(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("SameSex", self, Actor);
    }

    static double GetDetected(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetDetected", self, Actor);
    }

    static double GetItemCount(TESObjectREFR * self, ScriptAny ObjectID) { 
        return ObscriptInvoke::Invoke("GetItemCount", self, ObjectID);
    }

    static double GetScriptVariable(ScriptAny ObjectReferenceID, ScriptAny VariableName) { 
        return ObscriptInvoke::Invoke("GetScriptVariable", 0, ObjectReferenceID, VariableName);
    }

    static double GetQuestRunning(ScriptAny Quest) { 
        return ObscriptInvoke::Invoke("GetQuestRunning", 0, Quest);
    }

    static double GetStage(ScriptAny Quest) { 
        return ObscriptInvoke::Invoke("GetStage", 0, Quest);
    }

    static double GetStageDone(ScriptAny Quest, ScriptAny Stage) { 
        return ObscriptInvoke::Invoke("GetStageDone", 0, Quest, Stage);
    }

    static double GetFactionRankDifference(TESObjectREFR * self, ScriptAny Faction, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetFactionRankDifference", self, Faction, Actor);
    }

    static double GetShouldAttack(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetShouldAttack", self, Actor);
    }

    static double GetInCell(TESObjectREFR * self, ScriptAny Cell) { 
        return ObscriptInvoke::Invoke("GetInCell", self, Cell);
    }

    static double GetIsClass(TESObjectREFR * self, ScriptAny Class) { 
        return ObscriptInvoke::Invoke("GetIsClass", self, Class);
    }

    static double GetIsRace(TESObjectREFR * self, ScriptAny Race) { 
        return ObscriptInvoke::Invoke("GetIsRace", self, Race);
    }

    static double GetIsSex(TESObjectREFR * self, ScriptAny Sex) { 
        return ObscriptInvoke::Invoke("GetIsSex", self, Sex);
    }

    static double GetInFaction(TESObjectREFR * self, ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetInFaction", self, Faction);
    }

    static double GetIsID(TESObjectREFR * self, ScriptAny ObjectID) { 
        return ObscriptInvoke::Invoke("GetIsID", self, ObjectID);
    }

    static double GetFactionRank(TESObjectREFR * self, ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetFactionRank", self, Faction);
    }

    static double GetGlobalValue(ScriptAny Global) { 
        return ObscriptInvoke::Invoke("GetGlobalValue", 0, Global);
    }

    static double GetQuestVariable(ScriptAny Quest, ScriptAny VariableName) { 
        return ObscriptInvoke::Invoke("GetQuestVariable", 0, Quest, VariableName);
    }

    static double GetDeadCount(ScriptAny ActorBase) { 
        return ObscriptInvoke::Invoke("GetDeadCount", 0, ActorBase);
    }

    static double GetPlayerControlsDisabled(int a1, int a2) { /* 8 optional (0/1) values. movement|fighting|pov|looking|sneaking|menu|activate|journal ex: 1 0 0 1 0 0 0 0 */
        return ObscriptInvoke::Invoke("GetPlayerControlsDisabled", 0, a1, a2);
    }

    static double GetHeadingAngle(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetHeadingAngle", self, ObjectReferenceID);
    }

    static double IsWeaponSkillType(TESObjectREFR * self, ScriptAny ActorValue) { 
        return ObscriptInvoke::Invoke("IsWeaponSkillType", self, ActorValue);
    }

    static double IsPlayerInRegion(ScriptAny Region) { 
        return ObscriptInvoke::Invoke("IsPlayerInRegion", 0, Region);
    }

    static double GetCrime(TESObjectREFR * self, ScriptAny Actor, ScriptAny CrimeTypeoptional) { 
        return ObscriptInvoke::Invoke("GetCrime", self, Actor, CrimeTypeoptional);
    }

    static double GetPCIsClass(ScriptAny Class) { 
        return ObscriptInvoke::Invoke("GetPCIsClass", 0, Class);
    }

    static double GetPCIsRace(ScriptAny Race) { 
        return ObscriptInvoke::Invoke("GetPCIsRace", 0, Race);
    }

    static double GetPCIsSex(ScriptAny Sex) { 
        return ObscriptInvoke::Invoke("GetPCIsSex", 0, Sex);
    }

    static double GetPCInFaction(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetPCInFaction", 0, Faction);
    }

    static double GetIsReference(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetIsReference", self, ObjectReferenceID);
    }

    static double GetIsCurrentWeather(ScriptAny WeatherID) { 
        return ObscriptInvoke::Invoke("GetIsCurrentWeather", 0, WeatherID);
    }

    static double GetIsCrimeFaction(TESObjectREFR * self, ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetIsCrimeFaction", self, Faction);
    }

    static double GetIsCurrentPackage(TESObjectREFR * self, ScriptAny Package) { 
        return ObscriptInvoke::Invoke("GetIsCurrentPackage", self, Package);
    }

    static double IsCurrentFurnitureRef(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("IsCurrentFurnitureRef", self, ObjectReferenceID);
    }

    static double IsCurrentFurnitureObj(TESObjectREFR * self, ScriptAny Furniture) { 
        return ObscriptInvoke::Invoke("IsCurrentFurnitureObj", self, Furniture);
    }

    static double GetTalkedToPCParam(ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetTalkedToPCParam", 0, Actor);
    }

    static double HasSameEditorLocAsRef(TESObjectREFR * self, ScriptAny TESObjectREFR, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("HasSameEditorLocAsRef", self, TESObjectREFR, Keyword);
    }

    static double HasSameEditorLocAsRefAlias(TESObjectREFR * self, ScriptAny QuestAlias, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("HasSameEditorLocAsRefAlias", self, QuestAlias, Keyword);
    }

    static double GetEquipped(TESObjectREFR * self, ScriptAny ObjectID) { 
        return ObscriptInvoke::Invoke("GetEquipped", self, ObjectID);
    }

    static double GetPCExpelled(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetPCExpelled", 0, Faction);
    }

    static double GetPCFactionMurder(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetPCFactionMurder", 0, Faction);
    }

    static double GetPCEnemyofFaction(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetPCEnemyofFaction", 0, Faction);
    }

    static double GetPCFactionAttack(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetPCFactionAttack", 0, Faction);
    }

    static double HasMagicEffect(TESObjectREFR * self, ScriptAny MagicEffect) { 
        return ObscriptInvoke::Invoke("HasMagicEffect", self, MagicEffect);
    }

    static double IsSpellTarget(TESObjectREFR * self, ScriptAny MagicItem) { 
        return ObscriptInvoke::Invoke("IsSpellTarget", self, MagicItem);
    }

    static double GetIsClassDefault(ScriptAny Class) { 
        return ObscriptInvoke::Invoke("GetIsClassDefault", 0, Class);
    }

    static double GetInCellParam(ScriptAny Cell, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("GetInCellParam", 0, Cell, ObjectReferenceID);
    }

    static double GetIsUsedItem(ScriptAny ObjectID) { 
        return ObscriptInvoke::Invoke("GetIsUsedItem", 0, ObjectID);
    }

    static double GetIsUsedItemType(ScriptAny FormType) { 
        return ObscriptInvoke::Invoke("GetIsUsedItemType", 0, FormType);
    }

    static double IsScenePlaying(ScriptAny Scene) { 
        return ObscriptInvoke::Invoke("IsScenePlaying", 0, Scene);
    }

    static double GetLocationCleared(ScriptAny Location) { 
        return ObscriptInvoke::Invoke("GetLocationCleared", 0, Location);
    }

    static double HasAssociationType(TESObjectREFR * self, ScriptAny Actor, ScriptAny AssociationType) { 
        return ObscriptInvoke::Invoke("HasAssociationType", self, Actor, AssociationType);
    }

    static double HasFamilyRelationship(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("HasFamilyRelationship", self, Actor);
    }

    static double HasParentRelationship(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("HasParentRelationship", self, Actor);
    }

    static double IsWarningAbout(TESObjectREFR * self, ScriptAny FormList) { 
        return ObscriptInvoke::Invoke("IsWarningAbout", self, FormList);
    }

    static double HasSpell(TESObjectREFR * self, ScriptAny SpellItem) { 
        return ObscriptInvoke::Invoke("HasSpell", self, SpellItem);
    }

    static double GetBaseActorValue(TESObjectREFR * self, ScriptAny ActorValue) { /* Get a base actor value. [player.getbaseav luck] */
        return ObscriptInvoke::Invoke("GetBaseActorValue", self, ActorValue);
    }

    static double IsOwner(TESObjectREFR * self, ScriptAny Owneroptional) { /* get the ownership of the ref */
        return ObscriptInvoke::Invoke("IsOwner", self, Owneroptional);
    }

    static double IsCellOwner(TESObjectREFR * self, ScriptAny Cell, ScriptAny Owneroptional) { /* get the ownership of the ref */
        return ObscriptInvoke::Invoke("IsCellOwner", self, Cell, Owneroptional);
    }

    static double IsInCombat(TESObjectREFR * self, ScriptAny IntegerOptional) { 
        return ObscriptInvoke::Invoke("IsInCombat", self, IntegerOptional);
    }

    static double GetInWorldspace(TESObjectREFR * self, ScriptAny WorldSpace) { 
        return ObscriptInvoke::Invoke("GetInWorldspace", self, WorldSpace);
    }

    static double GetPCMiscStat(ScriptAny MiscellaneousStat) { 
        return ObscriptInvoke::Invoke("GetPCMiscStat", 0, MiscellaneousStat);
    }

    static double GetWithinPackageLocation(TESObjectREFR * self, ScriptAny PackageDataLocation) { 
        return ObscriptInvoke::Invoke("GetWithinPackageLocation", self, PackageDataLocation);
    }

    static double GetInCurrentLoc(TESObjectREFR * self, ScriptAny Location) { 
        return ObscriptInvoke::Invoke("GetInCurrentLoc", self, Location);
    }

    static double GetInCurrentLocAlias(TESObjectREFR * self, ScriptAny QuestAlias) { 
        return ObscriptInvoke::Invoke("GetInCurrentLocAlias", self, QuestAlias);
    }

    static double HasLinkedRef(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("HasLinkedRef", self, Keyword);
    }

    static double GetStolenItemValueNoCrime(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetStolenItemValueNoCrime", 0, Faction);
    }

    static double IsPlayerActionActive(ScriptAny Integer) { 
        return ObscriptInvoke::Invoke("IsPlayerActionActive", 0, Integer);
    }

    static double IsTalkingActivatorActor(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("IsTalkingActivatorActor", self, Actor);
    }

    static double IsInList(TESObjectREFR * self, ScriptAny FormList) { 
        return ObscriptInvoke::Invoke("IsInList", self, FormList);
    }

    static double GetStolenItemValue(ScriptAny Faction) { 
        return ObscriptInvoke::Invoke("GetStolenItemValue", 0, Faction);
    }

    static double GetCrimeGoldViolent(TESObjectREFR * self, ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetCrimeGoldViolent", self, FactionOptional);
    }

    static double GetCrimeGoldNonviolent(TESObjectREFR * self, ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetCrimeGoldNonviolent", self, FactionOptional);
    }

    static double HasShout(TESObjectREFR * self, ScriptAny Shout) { 
        return ObscriptInvoke::Invoke("HasShout", self, Shout);
    }

    static double GetHasNote(ScriptAny Note) { 
        return ObscriptInvoke::Invoke("GetHasNote", 0, Note);
    }

    static double IsLimbGone(TESObjectREFR * self, ScriptAny Integer) { /* Is BGSBodyPart::LIMB_ENUM been dismembered */
        return ObscriptInvoke::Invoke("IsLimbGone", self, Integer);
    }

    static double IsWeaponInList(TESObjectREFR * self, ScriptAny FormList) { /* Is the current weapon in the form list */
        return ObscriptInvoke::Invoke("IsWeaponInList", self, FormList);
    }

    static double GetRelationshipRank(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetRelationshipRank", self, Actor);
    }

    static double GetVATSValue(ScriptAny Integer, ScriptAny IntegerOptional) { 
        return ObscriptInvoke::Invoke("GetVATSValue", 0, Integer, IntegerOptional);
    }

    static double IsKiller(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("IsKiller", self, Actor);
    }

    static double IsKillerObject(TESObjectREFR * self, ScriptAny FormList) { 
        return ObscriptInvoke::Invoke("IsKillerObject", self, FormList);
    }

    static double GetFactionCombatReaction(ScriptAny Faction1, ScriptAny Faction2) { 
        return ObscriptInvoke::Invoke("GetFactionCombatReaction", 0, Faction1, Faction2);
    }

    static double Exists(TESObjectREFR * self, ScriptAny ObjectReferenceID) { 
        return ObscriptInvoke::Invoke("Exists", self, ObjectReferenceID);
    }

    static double GetIsVoiceType(TESObjectREFR * self, ScriptAny VoiceType) { 
        return ObscriptInvoke::Invoke("GetIsVoiceType", self, VoiceType);
    }

    static double GetIsObjectType(TESObjectREFR * self, ScriptAny FormType) { 
        return ObscriptInvoke::Invoke("GetIsObjectType", self, FormType);
    }

    static double GetIsCreatureType(TESObjectREFR * self, ScriptAny Integer) { 
        return ObscriptInvoke::Invoke("GetIsCreatureType", self, Integer);
    }

    static double GetInCurrentLocFormList(TESObjectREFR * self, ScriptAny FormList) { 
        return ObscriptInvoke::Invoke("GetInCurrentLocFormList", self, FormList);
    }

    static double GetInZone(TESObjectREFR * self, ScriptAny EncounterZone) { 
        return ObscriptInvoke::Invoke("GetInZone", self, EncounterZone);
    }

    static double GetVelocity(TESObjectREFR * self, ScriptAny Axis) { /* Gets Velocity on a reference */
        return ObscriptInvoke::Invoke("GetVelocity", self, Axis);
    }

    static double GetGraphVariableFloat(TESObjectREFR * self, ScriptAny String) { 
        return ObscriptInvoke::Invoke("GetGraphVariableFloat", self, String);
    }

    static double HasPerk(TESObjectREFR * self, ScriptAny Perk) { 
        return ObscriptInvoke::Invoke("HasPerk", self, Perk);
    }

    static double GetFactionRelation(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetFactionRelation", self, Actor);
    }

    static double IsLastIdlePlayed(TESObjectREFR * self, ScriptAny IdleForm) { 
        return ObscriptInvoke::Invoke("IsLastIdlePlayed", self, IdleForm);
    }

    static double GetCrimeGold(TESObjectREFR * self, ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetCrimeGold", self, FactionOptional);
    }

    static double IsPlayerGrabbedRef(ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("IsPlayerGrabbedRef", 0, TESObjectREFR);
    }

    static double GetKeywordItemCount(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("GetKeywordItemCount", self, Keyword);
    }

    static double GetIsAlignment(TESObjectREFR * self, ScriptAny Alignment) { 
        return ObscriptInvoke::Invoke("GetIsAlignment", self, Alignment);
    }

    static double GetThreatRatio(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetThreatRatio", self, Actor);
    }

    static double GetIsUsedItemEquipType(TESObjectREFR * self, ScriptAny EquipType) { 
        return ObscriptInvoke::Invoke("GetIsUsedItemEquipType", self, EquipType);
    }

    static double PlayerKnows(ScriptAny KnowableForm) { 
        return ObscriptInvoke::Invoke("PlayerKnows", 0, KnowableForm);
    }

    static double GetPermanentActorValue(TESObjectREFR * self, ScriptAny ActorValue) { /* Get an actor value ignoring temporary modifiers. [player.getav luck] */
        return ObscriptInvoke::Invoke("GetPermanentActorValue", self, ActorValue);
    }

    static double CanPayCrimeGold(TESObjectREFR * self, ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("CanPayCrimeGold", self, FactionOptional);
    }

    static double EPAlchemyEffectHasKeyword(ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("EPAlchemyEffectHasKeyword", 0, Keyword);
    }

    static double IsCombatTarget(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("IsCombatTarget", self, Actor);
    }

    static double GetVATSRightAreaFree(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSRightAreaFree", self, TESObjectREFR);
    }

    static double GetVATSLeftAreaFree(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSLeftAreaFree", self, TESObjectREFR);
    }

    static double GetVATSBackAreaFree(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSBackAreaFree", self, TESObjectREFR);
    }

    static double GetVATSFrontAreaFree(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSFrontAreaFree", self, TESObjectREFR);
    }

    static double GetVATSRightTargetVisible(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSRightTargetVisible", self, TESObjectREFR);
    }

    static double GetVATSLeftTargetVisible(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSLeftTargetVisible", self, TESObjectREFR);
    }

    static double GetVATSBackTargetVisible(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSBackTargetVisible", self, TESObjectREFR);
    }

    static double GetVATSFrontTargetVisible(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetVATSFrontTargetVisible", self, TESObjectREFR);
    }

    static double IsInCriticalStage(TESObjectREFR * self, ScriptAny CriticalStage) { 
        return ObscriptInvoke::Invoke("IsInCriticalStage", self, CriticalStage);
    }

    static double GetInfamy(ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetInfamy", 0, FactionOptional);
    }

    static double GetInfamyViolent(ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetInfamyViolent", 0, FactionOptional);
    }

    static double GetInfamyNonViolent(ScriptAny FactionOptional) { 
        return ObscriptInvoke::Invoke("GetInfamyNonViolent", 0, FactionOptional);
    }

    static double GetQuestCompleted(ScriptAny Quest) { 
        return ObscriptInvoke::Invoke("GetQuestCompleted", 0, Quest);
    }

    static double IsSceneActionComplete(ScriptAny Scene, ScriptAny Integer) { 
        return ObscriptInvoke::Invoke("IsSceneActionComplete", 0, Scene, Integer);
    }

    static double GetSpellUsageNum(TESObjectREFR * self, ScriptAny MagicItem) { 
        return ObscriptInvoke::Invoke("GetSpellUsageNum", self, MagicItem);
    }

    static double HasKeyword(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("HasKeyword", self, Keyword);
    }

    static double HasRefType(TESObjectREFR * self, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("HasRefType", self, RefType);
    }

    static double LocationHasKeyword(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("LocationHasKeyword", self, Keyword);
    }

    static double LocationHasRefType(TESObjectREFR * self, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("LocationHasRefType", self, RefType);
    }

    static double GetIsEditorLocation(TESObjectREFR * self, ScriptAny Location) { 
        return ObscriptInvoke::Invoke("GetIsEditorLocation", self, Location);
    }

    static double GetIsAliasRef(TESObjectREFR * self, ScriptAny QuestAlias) { 
        return ObscriptInvoke::Invoke("GetIsAliasRef", self, QuestAlias);
    }

    static double GetIsEditorLocAlias(TESObjectREFR * self, ScriptAny QuestAlias) { 
        return ObscriptInvoke::Invoke("GetIsEditorLocAlias", self, QuestAlias);
    }

    static double HasEquippedSpell(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("HasEquippedSpell", self, CastingSource);
    }

    static double GetCurrentCastingType(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("GetCurrentCastingType", self, CastingSource);
    }

    static double GetCurrentDeliveryType(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("GetCurrentDeliveryType", self, CastingSource);
    }

    static double GetEventData(ScriptAny EventFunction, ScriptAny EventMember) { 
        return ObscriptInvoke::Invoke("GetEventData", 0, EventFunction, EventMember);
    }

    static double IsCloserToAThanB(TESObjectREFR * self, TESObjectREFR * obja, TESObjectREFR * objb) { 
        return ObscriptInvoke::Invoke("IsCloserToAThanB", self, obja, objb);
    }

    static double GetEquippedShout(TESObjectREFR * self, ScriptAny Shout) { 
        return ObscriptInvoke::Invoke("GetEquippedShout", self, Shout);
    }

    static double GetRelativeAngle(TESObjectREFR * self, ScriptAny ObjectReferenceID, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetRelativeAngle", self, ObjectReferenceID, Axis);
    }

    static double GetRefTypeDeadCount(ScriptAny Location, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("GetRefTypeDeadCount", 0, Location, RefType);
    }

    static double GetRefTypeAliveCount(ScriptAny Location, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("GetRefTypeAliveCount", 0, Location, RefType);
    }

    static double IsCurrentSpell(TESObjectREFR * self, ScriptAny SpellItem, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("IsCurrentSpell", self, SpellItem, CastingSource);
    }

    static double SpellHasKeyword(TESObjectREFR * self, ScriptAny CastingSource, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("SpellHasKeyword", self, CastingSource, Keyword);
    }

    static double GetEquippedItemType(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("GetEquippedItemType", self, CastingSource);
    }

    static double GetLocationAliasCleared(ScriptAny QuestAlias) { 
        return ObscriptInvoke::Invoke("GetLocationAliasCleared", 0, QuestAlias);
    }

    static double GetLocAliasRefTypeDeadCount(ScriptAny QuestAlias, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("GetLocAliasRefTypeDeadCount", 0, QuestAlias, RefType);
    }

    static double GetLocAliasRefTypeAliveCount(ScriptAny QuestAlias, ScriptAny RefType) { 
        return ObscriptInvoke::Invoke("GetLocAliasRefTypeAliveCount", 0, QuestAlias, RefType);
    }

    static double IsWardState(TESObjectREFR * self, ScriptAny WardState) { 
        return ObscriptInvoke::Invoke("IsWardState", self, WardState);
    }

    static double IsInSameCurrentLocAsRef(TESObjectREFR * self, ScriptAny TESObjectREFR, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("IsInSameCurrentLocAsRef", self, TESObjectREFR, Keyword);
    }

    static double IsInSameCurrentLocAsRefAlias(TESObjectREFR * self, ScriptAny QuestAlias, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("IsInSameCurrentLocAsRefAlias", self, QuestAlias, Keyword);
    }

    static double LocAliasIsLocation(ScriptAny QuestAlias, ScriptAny Location) { 
        return ObscriptInvoke::Invoke("LocAliasIsLocation", 0, QuestAlias, Location);
    }

    static double GetKeywordDataForLocation(ScriptAny Location, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("GetKeywordDataForLocation", 0, Location, Keyword);
    }

    static double GetKeywordDataForAlias(ScriptAny QuestAlias, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("GetKeywordDataForAlias", 0, QuestAlias, Keyword);
    }

    static double LocAliasHasKeyword(ScriptAny QuestAlias, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("LocAliasHasKeyword", 0, QuestAlias, Keyword);
    }

    static double IsNullPackageData(TESObjectREFR * self, ScriptAny PackageDataPossiblyNull) { 
        return ObscriptInvoke::Invoke("IsNullPackageData", self, PackageDataPossiblyNull);
    }

    static double GetNumericPackageData(TESObjectREFR * self, ScriptAny PackageDataNumeric) { 
        return ObscriptInvoke::Invoke("GetNumericPackageData", self, PackageDataNumeric);
    }

    static double IsFurnitureAnimType(TESObjectREFR * self, ScriptAny FurnitureAnimType) { 
        return ObscriptInvoke::Invoke("IsFurnitureAnimType", self, FurnitureAnimType);
    }

    static double IsFurnitureEntryType(TESObjectREFR * self, ScriptAny FurnitureEntryType) { 
        return ObscriptInvoke::Invoke("IsFurnitureEntryType", self, FurnitureEntryType);
    }

    static double HasAssociationTypeAny(TESObjectREFR * self, ScriptAny AssociationType) { 
        return ObscriptInvoke::Invoke("HasAssociationTypeAny", self, AssociationType);
    }

    static double GetPathingTargetOffset(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetPathingTargetOffset", self, Axis);
    }

    static double GetPathingTargetAngleOffset(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetPathingTargetAngleOffset", self, Axis);
    }

    static double GetPathingTargetSpeedAngle(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetPathingTargetSpeedAngle", self, Axis);
    }

    static double GetInContainer(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetInContainer", self, TESObjectREFR);
    }

    static double IsLocationLoaded(ScriptAny Location) { 
        return ObscriptInvoke::Invoke("IsLocationLoaded", 0, Location);
    }

    static double IsLocAliasLoaded(ScriptAny QuestAlias) { 
        return ObscriptInvoke::Invoke("IsLocAliasLoaded", 0, QuestAlias);
    }

    static double GetVMQuestVariable(ScriptAny Quest, ScriptAny VMVariableName) { 
        return ObscriptInvoke::Invoke("GetVMQuestVariable", 0, Quest, VMVariableName);
    }

    static double GetVMScriptVariable(ScriptAny ObjectReferenceID, ScriptAny VMVariableName) { 
        return ObscriptInvoke::Invoke("GetVMScriptVariable", 0, ObjectReferenceID, VMVariableName);
    }

    static double GetWithinDistance(TESObjectREFR * self, ScriptAny ObjectReferenceID, ScriptAny Float) { 
        return ObscriptInvoke::Invoke("GetWithinDistance", self, ObjectReferenceID, Float);
    }

    static double GetActorValuePercent(TESObjectREFR * self, ScriptAny ActorValue) { 
        return ObscriptInvoke::Invoke("GetActorValuePercent", self, ActorValue);
    }

    static double IsInFurnitureState(TESObjectREFR * self, ScriptAny FurnitureAnimType) { 
        return ObscriptInvoke::Invoke("IsInFurnitureState", self, FurnitureAnimType);
    }

    static double IsLinkedTo(TESObjectREFR * self, ScriptAny TESObjectREFR, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("IsLinkedTo", self, TESObjectREFR, Keyword);
    }

    static double GetKeywordDataForCurrentLocation(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("GetKeywordDataForCurrentLocation", self, Keyword);
    }

    static double GetInSharedCrimeFaction(TESObjectREFR * self, ScriptAny TESObjectREFR) { 
        return ObscriptInvoke::Invoke("GetInSharedCrimeFaction", self, TESObjectREFR);
    }

    static double EPTemperingItemHasKeyword(ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("EPTemperingItemHasKeyword", 0, Keyword);
    }

    static double GetReplacedItemType(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("GetReplacedItemType", self, CastingSource);
    }

    static double GetGraphVariableInt(TESObjectREFR * self, ScriptAny String) { 
        return ObscriptInvoke::Invoke("GetGraphVariableInt", self, String);
    }

    static double ShouldAttackKill(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("ShouldAttackKill", self, Actor);
    }

    static double EPModSkillUsage_IsAdvanceSkill(ScriptAny ActorValue) { 
        return ObscriptInvoke::Invoke("EPModSkillUsage_IsAdvanceSkill", 0, ActorValue);
    }

    static double WornHasKeyword(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("WornHasKeyword", self, Keyword);
    }

    static double GetPathingCurrentSpeedAngle(TESObjectREFR * self, ScriptAny Axis) { 
        return ObscriptInvoke::Invoke("GetPathingCurrentSpeedAngle", self, Axis);
    }

    static double EPModSkillUsage_AdvanceObjectHasKeyword(ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("EPModSkillUsage_AdvanceObjectHasKeyword", 0, Keyword);
    }

    static double EPModSkillUsage_IsAdvanceAction(ScriptAny SkillAction) { 
        return ObscriptInvoke::Invoke("EPModSkillUsage_IsAdvanceAction", 0, SkillAction);
    }

    static double EPMagic_SpellHasKeyword(ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("EPMagic_SpellHasKeyword", 0, Keyword);
    }

    static double EPMagic_SpellHasSkill(ScriptAny ActorValue) { 
        return ObscriptInvoke::Invoke("EPMagic_SpellHasSkill", 0, ActorValue);
    }

    static double IsAttackType(ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("IsAttackType", 0, Keyword);
    }

    static double HasMagicEffectKeyword(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("HasMagicEffectKeyword", self, Keyword);
    }

    static double GetShouldHelp(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("GetShouldHelp", self, Actor);
    }

    static double HasBoundWeaponEquipped(TESObjectREFR * self, ScriptAny CastingSource) { 
        return ObscriptInvoke::Invoke("HasBoundWeaponEquipped", self, CastingSource);
    }

    static double GetCombatTargetHasKeyword(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("GetCombatTargetHasKeyword", self, Keyword);
    }

    static double SpellHasCastingPerk(ScriptAny Perk) { 
        return ObscriptInvoke::Invoke("SpellHasCastingPerk", 0, Perk);
    }

    static double IsHostileToActor(TESObjectREFR * self, ScriptAny Actor) { 
        return ObscriptInvoke::Invoke("IsHostileToActor", self, Actor);
    }

    static double GetTargetHeight(TESObjectREFR * self, ScriptAny TESObjectREFR) { /* Get the delta on z between two references */
        return ObscriptInvoke::Invoke("GetTargetHeight", self, TESObjectREFR);
    }

    static double WornApparelHasKeywordCount(TESObjectREFR * self, ScriptAny Keyword) { 
        return ObscriptInvoke::Invoke("WornApparelHasKeywordCount", self, Keyword);
    }


};
