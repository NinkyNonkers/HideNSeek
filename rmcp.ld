SECTIONS {
	/* Common Classes and Functions */
	Racedata = 0x809BD728;
	Raceinfo = 0x809BD730;
	PlayerHolder = 0x809C18F8;
	MenuData = 0x809C1E38;
	RKNetController = 0x809C20D8;
	ItemHolder = 0x809C3618;
	MusicHandler = 0x809C27F8;
	RKNetSelectHandler = 0x809C2100;

	NETSHA1Init = 0x801D24F4;
	NETSHA1Update = 0x801D2544;
	NETSHA1GetDigest = 0x801D25F8;
	
	UtilRandomSeed = 0x800F2EC8;
	UtilRandint = 0x800F2EE0;
	RandomNextLimited = 0x805555CC;

	/* Codehandler Hooks */
	VIHook = 0x801BAB20;
	KPADHook = 0x80197AA8;
	GXDrawHook = 0x8016EB6C;
	GXFlushHook = 0x8016E6AC;
	OSSleepHook = 0x801AAAA0;
	AXNextFrameHook = 0x801265A0;

	/* Payload Hook */
	RelHook = 0x801A6D30;

	/* Base Functions */
	DVDOpen = 0x8015E2BC;
	DVDReadPrio = 0x8015E834;
	DVDClose = 0x8015E568;
	sprintf = 0x80011A2C;
	swprintf = 0x80017814;
	OSFatal = 0x801A4EC4;
	CalcCRC32 = 0x801D1CA0;
	SCGetLanguage = 0x801B1D0C;

	/* Exception Handler */
	ShowExceptions = 0x802A7404;
	ExcDispInfo = 0x802A7410;

	/* Wiimmfi */
	WiimmfiPatch1 = 0x800ED868;
	WiimmfiPatch2 = 0x800ECAAC;
	WiimmfiPatch3 = 0x800EE3A0;
	WiimmfiPatch4 = 0x801D4EFC;

	LoginRegion = 0x80384FD0;

	WiimmfiVersionString = 0x80276054;
	NaswiiURL = 0x8027A404;
	NaswiiURL2 = 0x8027A42C;
	NaswiiURL3 = 0x8027A4AC;
	NaswiiURL4 = 0x8027A450;
	AvailableURL = 0x8027AD68;
	GPCMURL = 0x8027B4D8;
	GPSPURL = 0x8027BEF0;
	MasterURL = 0x8027D091;
	NatnegURL = 0x8027DCAB;
	NatnegURL2 = 0x8027DCC7;
	NatnegURL3 = 0x8027DCE3;
	MSURL = 0x8027DE33;
	GSURL = 0x8027DEB7;

	/* 30 FPS */
	ThirtyFPSHook1 = 0x80009A3C;
	ThirtyFPSHook2 = 0x800092AB;
	ThirtyFPSHook3 = 0x800090AF;
	ThirtyFPSHook4 = 0x8051AF94;
	ThirtyFPSHook5 = 0x8051B33C;
	ThirtyFPSHook6 = 0x8051B32B;

	/* Always Win Track Vote */
	AlwaysWinVoteHook = 0x80661E20;

	/* Automatic BRSAR Patch */
	AutoBRSARHook = 0x800912D4;

	/* Battle Arena Fixes */
	BattleSpawnFixHook = 0x80536304;
	BattleCCFixHook = 0x805780E4;
	BattleCCFix2 = 0x805780E8;

	/* Disable 5 Minute Limit */
	No5LimitHook = 0x8053F3AC;
	No5LimitHook2 = 0x8053F3FC;
	No5LimitHook3 = 0x8053F444;

	/* Disable 5:56 DC */
	No556DC = 0x8053F478;

	/* Disable HUD */
	DecrementScreenElements = 0x8060245C;
	DisablePosition = 0x80857D7C;
	DisableLap = 0x80857DF4;
	DisableMap = 0x80858190;

	/* Disable Laps */
	NoLaps = 0x805349EC;

	/* Disable Lakitu Backwards */
	NoLakitu = 0x805355BC;

	/* Disable Luma */
	NoLuma = 0x807C897C;

	/* Disable Star Power Music */
	NoStarMusic = 0x8071002C;

	/* Disable Title Demo Movie */
	NoTitleDemo = 0x806FA924;

	/* Disable Track Music */
	NoMusicHook = 0x8009130C;

	/* Disable Wheelie */
	DisableWheelieHook = 0x805887B8;

	/* Enable Score */
	EnableScore = 0x80858668;
	UpdateScoreHook = 0x807F789C;
	FixScoreColor = 0x807EBF48;
	FixScoreSound = 0x807F78E0;

	/* Finish Stuff */
	FinishPoints = 0x8052EC0C;
	FixPositionsHook = 0x8085C8C0;

	/* Force CC */
	ForceCCHook = 0x80661404;

	/* Force Teams On */
	FixResults = 0x80645D58;
	ForceTeams = 0x80530528;
	ResetSeeker = 0x80530474;

	/* Friend Room Race Count Modifier */
	FroomRaceCount1 = 0x806460BA;
	FroomRaceCount2 = 0x8064F51E;

	/* Go To Friends Menu Automatically */
	AutoFriendsMenu = 0x8064795B;
	AutoFriendsMenu2 = 0x8064D616;
	AutoFriendsMenu3 = 0x8064D51A;

	/* Grumble Volcano Patches */
	RockFixHook = 0x806E3B4C;
	RockFix2Hook = 0x80817F1C;
	GeyserFixHook = 0x806C3B28;

	/* Increase Visual Distance */
	DrawDistance = 0x80892320;

	/* Infinite Star */
	InfiniteStarHook = 0x80579728;
	InfiniteStarHook2 = 0x80580408;
	StarFunc = 0x807B706C;

	/* Instant Respawn */
	InstantRespawn1 = 0x80573E28;
	InstantRespawn2 = 0x80579C28;

	/* Invisibility */
	InvisibilityHook = 0x80657F34;

	/* Item Hit Hooks */
	ItemHitLocalHook = 0x8056F180;
	ItemHitRemoteHook = 0x8065DF44;
	DisconnectPlayer = 0x80533D84;
	PlayerDCHook = 0x80658B98;
	HitboxPatch1Hook = 0x8056EFA8;
	HitboxPatch2Hook = 0x8056EFBC;

	/* Item Mod */
	ItemModHook = 0x807BA160;
	ItemRouletteHook = 0x807BA1E4;
	ItemRouletteHook2 = 0x807BA428;
	NoSpecialItems = 0x80799FBC;

	/* License Unlocker */
	LicenseUnlocker = 0x80549974;

	/* Message Editor */
	MessageEditorHook = 0x805CDDC4;
	MessageEditorHook2 = 0x805CDD58;
	MessageEditorHook3 = 0x807F8E50;
	MessageEditorHook4 = 0x807F8EC8;
	MessageFunc = 0x805F8CF0;

	/* Music Patches */
	BattleCountdown = 0x807166CC;
	JingleFunc = 0x80711AC4;
	SomeJingleThing = 0x809C2850;
	TimerFlash = 0x807F82F4;
	BattleEnd = 0x8070B358;

	/* Mute Characters */
	MuteCharsHook = 0x8070756C;
	MuteCharsHook2 = 0x80716208;
	MuteCharsHook3 = 0x80707570;

	/* No Clip */
	NoClipHook = 0x8056F86C;

	/* No Disconnect */
	NoDisconnect1 = 0x80521408;
	NoDisconnect2 = 0x8053EF6C;
	NoDisconnect3 = 0x8053F0B4;
	NoDisconnect4 = 0x8053F124;

	/* Remove Mushroom Bug */
	NoMushroomBug = 0x807BA077;

	/* Respawn Cooldown */
	RespawnCooldownHook = 0x80581CFC;

	/* Reversed Timer */
	TimerManagerHook = 0x80535C7C;

	/* Room Message Handler */
	HostFlagsHook = 0x8065AE70;
	GuestFlagsHook = 0x8065AF70;
	FlagResetHook = 0x800D1AB0;

	/* Screen Edits */
	ScreenLoadHook = 0x8062E82C;
	CupScreenPatchHook = 0x808D9564;
	BattleCupScreenPatchHook = 0x808D8F24;
	ScreenDSIFix1Hook = 0x80837744;
	ScreenDSIFix2Hook = 0x8083945C;
	ScreenDSIFix3Hook = 0x8083CF18;
	TrackVoteFix = 0x8064433E;
	TrackVoteFix2 = 0x806440D6;
	TrackVoteFix3 = 0x80661F33;
	TrackVoteFix4 = 0x80661F7B;
	TrackVoteFix5 = 0x806440D0;
	createScreen = 0x80622D08;
	switchScreen = 0x80837720;

	/* Seeker Picker */
	HNSDataHook = 0x805305A8;
	HNSDataHook2 = 0x80532120;

	/* Spectator Mode */
	SpectatorModeHook = 0x805A2230;
	ReplayCameraHook = 0x805A28C0;
	
	/* Starting Time Modifier */
	TimerInit = 0x805358E4;
	TimerInit2 = 0x80535890;

	/* Tag Modifier */
	TagDistanceHook = 0x807EFE94;
	TagDistanceHook2 = 0x807F20E4;
	TagShowHook = 0x807F0C48;
	TagFunc = 0x807F0044;
}
