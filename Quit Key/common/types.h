/*
	THIS FILE IS A PART OF THE SKYRIM DRAGON SCRIPT PROJECT	
				(C) Alexander Blade 2011
			http://Alexander.SannyBuilder.com
*/

#pragma once

#include <windows.h>

typedef int ScriptNone;
typedef int ScriptAny;
typedef DWORD uint;
typedef char Axis;

class BGSListForm;
class CActor;
class TESWordOfPower;
class TESQuest;
class BGSKeyword;
class BGSLocation;
class BGSLocationRefType;
class BGSMessage;
class BGSMusicType;
class BGSReferenceEffect;
class BGSScene;
class BGSShaderParticleGeometryData;
class BGSSoundCategory;
class EffectSetting;
class TESEffectShader;
class TESFaction;
class TESGlobal;
class TESImageSpaceModifier;
class TESLevCharacter;
class TESLevItem;
class TESLevSpell;
class TESNPC;
class TESClass;
class TESObjectCELL;
class TESKey;
class BGSVoiceType;
class TESWorldSpace;
class TESRace;
class BGSOutfit;
class BGSEncounterZone;
class BGSImpactDataSet;
class TESTopic;
class BGSPerk;
class TESShout;
class SpellItem;
class TESPackage;
class TESObjectWEAP;
class TESObjectARMO;
class TESIdleForm;
class BGSBaseAlias;
class BGSRefAlias;
class BGSLocAlias;
class ScrollItem;
class ActiveEffect;
class TESWeather;
class TESAmmo;
class TESSound;
class TESTopicInfo;
class BGSAssociationType;
class IngredientItem;
class AlchemyItem;
class EnchantmentItem;
class PlayerCharacter;

class BaseFormComponent
{
public:
	BaseFormComponent();
	~BaseFormComponent();
	virtual void forcevmt();
};

class TESForm : public BaseFormComponent // size = 0x14
{
public:
	TESForm();
	~TESForm();
	virtual void forcevmt();
	/* 4  */ DWORD unk_f4;
	/* 8  */ DWORD unk_f8;
	/* C  */ DWORD ref_id;
	/* 10 */ DWORD unk_f16;
}; // 0x14

class TESChildCell
{
	TESChildCell();
	~TESChildCell();
}; 

class TESObjectREFR : public TESForm 
{
	TESObjectREFR();
	~TESObjectREFR();
}; 

class BGSListForm
{
    BGSListForm();
    ~BGSListForm();
};

class ACTOR
{
    ACTOR();
    ~ACTOR();
};

class TESWordOfPower
{
    TESWordOfPower();
    ~TESWordOfPower();
};

class TESQuest
{
    TESQuest();
    ~TESQuest();
};

class BGSKeyword
{
    BGSKeyword();
    ~BGSKeyword();
};

class BGSLocation
{
    BGSLocation();
    ~BGSLocation();
};

class BGSLocationRefType
{
    BGSLocationRefType();
    ~BGSLocationRefType();
};

class BGSMessage
{
    BGSMessage();
    ~BGSMessage();
};

class BGSMusicType
{
    BGSMusicType();
    ~BGSMusicType();
};

class BGSReferenceEffect
{
    BGSReferenceEffect();
    ~BGSReferenceEffect();
};

class BGSScene
{
    BGSScene();
    ~BGSScene();
};

class BGSShaderParticleGeometryData
{
    BGSShaderParticleGeometryData();
    ~BGSShaderParticleGeometryData();
};

class BGSSoundCategory
{
    BGSSoundCategory();
    ~BGSSoundCategory();
};

class EffectSetting
{
    EffectSetting();
    ~EffectSetting();
};

class TESEffectShader
{
    TESEffectShader();
    ~TESEffectShader();
};

class TESFaction
{
    TESFaction();
    ~TESFaction();
};

class TESGlobal
{
    TESGlobal();
    ~TESGlobal();
};

class TESImageSpaceModifier
{
    TESImageSpaceModifier();
    ~TESImageSpaceModifier();
};

class TESLevCharacter
{
    TESLevCharacter();
    ~TESLevCharacter();
};

class TESLevItem
{
    TESLevItem();
    ~TESLevItem();
};

class TESLevSpell
{
    TESLevSpell();
    ~TESLevSpell();
};

class TESNPC
{
    TESNPC();
    ~TESNPC();
};

class TESClass
{
    TESClass();
    ~TESClass();
};

class TESObjectCELL
{
    TESObjectCELL();
    ~TESObjectCELL();
};

class TESKey
{
    TESKey();
    ~TESKey();
};

class BGSVoiceType
{
    BGSVoiceType();
    ~BGSVoiceType();
};

class TESWorldSpace
{
    TESWorldSpace();
    ~TESWorldSpace();
};

class TESRace
{
    TESRace();
    ~TESRace();
};

class BGSOutfit
{
    BGSOutfit();
    ~BGSOutfit();
};

class BGSEncounterZone
{
    BGSEncounterZone();
    ~BGSEncounterZone();
};

class BGSImpactDataSet
{
    BGSImpactDataSet();
    ~BGSImpactDataSet();
};

class TESTopic
{
    TESTopic();
    ~TESTopic();
};

class BGSPerk
{
    BGSPerk();
    ~BGSPerk();
};

class TESShout
{
    TESShout();
    ~TESShout();
};

class SpellItem
{
    SpellItem();
    ~SpellItem();
};

class TESPackage
{
    TESPackage();
    ~TESPackage();
};

class TESObjectWEAP
{
    TESObjectWEAP();
    ~TESObjectWEAP();
};

class TESObjectARMO
{
    TESObjectARMO();
    ~TESObjectARMO();
};

class TESIdleForm
{
    TESIdleForm();
    ~TESIdleForm();
};

class BGSBaseAlias
{
    BGSBaseAlias();
    ~BGSBaseAlias();
};

class BGSRefAlias
{
    BGSRefAlias();
    ~BGSRefAlias();
};

class BGSLocAlias
{
    BGSLocAlias();
    ~BGSLocAlias();
};

class ScrollItem
{
    ScrollItem();
    ~ScrollItem();
};

class ActiveEffect
{
    ActiveEffect();
    ~ActiveEffect();
};

class TESWeather
{
    TESWeather();
    ~TESWeather();
};

class TESAmmo
{
    TESAmmo();
    ~TESAmmo();
};

class TESSound
{
    TESSound();
    ~TESSound();
};

class TESTopicInfo
{
    TESTopicInfo();
    ~TESTopicInfo();
};

class BGSAssociationType
{
    BGSAssociationType();
    ~BGSAssociationType();
};

class IngredientItem
{
    IngredientItem();
    ~IngredientItem();
};

class AlchemyItem
{
    AlchemyItem();
    ~AlchemyItem();
};

class EnchantmentItem
{
    EnchantmentItem();
    ~EnchantmentItem();
};

class PlayerCharacter
{
    PlayerCharacter();
    ~PlayerCharacter();
};


