// ==EMEVD==
// @docs    ds3-common.emedf.json
// @compress    DarkSouls3
// @game    DarkSouls3
// @string    
// @linked    []
// ==/EMEVD==

Event(0, Default, function() {
    //---------------------------------------
    // Host and Client
    //---------------------------------------
    InitializeEvent(0, 200, 0);
    InitializeEvent(0, 230, 0); // Set Eclipse ceremonies
    InitializeEvent(0, 9570, 4500, 3740); // Forked Pale Tongue
    InitializeEvent(1, 9570, 4510, 3750); // Proof of a Concord Well Kept
    InitializeEvent(0, 9601, 0); // Setup Cinders scripts
    
    EndIfMultiplayerState(EventEndType.End, MultiplayerState.Client);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    
    //---------------------------------------
    // Host Only
    //---------------------------------------
    InitializeEvent(0, 9600, 0); // Setup Cinders scripts
    
    // Achievements - Locations
    InitializeEvent(0, 130, 40, 4004110, 0, -1);
    InitializeEvent(1, 130, 30, 3004110, 0, -1);
    InitializeEvent(2, 130, 31, 3104110, 0, -1);
    InitializeEvent(3, 130, 33, 3304110, 0, -1);
    InitializeEvent(4, 130, 35, 3504110, 0, -1);
    InitializeEvent(5, 130, 33, 3304111, 0, -1);
    InitializeEvent(6, 130, 38, 3804110, 0, -1);
    InitializeEvent(7, 130, 38, 3804111, 0, -1);
    InitializeEvent(8, 130, 37, 3704110, 0, -1);
    InitializeEvent(9, 130, 37, 3704111, 0, -1);
    InitializeEvent(10, 130, 39, 3904110, 0, -1);
    InitializeEvent(11, 130, 32, 3204110, 0, 26);
    InitializeEvent(12, 130, 30, 3004111, 0, -1);
    InitializeEvent(13, 130, 290, 3414110, 0, -1);
    InitializeEvent(14, 130, 40, 4004111, 10, 25);
    InitializeEvent(15, 130, 41, 4104110, 0, -1);
    InitializeEvent(16, 130, 45, 4504110, 0, -1);
    InitializeEvent(17, 130, 50, 5004110, 0, -1);
    InitializeEvent(18, 130, 51, 5104110, 0, -1);
    InitializeEvent(19, 130, 307, 5114110, 0, -1);
    
    // Achievements - Bosses
    InitializeEvent(10, 250, 17, 6700, 0);
    InitializeEvent(11, 250, 18, 6770, 0);
    InitializeEvent(12, 250, 19, 6740, 0);
    InitializeEvent(13, 250, 20, 6750, 0);
    InitializeEvent(14, 250, 21, 6760, 0);
    InitializeEvent(15, 250, 22, 6710, 0);
    InitializeEvent(16, 250, 23, 6720, 0);
    InitializeEvent(17, 250, 24, 6730, 0);
    InitializeEvent(20, 250, 4, 13300800, 0);
    InitializeEvent(21, 250, 5, 13900800, 0);
    InitializeEvent(22, 250, 6, 13700800, 0);
    InitializeEvent(23, 250, 7, 13410830, 0);
    InitializeEvent(24, 250, 27, 14000800, 0);
    InitializeEvent(25, 250, 28, 13000800, 0);
    InitializeEvent(26, 250, 29, 13100800, 0);
    InitializeEvent(27, 250, 30, 13300850, 0);
    InitializeEvent(28, 250, 31, 13500800, 0);
    InitializeEvent(29, 250, 32, 13800800, 0);
    InitializeEvent(30, 250, 33, 13700850, 0);
    InitializeEvent(31, 250, 34, 13000890, 0);
    InitializeEvent(32, 250, 35, 13010800, 0);
    InitializeEvent(33, 250, 36, 13800830, 0);
    InitializeEvent(34, 250, 37, 13000830, 0);
    InitializeEvent(35, 250, 38, 14000830, 0);
    InitializeEvent(36, 250, 39, 13200800, 0);
    InitializeEvent(37, 250, 40, 13200850, 0);
    
    // Achievements - Other
    InitializeEvent(0, 6099, 0);
    
    // Sin
    InitializeEvent(0, 9004, 9007); // Check Hostility 2 for 70000052 -> 70000066
    InitializeEvent(0, 9005, 9008); // Check Hostility 2 for 70000067 -> 70000081
    InitializeEvent(0, 9006, 9009); // Check Hostility 2 for 70001073
    InitializeEvent(0, 9000, 9001, 9007, 9008, 9009); // NPC Sin monitor
    InitializeEvent(0, 9002, 9003); // Clear Sin
    InitializeEvent(0, 9010, 0); // Sin - Shrine Handmaid Price Increase
    
    // Boss Defeat - Award Items
    InitializeEvent(0, 970, 13000800, 2000, 0, 0); // Vordt
    InitializeEvent(1, 970, 13000890, 2010, 0, 0); // Dancer
    InitializeEvent(2, 970, 13000830, 2020, 0, 0); // Oceiros
    InitializeEvent(3, 970, 13010800, 2030, 0, 0); // Dragonslayer Armour
    InitializeEvent(9, 970, 13410830, 2040, 0, 0); // Twin Princes
    InitializeEvent(10, 970, 13410860, 2050, 0, 0); // Unused
    InitializeEvent(4, 970, 13100800, 2060, 0, 0); // Curse-rotted Greatwood
    InitializeEvent(5, 970, 13200800, 2070, 0, 0); // Ancient Wyvern
    InitializeEvent(6, 970, 13200850, 2080, 0, 0); // Nameless King
    InitializeEvent(7, 970, 13300850, 2090, 0, 0); // Crystal Sage
    InitializeEvent(8, 970, 13300800, 2100, 0, 0); // Abyss Watchers
    InitializeEvent(11, 970, 13500800, 2110, 0, 0); // Deacons of the Deep
    InitializeEvent(12, 970, 13700850, 2120, 0, 0); // Pontiff Sulyvahn
    InitializeEvent(13, 970, 13700800, 2130, 0, 0); // Aldrich
    InitializeEvent(14, 970, 13800800, 2140, 0, 0); // High Lord Wolnir
    InitializeEvent(15, 970, 13800830, 2150, 0, 0); // Old Demon King
    InitializeEvent(17, 970, 13900800, 2170, 0, 0); // Yhorm
    InitializeEvent(18, 970, 14000800, 2180, 0, 0); // Corrupted Gundyr
    InitializeEvent(19, 970, 14000830, 2190, 0, 0); // Champion Gundyr
    InitializeEvent(20, 970, 14100800, 2200, 0, 0); // Soul of Cinder
    InitializeEvent(21, 970, 14500800, 2300, 0, 0); // Sister Friede
    InitializeEvent(22, 970, 14500860, 2310, 0, 0); // Lordran Remnants
    InitializeEvent(23, 970, 15000800, 2330, 0, 0); // Demon Prince
    InitializeEvent(24, 970, 15100800, 2340, 0, 0); // Halflight
    InitializeEvent(25, 970, 15100850, 2350, 0, 0); // Darkeater Midir
    InitializeEvent(26, 970, 15110800, 2360, 0, 0); // Slave Knight Gael
    
    // Game Progress Flags - Set via Boss Defeat
    InitializeEvent(0, 6100, 6100, 13300800);
    InitializeEvent(1, 6100, 6101, 13900800);
    InitializeEvent(2, 6100, 6102, 13700800);
    InitializeEvent(3, 6100, 6103, 13410830);
    InitializeEvent(4, 6100, 6104, 14000800);
    InitializeEvent(5, 6100, 6105, 13000800);
    InitializeEvent(6, 6100, 6106, 13300850);
    InitializeEvent(7, 6100, 6107, 13500800);
    InitializeEvent(8, 6100, 6108, 13800800);
    InitializeEvent(9, 6100, 6109, 13700850);
    InitializeEvent(10, 6100, 6110, 13000890);
    InitializeEvent(11, 6100, 6111, 13010800);
    InitializeEvent(12, 6100, 6112, 110);
    
    // Flag State - 6600, 703
    InitializeEvent(0, 702, 0);
    
    // Warp to Dancer
    InitializeEvent(0, 710, 0);
    
    // Phantoms
    InitializeEvent(0, 9510, 0); // Sirris - Trigger Appearance
    InitializeEvent(0, 9511, 0); // Longfinger Kirk - Trigger Appearance
    InitializeEvent(0, 9512, 0); // Londor Pale Shade - Trigger Appearance
    
    // Gestures
    InitializeEvent(0, 9520, 4410, 8, 9013, 6058); // Yellowfinger Heysel - Proper bow
    InitializeEvent(0, 9525, 4430, 4, 9005, 6054); // Duel bow
    InitializeEvent(0, 9530, 4420, 18, 9020, 6068); // By my sword
    InitializeEvent(0, 9540, 15, 9017, 6065); // My thanks!
    
    // NPC Flags
    InitializeEvent(0, 9100, 70000007); // Hawkwood
    InitializeEvent(0, 9101, 70000008); // Sirris
    InitializeEvent(0, 9102, 70000012); // Greirat
    InitializeEvent(0, 9103, 70000013); // Orbeck
    InitializeEvent(0, 9104, 70000017); // Irina/Eygon
    InitializeEvent(0, 9105, 70000019, 70000020, 70000021); // Anri
    InitializeEvent(0, 9111, 70000022, 70000023); // Anri
    InitializeEvent(0, 9106, 70000000); // Sirris
    InitializeEvent(0, 9107, 70000001); // Yuria
    InitializeEvent(0, 9108, 70000002); // Yuria
    InitializeEvent(0, 9109, 70000003); // Yuria
    InitializeEvent(0, 9110, 70000004); // Yuria
    InitializeEvent(0, 9112, 70000005); //
    InitializeEvent(0, 9113, 70000030); // Lapp
    InitializeEvent(0, 9114, 70000031); // Shria
    
    // Boss Kill Count Trackers
    InitializeEvent(0, 9120, 74000756, 74000760, 74000760, 1, 1, 1, 0); // Sirris
    InitializeEvent(1, 9120, 74000591, 74000552, 74000592, 3, 3, 3, 0); // 
    InitializeEvent(2, 9120, 74000552, 74000553, 74000592, 3, 3, 6, 0); // Orbeck
    InitializeEvent(3, 9120, 74000303, 74000316, 74000316, 1, 1, 1, 1); // Greirat - Undead Settlement
    InitializeEvent(4, 9120, 74000306, 74000318, 74000318, 1, 1, 1, 1); // Greirat - Irithyll
    InitializeEvent(5, 9120, 74000921, 74000925, 74000925, 1, 1, 1, 1); // 
    InitializeEvent(6, 9120, 74000916, 74000913, 74000913, 1, 1, 1, 1); // 
    InitializeEvent(7, 9120, 73500265, 73500264, 73500264, 1, 1, 1, 0); // 
    
    InitializeEvent(0, 9016, 0); // Set Cleric class flag if Cleric
    InitializeEvent(0, 9011, 74000132);
    InitializeEvent(0, 9014, 0); 
    InitializeEvent(0, 9018, 0);
    InitializeEvent(0, 9019, 74000669);
    InitializeEvent(0, 9015, 0);
    InitializeEvent(0, 6900, 0); // Lack of Estus Flask flag
    InitializeEvent(0, 9020, 73500300, 1621, 1634, 6951, 35);
    InitializeEvent(1, 9020, 14100511, 14100512, 14100512, 6952, 41);
    InitializeEvent(2, 9020, 14500161, 14500162, 14500162, 6952, 45);
});

Event(50, Default, function() {
    //InitializeEvent(0, 231, 0); // UG Ceremony Monitor
    InitializeEvent(0, 232, 0); // Undead Settlement Ceremony Monitor
    
    InitializeEvent(0, 701, 0);
    InitializeEvent(0, 700, 0); // Initial flag setup
    InitializeEvent(0, 9012, 0);
    InitializeEvent(0, 741, 0);
    InitializeEvent(0, 740, 0);
    InitializeEvent(0, 9080, 2, 10040, 6700);
    InitializeEvent(1, 9080, 2, 10050, 6710);
    InitializeEvent(2, 9080, 2, 10020, 6720);
    InitializeEvent(3, 9080, 2, 10030, 6730);
    InitializeEvent(4, 9080, 2, 10070, 6740);
    InitializeEvent(5, 9080, 2, 10000, 6750);
    InitializeEvent(6, 9080, 2, 10080, 6760);
    InitializeEvent(7, 9080, 2, 10060, 6770);
    InitializeEvent(10, 9080, 3, 520, 6790);
    InitializeEvent(11, 9080, 3, 521, 6791);
    InitializeEvent(12, 9080, 3, 522, 6792);
    InitializeEvent(13, 9080, 3, 523, 6793);
    InitializeEvent(14, 9080, 3, 524, 6794);
    InitializeEvent(15, 9080, 3, 102, 6780);
    InitializeEvent(16, 9080, 3, 101, 6781);
    InitializeEvent(17, 9080, 3, 108, 6782);
    InitializeEvent(18, 9080, 2, 10090, 6830);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6400);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 14000100);
    GotoIfConditionGroupStateUncompiled(Label.LABEL0, FAIL, AND_01);
    RemoveItemFromPlayer(ItemType.Goods, 115, 1); // Black Eye Orb
    RemoveItemFromPlayer(ItemType.Goods, 384, 1); //
    RemoveItemFromPlayer(ItemType.Goods, 386, 1); //
    RemoveItemFromPlayer(ItemType.Goods, 390, 1); // Fire Keeper Soul
    RemoveItemFromPlayer(ItemType.Goods, 490, 8); // Dark Sigil
    RemoveItemFromPlayer(ItemType.Goods, 2001, 1); // Lift Chamber Key
    RemoveItemFromPlayer(ItemType.Goods, 2005, 1); // Small Doll
    RemoveItemFromPlayer(ItemType.Goods, 2007, 1); // Jailbreaker's Key
    RemoveItemFromPlayer(ItemType.Goods, 2008, 1); // Jailer's Key Ring
    RemoveItemFromPlayer(ItemType.Goods, 2009, 1); // Grave Key
    RemoveItemFromPlayer(ItemType.Goods, 2010, 1); // Cell Key
    RemoveItemFromPlayer(ItemType.Goods, 2011, 1); // Dungeon Ground Floor Key
    RemoveItemFromPlayer(ItemType.Goods, 2012, 1); // Old Cell Key
    RemoveItemFromPlayer(ItemType.Goods, 2013, 1); // Forgotten Key
    RemoveItemFromPlayer(ItemType.Goods, 2014, 1); // Grand Archives Key
    RemoveItemFromPlayer(ItemType.Goods, 2015, 1); // Tower Key
    RemoveItemFromPlayer(ItemType.Goods, 2102, 1); // Small Lothric Banner
    RemoveItemFromPlayer(ItemType.Goods, 2103, 1); // Farron Coal
    RemoveItemFromPlayer(ItemType.Goods, 2104, 1); // Sage's Coal
    RemoveItemFromPlayer(ItemType.Goods, 2105, 1); // Giant's Coal
    RemoveItemFromPlayer(ItemType.Goods, 2106, 1); // Profaned Coal
    RemoveItemFromPlayer(ItemType.Goods, 2107, 1); // Mortician's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2108, 1); // Dreamchaser's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2109, 1); // Paladin's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2110, 1); // Grave Warden's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2111, 1); // Greirat's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2112, 1); // Orbeck's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2113, 1); // Cornyx's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2114, 1); // Karla's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2115, 1); // Irina's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2116, 1); // Yuria's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2117, 1); // Basin of Vows
    RemoveItemFromPlayer(ItemType.Goods, 2119, 1); // Braille Divine Tome of Carim
    RemoveItemFromPlayer(ItemType.Goods, 2120, 1); // Braille Divine Tome of Lothric
    RemoveItemFromPlayer(ItemType.Goods, 2121, 1); // Braille Divine Tome of Sunlight
    RemoveItemFromPlayer(ItemType.Goods, 2123, 1); // Cinders of a Lord
    RemoveItemFromPlayer(ItemType.Goods, 2124, 1); // Cinders of a Lord
    RemoveItemFromPlayer(ItemType.Goods, 2125, 1); // Cinders of a Lord
    RemoveItemFromPlayer(ItemType.Goods, 2126, 1); // Cinders of a Lord
    RemoveItemFromPlayer(ItemType.Goods, 2127, 1); // Great Swamp Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2128, 1); // Carthus Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2129, 1); // Izalith Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2130, 1); // Quelana Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2131, 1); // Grave Warden Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2132, 1); // Sage's Scroll
    RemoveItemFromPlayer(ItemType.Goods, 2133, 1); // Logan's Scroll
    RemoveItemFromPlayer(ItemType.Goods, 2134, 1); // Crystal Scroll
    RemoveItemFromPlayer(ItemType.Goods, 2135, 1); // Transposing Kiln
    RemoveItemFromPlayer(ItemType.Goods, 2137, 1); // Coiled Sword
    RemoveItemFromPlayer(ItemType.Goods, 2138, 1); // Eyes of a Fire Keeper
    RemoveItemFromPlayer(ItemType.Goods, 2139, 1); // Sword of Avowal
    RemoveItemFromPlayer(ItemType.Goods, 2140, 1); // Golden Scroll
    RemoveItemFromPlayer(ItemType.Goods, 2142, 1); // Hawkwood's Swordgrass
    RemoveItemFromPlayer(ItemType.Goods, 2144, 1); // Deep Braille Divine Tome
    RemoveItemFromPlayer(ItemType.Goods, 2145, 1); // Londor Braille Divine Tome
    RemoveItemFromPlayer(ItemType.Goods, 2146, 1); // Excrement-covered Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2147, 1); // Prisoner Chief's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2148, 1); // Xanthous Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2149, 1); // Hollow's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2150, 1); // Patches' Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2151, 1); // Dragon Chaser's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2152, 1); // Easterner's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2154, 1); // Captain's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2155, 1); // Contraption Key
    RemoveItemFromPlayer(ItemType.Goods, 2156, 1); // Small Envoy Banner
    RemoveItemFromPlayer(ItemType.Goods, 2157, 1); // Old Woman's Ashes
    RemoveItemFromPlayer(ItemType.Goods, 2158, 1); // Blood of the Dark Soul
    
    // Cinders
    RemoveItemFromPlayer(ItemType.Goods, 2002, 1); // Lordvessel
    RemoveItemFromPlayer(ItemType.Goods, 2004, 1); // Tortured Soul
    RemoveItemFromPlayer(ItemType.Goods, 2006, 1); // Smithbox
    RemoveItemFromPlayer(ItemType.Goods, 2016, 1); // Dragon Talon
    RemoveItemFromPlayer(ItemType.Goods, 2017, 1); // Pilgrim's Soul
    RemoveItemFromPlayer(ItemType.Goods, 2018, 1); // Catacombs Key
    RemoveItemFromPlayer(ItemType.Goods, 2019, 1); // Smouldering Key
    RemoveItemFromPlayer(ItemType.Goods, 2020, 1); // Eye of Londor
    RemoveItemFromPlayer(ItemType.Goods, 2021, 1); // Frozen Flower
    RemoveItemFromPlayer(ItemType.Goods, 2022, 1); // Broken Tablet
    RemoveItemFromPlayer(ItemType.Goods, 2023, 1); // Giant's Soul
    RemoveItemFromPlayer(ItemType.Goods, 2024, 1); // Smouldering Rubble
    
    RemoveItemFromPlayer(ItemType.Goods, 2173, 1); // Profaned Pyromancy Tome
    RemoveItemFromPlayer(ItemType.Goods, 2174, 1); // Accursed Scroll
    RemoveItemFromPlayer(ItemType.Goods, 2175, 1); // Writhing Tome
    RemoveItemFromPlayer(ItemType.Goods, 2176, 1); // Abyssal Tome
    RemoveItemFromPlayer(ItemType.Goods, 2177, 1); // Angelic Braille Divine Tome
    RemoveItemFromPlayer(ItemType.Goods, 2178, 1); // Heavenly Braille Divine Tome
    
    SetEventFlag(6400, OFF);
    Label0();
});

Event(130, Default, function(X0_1, X1_1, X4_4, X8_2, X12_4) {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfPlayerInoutMap(AND_01, true, X0_1, X1_1);
    IfPlayerStandingOnHit(AND_01, X4_4);
    IfPlayerInoutMap(AND_02, true, 40, 0);
    SkipIfConditionGroupStateUncompiled(1, FAIL, AND_02);
    IfMapCeremonyState(AND_01, Enabled, X0_1, X1_1, X8_2);
    IfConditionGroup(MAIN, PASS, AND_01);
    EndIfComparison(EventEndType.End, ComparisonType.Equal, X12_4, -1);
    AwardAchievement(X12_4);
    EndUnconditionally(EventEndType.End);
});

Event(200, Restart, function() {
    SetNetworkSyncState(Disabled);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, false);
    SetEventFlag(201, ON);
});

Event(230, Restart, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 230);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9314);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9318);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetMapCeremony(30, 0, 10);
    SetMapCeremony(30, 1, 10);
    SetMapCeremony(34, 1, 10);
    SetMapCeremony(31, 0, 10);
    SetMapCeremony(33, 0, 10);
    SetMapCeremony(35, 0, 10);
    SetEventFlag(230, ON);
});

// Enable Untended Graves when player is outside the map
Event(231, Restart, function() {
    IfPlayerInoutMap(AND_01, true, 40, 0);
    EndIfConditionGroupStateUncompiled(EventEndType.End, PASS, AND_01);
    SetMapCeremony(40, 0, 10);
    EndUnconditionally(EventEndType.End);
});

Event(232, Default, function() {
    GotoIfEventFlag(Label.LABEL1, ON, TargetEventFlagType.EventFlag, 8221);
    GotoIfEventFlag(Label.LABEL0, ON, TargetEventFlagType.EventFlag, 230);
    SetMapCeremony(31, 0, 0);
    GotoUnconditionally(Label.LABEL1);
    Label0();
    SetMapCeremony(31, 0, 10);
    GotoUnconditionally(Label.LABEL1);
    Label1();
    IfPlayerInoutMap(OR_01, true, 30, 0);
    IfPlayerInoutMap(OR_01, true, 30, 1);
    IfPlayerInoutMap(OR_01, true, 34, 1);
    IfPlayerInoutMap(OR_01, true, 40, 0);
    IfConditionGroup(MAIN, PASS, OR_01);
    WaitFixedTimeFrames(1);
    GotoIfEventFlag(Label.LABEL2, ON, TargetEventFlagType.EventFlag, 230);
    SetMapCeremony(31, 0, 20);
    GotoUnconditionally(Label.LABEL3);
    Label2();
    SetMapCeremony(31, 0, 30);
    GotoUnconditionally(Label.LABEL3);
    Label3();
    IfPlayerInoutMap(AND_01, false, 30, 0);
    IfPlayerInoutMap(AND_01, false, 30, 1);
    IfPlayerInoutMap(AND_01, false, 34, 1);
    IfPlayerInoutMap(AND_01, false, 40, 0);
    IfConditionGroup(MAIN, PASS, AND_01);
    EndUnconditionally(EventEndType.Restart);
});

Event(250, Default, function(X0_4, X4_4, X8_4) {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, X4_4);
    IfPlayerIsNotInOwnWorldExcludesArena(AND_01, false);
    IfConditionGroup(MAIN, PASS, AND_01);
    WaitFixedTimeSeconds(X8_4);
    AwardAchievement(X0_4);
});

Event(6100, Default, function(X0_4, X4_4) {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, X4_4);
    IfPlayerIsNotInOwnWorldExcludesArena(AND_01, false);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
});

// Initial flag setup
Event(700, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    SetEventFlag(50006020, ON);
    SetEventFlag(9215, ON);
    SetCharacterRemainingYoelLevels(5);
    SetEventFlag(70000125, ON);
    SetEventFlag(70000128, ON);
    SetEventFlag(70000129, ON);
    IfPlayersClass(OR_15, ClassType.Sorcerer);
    SkipIfConditionGroupStateUncompiled(1, FAIL, OR_15);
    SetEventFlag(74000587, ON);
    IfPlayersClass(OR_14, ClassType.Pyromancer);
    SkipIfConditionGroupStateUncompiled(1, FAIL, OR_14);
    SetEventFlag(74000465, ON);
    SetEventFlag(50006162, ON);
    SetEventFlag(50006163, ON);
    SetEventFlag(73501010, ON);
    SetEventFlag(73501020, ON);
    SetEventFlag(73501030, ON);
    SetEventFlag(73501040, ON);
    SetEventFlag(73501050, ON);
    IfGameCycle(OR_13, ComparisonType.GreaterOrEqual, 1);
    SkipIfConditionGroupStateUncompiled(1, FAIL, OR_13);
    SetEventFlag(70000900, ON);
    IfGameCycle(AND_06, ComparisonType.GreaterOrEqual, 6);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_06);
    SetEventFlag(56, ON);
    EndUnconditionally(EventEndType.End);
    IfGameCycle(AND_05, ComparisonType.Equal, 5);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_05);
    SetEventFlag(55, ON);
    EndUnconditionally(EventEndType.End);
    IfGameCycle(AND_04, ComparisonType.Equal, 4);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_04);
    SetEventFlag(54, ON);
    EndUnconditionally(EventEndType.End);
    IfGameCycle(AND_03, ComparisonType.Equal, 3);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_03);
    SetEventFlag(53, ON);
    EndUnconditionally(EventEndType.End);
    IfGameCycle(AND_02, ComparisonType.Equal, 2);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_02);
    SetEventFlag(52, ON);
    EndUnconditionally(EventEndType.End);
    IfGameCycle(AND_01, ComparisonType.Equal, 1);
    SkipIfConditionGroupStateUncompiled(2, FAIL, AND_01);
    SetEventFlag(51, ON);
    EndUnconditionally(EventEndType.End);
    SetEventFlag(50, ON);
    EndUnconditionally(EventEndType.End);
});

Event(701, Default, function() {
    SetEventFlag(6000, OFF);
    SetEventFlag(6001, ON);
});

Event(702, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 6600);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 6600);
    SetEventFlag(703, ON);
});

Event(710, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfPlayerHasdoesntHaveItem(AND_15, ItemType.Goods, 2014, OwnershipState.Owns);
    EndIfConditionGroupStateUncompiled(EventEndType.End, PASS, AND_15);
    IfPlayerIsNotInOwnWorldExcludesArena(AND_01, false);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9314);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9318);
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3702890, 1);
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3902890, 1);
    IfConditionGroup(AND_01, PASS, OR_01);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetSpeffect(10000, 4900);
    SetSpeffect(10000, 4901);
    GotoIfPlayerInoutMap(Label.LABEL0, true, 37, 0);
    GotoIfPlayerInoutMap(Label.LABEL1, true, 39, 0);
    GotoUnconditionally(Label.LABEL2);
    Label0();
    WaitFixedTimeSeconds(3);
    SetEventFlag(13700002, ON);
    IfEventFlag(AND_08, ON, TargetEventFlagType.EventFlag, 13000896);
    IfEventFlag(AND_08, OFF, TargetEventFlagType.EventFlag, 13000890);
    SkipIfConditionGroupStateUncompiled(2, PASS, AND_08);
    SkipUnconditionally(1);
    GotoUnconditionally(Label.LABEL2);
    Label1();
    GotoIfBatchEventFlags(Label.LABEL19, LogicalOperationType.AllOFF, TargetEventFlagType.EventFlag, 1388, 1389);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 73900164);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1398);
    IfInoutsideArea(AND_02, InsideOutsideState.Outside, 10000, 3902890, 1);
    IfConditionGroup(OR_02, PASS, AND_02);
    IfConditionGroup(MAIN, PASS, OR_02);
    GotoIfConditionGroupStateCompiled(Label.LABEL20, PASS, AND_02);
    Label19();
    WaitFixedTimeSeconds(3);
    Label20();
    IfEventFlag(AND_09, ON, TargetEventFlagType.EventFlag, 13000896);
    IfEventFlag(AND_09, OFF, TargetEventFlagType.EventFlag, 13000890);
    SkipIfConditionGroupStateUncompiled(2, PASS, AND_09);
    SkipUnconditionally(1);
    GotoUnconditionally(Label.LABEL2);
    Label2();
    SetEventFlag(711, ON);
    WaitFixedTimeFrames(0);
    ClearSpeffect(10000, 4900);
    ClearSpeffect(10000, 4901);
    EndUnconditionally(EventEndType.End);
});

Event(730, Default, function() {
    SetNetworkSyncState(Disabled);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfPlayerIsNotInOwnWorldExcludesArena(AND_01, false);
    IfCharacterHasSpeffect(AND_01, 10000, 100, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    ClearSpeffect(10000, 11907);
    WaitFixedTimeSeconds(1);
    EndUnconditionally(EventEndType.Restart);
});

Event(740, Default, function() {
    SetNetworkSyncState(Disabled);
    ChangeCamera(-1, -1);
});

Event(741, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    SetEventFlag(74000013, OFF);
    IfPlayerInoutMap(AND_01, true, 40, 0);
    IfMapCeremonyState(AND_01, Enabled, 40, 0, 10);
    IfConditionGroup(MAIN, FAIL, AND_01);
    SetEventFlag(743, ON);
    IfPlayerInoutMap(AND_02, true, 40, 0);
    IfMapCeremonyState(AND_02, Enabled, 40, 0, 10);
    IfPlayerStandingOnHit(AND_03, 4004120);
    IfConditionGroup(AND_02, FAIL, AND_03);
    IfConditionGroup(MAIN, PASS, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

Event(750, Restart, function() {
    SetNetworkSyncState(Disabled);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    RemoveItemFromPlayer(ItemType.Goods, 10110, 99);
    RemoveItemFromPlayer(ItemType.Goods, 10120, 99);
    RemoveItemFromPlayer(ItemType.Goods, 10200, 99);
    RemoveItemFromPlayer(ItemType.Goods, 10210, 99);
    RemoveItemFromPlayer(ItemType.Goods, 10220, 99);
    RemoveItemFromPlayer(ItemType.Goods, 10230, 99);
});

Event(970, Default, function(X0_4, X4_4, X8_4, X12_4) {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X0_4);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X0_4);
    SkipIfComparison(1, ComparisonType.Equal, X4_4, 0);
    AwardItemsIncludingClients(X4_4);
    SetNetworkSyncState(Disabled);
    WaitFixedTimeSeconds(5);
    SkipIfComparison(1, ComparisonType.Equal, X8_4, 0);
    AwardItemsIncludingClients(X8_4);
    SkipIfComparison(1, ComparisonType.Equal, X12_4, 0);
    AwardItemsIncludingClients(X12_4);
});

Event(6099, Default, function() {
    SetNetworkSyncState(Disabled);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6050);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6051);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6054);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6056);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6057);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6058);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6059);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6062);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6065);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6066);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6067);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6068);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6069);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6072);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6073);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6074);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6075);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6076);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6077);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6078);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6079);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6080);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6081);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6082);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6083);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 6084);
    IfConditionGroup(MAIN, PASS, AND_01);
    AwardAchievement(14);
    SetEventFlag(6099, ON);
});

Event(6900, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfPlayerHasdoesntHaveItem(AND_01, ItemType.Goods, 170, OwnershipState.DoesntOwn);
    IfPlayerHasdoesntHaveItem(AND_01, ItemType.Goods, 171, OwnershipState.DoesntOwn);
    EndIfConditionGroupStateUncompiled(EventEndType.End, PASS, AND_01);
    SetEventFlag(6030, ON);
});

Event(9510, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13500193);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 8240);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(9510, ON);
});

Event(9511, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13500194);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(9511, ON);
});

Event(9512, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13700194);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13300184);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(9512, ON);
});

Event(9520, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 13304194);
    RequestCharacterAICommand(3300194, 99, 2);
    RequestCharacterAIReplan(3300194);
    IfCharacterHasSpeffect(MAIN, 3300194, X0_4, true, ComparisonType.Equal, 1);
    RequestCharacterAICommand(3300194, -1, 2);
    RequestCharacterAIReplan(3300194);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X12_4);
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

Event(9525, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13304195);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13704192);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 14104190);
    IfConditionGroup(MAIN, PASS, OR_01);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13304195);
    RequestCharacterAICommand(3300195, 99, 2);
    RequestCharacterAIReplan(3300195);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13704192);
    RequestCharacterAICommand(3700192, 99, 2);
    RequestCharacterAIReplan(3700192);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 14104190);
    RequestCharacterAICommand(4100190, 99, 2);
    RequestCharacterAIReplan(4100190);
    IfCharacterHasSpeffect(OR_02, 3300195, X0_4, true, ComparisonType.Equal, 1);
    IfCharacterHasSpeffect(OR_02, 3700192, X0_4, true, ComparisonType.Equal, 1);
    IfCharacterHasSpeffect(OR_02, 4100191, X0_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, OR_02);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13304195);
    RequestCharacterAICommand(3300195, -1, 2);
    RequestCharacterAIReplan(3300195);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13704192);
    RequestCharacterAICommand(3700192, -1, 2);
    RequestCharacterAIReplan(3700192);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 14104191);
    RequestCharacterAICommand(4100190, -1, 2);
    RequestCharacterAIReplan(4100190);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X12_4);
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

Event(9530, Restart, function(X0_4, X4_2, X8_4, X12_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13304913);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13704191);
    IfConditionGroup(MAIN, PASS, OR_01);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13304913);
    RequestCharacterAICommand(3300193, 99, 2);
    RequestCharacterAIReplan(3300193);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13704191);
    RequestCharacterAICommand(3700191, 99, 2);
    RequestCharacterAIReplan(3700191);
    IfCharacterHasSpeffect(OR_02, 3300193, X0_4, true, ComparisonType.Equal, 1);
    IfCharacterHasSpeffect(OR_02, 3700191, X0_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, OR_02);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13304913);
    RequestCharacterAICommand(3300193, -1, 2);
    RequestCharacterAIReplan(3300193);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 13704191);
    RequestCharacterAICommand(3700191, -1, 2);
    RequestCharacterAIReplan(3700191);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X12_4);
    AwardGestureItem(X4_2, ItemType.Goods, X8_4);
    SetEventFlag(X12_4, ON);
});

Event(9540, Restart, function(X0_2, X4_4, X8_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13804196);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 13805196);
    IfEntityInoutsideRadiusOfEntity(AND_01, InsideOutsideState.Inside, 10000, 3800196, 20, 1);
    IfCharacterAIState(AND_02, 3800198, AIStateType.Combat, ComparisonType.Equal, 1);
    IfEntityInoutsideRadiusOfEntity(AND_02, InsideOutsideState.Inside, 10000, 3800198, 20, 1);
    IfPlayerIsNotInOwnWorldExcludesArena(AND_03, false);
    IfCharacterHPRatio(AND_03, 10000, ComparisonType.LessOrEqual, 0, ComparisonType.Equal, 1);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(AND_04, PASS, OR_01);
    IfConditionGroup(AND_04, PASS, AND_03);
    IfConditionGroup(MAIN, PASS, AND_04);
    SkipIfConditionGroupStateCompiled(2, FAIL, AND_01);
    RequestCharacterAICommand(3800196, 99, 2);
    RequestCharacterAIReplan(3800196);
    SkipIfConditionGroupStateCompiled(2, FAIL, AND_02);
    RequestCharacterAICommand(3800198, 99, 2);
    RequestCharacterAIReplan(3800198);
    WaitFixedTimeSeconds(1);
    SkipIfConditionGroupStateCompiled(2, FAIL, AND_01);
    RequestCharacterAICommand(3800196, -1, 2);
    RequestCharacterAIReplan(3800196);
    SkipIfConditionGroupStateCompiled(2, FAIL, AND_02);
    RequestCharacterAICommand(3800198, -1, 2);
    RequestCharacterAIReplan(3800198);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X8_4);
    AwardGestureItem(X0_2, ItemType.Goods, X4_4);
    SetEventFlag(X8_4, ON);
});

Event(9570, Restart, function(X0_4, X4_4) {
    SetNetworkSyncState(Disabled);
    IfCharacterHasSpeffect(MAIN, 10000, X4_4, true, ComparisonType.Equal, 1);
    AwardItemsIncludingClients(X0_4);
    WaitFixedTimeSeconds(1.5);
    EndUnconditionally(EventEndType.Restart);
});

// Sin System - NPC Sin monitor
Event(9000, Default, function(X0_4, X4_4, X8_4, X12_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, X4_4);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, X8_4);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, X12_4);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, X4_4);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, X8_4);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, X12_4);
    IfConditionGroup(MAIN, FAIL, OR_02);
    EndUnconditionally(EventEndType.Restart);
});

// Sin System - Clear NPC Sin
Event(9002, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X0_4);
    SetEventFlag(X0_4, OFF);
    SetEventFlag(70000050, ON);
    SetEventFlag(70000051, ON);
    SetEventFlag(70000052, ON);
    SetEventFlag(70000053, ON);
    SetEventFlag(70000054, ON);
    SetEventFlag(70000055, ON);
    SetEventFlag(70000056, ON);
    SetEventFlag(70000057, ON);
    SetEventFlag(70000058, ON);
    SetEventFlag(70000059, ON);
    SetEventFlag(70000060, ON);
    SetEventFlag(70000061, ON);
    SetEventFlag(70000062, ON);
    SetEventFlag(70000063, ON);
    SetEventFlag(70000064, ON);
    SetEventFlag(70000065, ON);
    SetEventFlag(70000066, ON);
    SetEventFlag(70000067, ON);
    SetEventFlag(70000068, ON);
    SetEventFlag(70000069, ON);
    SetEventFlag(70000070, ON);
    SetEventFlag(70000071, ON);
    SetEventFlag(70000072, ON);
    SetEventFlag(70000073, ON);
    SetEventFlag(70000074, ON);
    SetEventFlag(70000075, ON);
    SetEventFlag(70000076, ON);
    SetEventFlag(70000077, ON);
    SetEventFlag(70000078, ON);
    SetEventFlag(70000079, ON);
    SetEventFlag(70000080, ON);
    SetEventFlag(70000081, ON);
    SetEventFlag(70000082, ON);
    SetEventFlag(70000083, ON);
    SetEventFlag(70000084, ON);
    SetEventFlag(70000085, ON);
    SetEventFlag(70000086, ON);
    SetEventFlag(70000087, ON);
    SetEventFlag(70000088, ON);
    SetEventFlag(70000089, ON);
    SetEventFlag(70000090, ON);
    SetEventFlag(70000091, ON);
    SetEventFlag(70000092, ON);
    SetEventFlag(70000093, ON);
    SetEventFlag(70000094, ON);
    SetEventFlag(70000095, ON);
    SetEventFlag(70000096, ON);
    SetEventFlag(70000097, ON);
    SetEventFlag(70000098, ON);
    SetEventFlag(70000099, ON);
    SetEventFlag(70001073, ON);
    EndUnconditionally(EventEndType.Restart);
});

Event(9004, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1016);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70000052);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1036);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 70000053);
    IfEventFlag(AND_03, ON, TargetEventFlagType.EventFlag, 1056);
    IfEventFlag(AND_03, OFF, TargetEventFlagType.EventFlag, 70000054);
    IfEventFlag(AND_04, ON, TargetEventFlagType.EventFlag, 1076);
    IfEventFlag(AND_04, OFF, TargetEventFlagType.EventFlag, 70000055);
    IfEventFlag(AND_05, ON, TargetEventFlagType.EventFlag, 1096);
    IfEventFlag(AND_05, OFF, TargetEventFlagType.EventFlag, 70000056);
    IfEventFlag(AND_06, ON, TargetEventFlagType.EventFlag, 1116);
    IfEventFlag(AND_06, OFF, TargetEventFlagType.EventFlag, 70000057);
    IfEventFlag(AND_07, ON, TargetEventFlagType.EventFlag, 1136);
    IfEventFlag(AND_07, OFF, TargetEventFlagType.EventFlag, 70000058);
    IfEventFlag(AND_08, ON, TargetEventFlagType.EventFlag, 1156);
    IfEventFlag(AND_08, OFF, TargetEventFlagType.EventFlag, 70000059);
    IfEventFlag(AND_09, ON, TargetEventFlagType.EventFlag, 1176);
    IfEventFlag(AND_09, OFF, TargetEventFlagType.EventFlag, 70000060);
    IfEventFlag(AND_10, ON, TargetEventFlagType.EventFlag, 1196);
    IfEventFlag(AND_10, OFF, TargetEventFlagType.EventFlag, 70000061);
    IfEventFlag(AND_11, ON, TargetEventFlagType.EventFlag, 1216);
    IfEventFlag(AND_11, OFF, TargetEventFlagType.EventFlag, 70000062);
    IfEventFlag(AND_12, ON, TargetEventFlagType.EventFlag, 1236);
    IfEventFlag(AND_12, OFF, TargetEventFlagType.EventFlag, 70000063);
    IfEventFlag(AND_13, ON, TargetEventFlagType.EventFlag, 1256);
    IfEventFlag(AND_13, OFF, TargetEventFlagType.EventFlag, 70000064);
    IfEventFlag(AND_14, ON, TargetEventFlagType.EventFlag, 1276);
    IfEventFlag(AND_14, OFF, TargetEventFlagType.EventFlag, 70000065);
    IfEventFlag(AND_15, ON, TargetEventFlagType.EventFlag, 1296);
    IfEventFlag(AND_15, OFF, TargetEventFlagType.EventFlag, 70000066);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(OR_01, PASS, AND_03);
    IfConditionGroup(OR_01, PASS, AND_04);
    IfConditionGroup(OR_01, PASS, AND_05);
    IfConditionGroup(OR_01, PASS, AND_06);
    IfConditionGroup(OR_01, PASS, AND_07);
    IfConditionGroup(OR_01, PASS, AND_08);
    IfConditionGroup(OR_01, PASS, AND_09);
    IfConditionGroup(OR_01, PASS, AND_10);
    IfConditionGroup(OR_01, PASS, AND_11);
    IfConditionGroup(OR_01, PASS, AND_12);
    IfConditionGroup(OR_01, PASS, AND_13);
    IfConditionGroup(OR_01, PASS, AND_14);
    IfConditionGroup(OR_01, PASS, AND_15);
    IfConditionGroup(MAIN, PASS, OR_01);
    ClearCompiledConditionGroupState(0);
    SetEventFlag(X0_4, ON);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1016);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70000052);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1036);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 70000053);
    IfEventFlag(AND_03, ON, TargetEventFlagType.EventFlag, 1056);
    IfEventFlag(AND_03, OFF, TargetEventFlagType.EventFlag, 70000054);
    IfEventFlag(AND_04, ON, TargetEventFlagType.EventFlag, 1076);
    IfEventFlag(AND_04, OFF, TargetEventFlagType.EventFlag, 70000055);
    IfEventFlag(AND_05, ON, TargetEventFlagType.EventFlag, 1096);
    IfEventFlag(AND_05, OFF, TargetEventFlagType.EventFlag, 70000056);
    IfEventFlag(AND_06, ON, TargetEventFlagType.EventFlag, 1116);
    IfEventFlag(AND_06, OFF, TargetEventFlagType.EventFlag, 70000057);
    IfEventFlag(AND_07, ON, TargetEventFlagType.EventFlag, 1136);
    IfEventFlag(AND_07, OFF, TargetEventFlagType.EventFlag, 70000058);
    IfEventFlag(AND_08, ON, TargetEventFlagType.EventFlag, 1156);
    IfEventFlag(AND_08, OFF, TargetEventFlagType.EventFlag, 70000059);
    IfEventFlag(AND_09, ON, TargetEventFlagType.EventFlag, 1176);
    IfEventFlag(AND_09, OFF, TargetEventFlagType.EventFlag, 70000060);
    IfEventFlag(AND_10, ON, TargetEventFlagType.EventFlag, 1196);
    IfEventFlag(AND_10, OFF, TargetEventFlagType.EventFlag, 70000061);
    IfEventFlag(AND_11, ON, TargetEventFlagType.EventFlag, 1216);
    IfEventFlag(AND_11, OFF, TargetEventFlagType.EventFlag, 70000062);
    IfEventFlag(AND_12, ON, TargetEventFlagType.EventFlag, 1236);
    IfEventFlag(AND_12, OFF, TargetEventFlagType.EventFlag, 70000063);
    IfEventFlag(AND_13, ON, TargetEventFlagType.EventFlag, 1256);
    IfEventFlag(AND_13, OFF, TargetEventFlagType.EventFlag, 70000064);
    IfEventFlag(AND_14, ON, TargetEventFlagType.EventFlag, 1276);
    IfEventFlag(AND_14, OFF, TargetEventFlagType.EventFlag, 70000065);
    IfEventFlag(AND_15, ON, TargetEventFlagType.EventFlag, 1296);
    IfEventFlag(AND_15, OFF, TargetEventFlagType.EventFlag, 70000066);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(OR_01, PASS, AND_03);
    IfConditionGroup(OR_01, PASS, AND_04);
    IfConditionGroup(OR_01, PASS, AND_05);
    IfConditionGroup(OR_01, PASS, AND_06);
    IfConditionGroup(OR_01, PASS, AND_07);
    IfConditionGroup(OR_01, PASS, AND_08);
    IfConditionGroup(OR_01, PASS, AND_09);
    IfConditionGroup(OR_01, PASS, AND_10);
    IfConditionGroup(OR_01, PASS, AND_11);
    IfConditionGroup(OR_01, PASS, AND_12);
    IfConditionGroup(OR_01, PASS, AND_13);
    IfConditionGroup(OR_01, PASS, AND_14);
    IfConditionGroup(OR_01, PASS, AND_15);
    IfConditionGroup(MAIN, FAIL, OR_01);
    SetEventFlag(X0_4, OFF);
    EndUnconditionally(EventEndType.Restart);
});

Event(9005, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1316);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70000067);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1336);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 70000068);
    IfEventFlag(AND_03, ON, TargetEventFlagType.EventFlag, 1356);
    IfEventFlag(AND_03, OFF, TargetEventFlagType.EventFlag, 70000069);
    IfEventFlag(AND_04, ON, TargetEventFlagType.EventFlag, 1376);
    IfEventFlag(AND_04, OFF, TargetEventFlagType.EventFlag, 70000070);
    IfEventFlag(AND_05, ON, TargetEventFlagType.EventFlag, 1396);
    IfEventFlag(AND_05, OFF, TargetEventFlagType.EventFlag, 70000071);
    IfEventFlag(AND_06, ON, TargetEventFlagType.EventFlag, 1416);
    IfEventFlag(AND_06, OFF, TargetEventFlagType.EventFlag, 70000072);
    IfEventFlag(AND_07, ON, TargetEventFlagType.EventFlag, 1436);
    IfEventFlag(AND_07, OFF, TargetEventFlagType.EventFlag, 70000073);
    IfEventFlag(AND_08, ON, TargetEventFlagType.EventFlag, 1456);
    IfEventFlag(AND_08, OFF, TargetEventFlagType.EventFlag, 70000074);
    IfEventFlag(AND_09, ON, TargetEventFlagType.EventFlag, 1476);
    IfEventFlag(AND_09, OFF, TargetEventFlagType.EventFlag, 70000075);
    IfEventFlag(AND_10, ON, TargetEventFlagType.EventFlag, 1496);
    IfEventFlag(AND_10, OFF, TargetEventFlagType.EventFlag, 70000076);
    IfEventFlag(AND_11, ON, TargetEventFlagType.EventFlag, 1516);
    IfEventFlag(AND_11, OFF, TargetEventFlagType.EventFlag, 70000077);
    IfEventFlag(AND_12, ON, TargetEventFlagType.EventFlag, 1536);
    IfEventFlag(AND_12, OFF, TargetEventFlagType.EventFlag, 70000078);
    IfEventFlag(AND_13, ON, TargetEventFlagType.EventFlag, 1556);
    IfEventFlag(AND_13, OFF, TargetEventFlagType.EventFlag, 70000079);
    IfEventFlag(AND_14, ON, TargetEventFlagType.EventFlag, 1576);
    IfEventFlag(AND_14, OFF, TargetEventFlagType.EventFlag, 70000080);
    IfEventFlag(AND_15, ON, TargetEventFlagType.EventFlag, 1596);
    IfEventFlag(AND_15, OFF, TargetEventFlagType.EventFlag, 70000081);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(OR_01, PASS, AND_03);
    IfConditionGroup(OR_01, PASS, AND_04);
    IfConditionGroup(OR_01, PASS, AND_05);
    IfConditionGroup(OR_01, PASS, AND_06);
    IfConditionGroup(OR_01, PASS, AND_07);
    IfConditionGroup(OR_01, PASS, AND_08);
    IfConditionGroup(OR_01, PASS, AND_09);
    IfConditionGroup(OR_01, PASS, AND_10);
    IfConditionGroup(OR_01, PASS, AND_11);
    IfConditionGroup(OR_01, PASS, AND_12);
    IfConditionGroup(OR_01, PASS, AND_13);
    IfConditionGroup(OR_01, PASS, AND_14);
    IfConditionGroup(OR_01, PASS, AND_15);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
    ClearCompiledConditionGroupState(0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1316);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70000067);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1336);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 70000068);
    IfEventFlag(AND_03, ON, TargetEventFlagType.EventFlag, 1356);
    IfEventFlag(AND_03, OFF, TargetEventFlagType.EventFlag, 70000069);
    IfEventFlag(AND_04, ON, TargetEventFlagType.EventFlag, 1376);
    IfEventFlag(AND_04, OFF, TargetEventFlagType.EventFlag, 70000070);
    IfEventFlag(AND_05, ON, TargetEventFlagType.EventFlag, 1396);
    IfEventFlag(AND_05, OFF, TargetEventFlagType.EventFlag, 70000071);
    IfEventFlag(AND_06, ON, TargetEventFlagType.EventFlag, 1416);
    IfEventFlag(AND_06, OFF, TargetEventFlagType.EventFlag, 70000072);
    IfEventFlag(AND_07, ON, TargetEventFlagType.EventFlag, 1436);
    IfEventFlag(AND_07, OFF, TargetEventFlagType.EventFlag, 70000073);
    IfEventFlag(AND_08, ON, TargetEventFlagType.EventFlag, 1456);
    IfEventFlag(AND_08, OFF, TargetEventFlagType.EventFlag, 70000074);
    IfEventFlag(AND_09, ON, TargetEventFlagType.EventFlag, 1476);
    IfEventFlag(AND_09, OFF, TargetEventFlagType.EventFlag, 70000075);
    IfEventFlag(AND_10, ON, TargetEventFlagType.EventFlag, 1496);
    IfEventFlag(AND_10, OFF, TargetEventFlagType.EventFlag, 70000076);
    IfEventFlag(AND_11, ON, TargetEventFlagType.EventFlag, 1516);
    IfEventFlag(AND_11, OFF, TargetEventFlagType.EventFlag, 70000077);
    IfEventFlag(AND_12, ON, TargetEventFlagType.EventFlag, 1536);
    IfEventFlag(AND_12, OFF, TargetEventFlagType.EventFlag, 70000078);
    IfEventFlag(AND_13, ON, TargetEventFlagType.EventFlag, 1556);
    IfEventFlag(AND_13, OFF, TargetEventFlagType.EventFlag, 70000079);
    IfEventFlag(AND_14, ON, TargetEventFlagType.EventFlag, 1576);
    IfEventFlag(AND_14, OFF, TargetEventFlagType.EventFlag, 70000080);
    IfEventFlag(AND_15, ON, TargetEventFlagType.EventFlag, 1596);
    IfEventFlag(AND_15, OFF, TargetEventFlagType.EventFlag, 70000081);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(OR_01, PASS, AND_03);
    IfConditionGroup(OR_01, PASS, AND_04);
    IfConditionGroup(OR_01, PASS, AND_05);
    IfConditionGroup(OR_01, PASS, AND_06);
    IfConditionGroup(OR_01, PASS, AND_07);
    IfConditionGroup(OR_01, PASS, AND_08);
    IfConditionGroup(OR_01, PASS, AND_09);
    IfConditionGroup(OR_01, PASS, AND_10);
    IfConditionGroup(OR_01, PASS, AND_11);
    IfConditionGroup(OR_01, PASS, AND_12);
    IfConditionGroup(OR_01, PASS, AND_13);
    IfConditionGroup(OR_01, PASS, AND_14);
    IfConditionGroup(OR_01, PASS, AND_15);
    IfConditionGroup(MAIN, FAIL, OR_01);
    SetEventFlag(X0_4, OFF);
    EndUnconditionally(EventEndType.Restart);
});

// Set when Hostility 2 is ON for 70001073
Event(9006, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1816);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70001073);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
    ClearCompiledConditionGroupState(0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1816);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 70001073);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(MAIN, FAIL, OR_01);
    SetEventFlag(X0_4, OFF);
    EndUnconditionally(EventEndType.Restart);
});

// Sin - Shrine Handmaid Price Increase
Event(9010, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 70000061);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 74000295);
    SetEventFlag(74000295, OFF);
    GotoUnconditionally(Label.LABEL20);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 74000294);
    SetEventFlag(74000294, OFF);
    GotoUnconditionally(Label.LABEL20);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 74000293);
    SetEventFlag(74000293, OFF);
    GotoUnconditionally(Label.LABEL20);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 74000292);
    SetEventFlag(74000292, OFF);
    GotoUnconditionally(Label.LABEL20);
    SkipIfEventFlag(2, OFF, TargetEventFlagType.EventFlag, 74000291);
    SetEventFlag(74000291, OFF);
    GotoUnconditionally(Label.LABEL20);
    SkipIfEventFlag(4, OFF, TargetEventFlagType.EventFlag, 74000290);
    SetEventFlag(74000290, OFF);
    BatchSetNetworkconnectedEventFlags(1195, 1199, OFF);
    SetNetworkconnectedEventFlag(1195, ON);
    GotoUnconditionally(Label.LABEL20);
    Label20();
    SetEventFlag(70000061, OFF);
    EndUnconditionally(EventEndType.Restart);
});

Event(9011, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 700);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 50006020);
    IfConditionGroup(MAIN, PASS, AND_01);
    GotoIfEventFlag(Label.LABEL1, ON, TargetEventFlagType.EventFlag, 14000110);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 9307);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 9309);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 9314);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 9318);
    GotoIfConditionGroupStateUncompiled(Label.LABEL0, PASS, AND_02);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9307);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9307);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9309);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9309);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9314);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9314);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9318);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9318);
    GotoUnconditionally(Label.LABEL1);
    Label0();
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 14000110);
    GotoUnconditionally(Label.LABEL1);
    Label1();
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 50006020);
    IfConditionGroup(OR_01, PASS, OR_02);
    IfConditionGroup(MAIN, PASS, OR_01);
    SkipIfConditionGroupStateCompiled(2, FAIL, OR_02);
    SetEventFlag(X0_4, OFF);
    EndUnconditionally(EventEndType.Restart);
    SetEventFlag(X0_4, ON);
    EndUnconditionally(EventEndType.Restart);
});

Event(9012, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    IfPlayerGender(MAIN, Gender.Male);
    SetNetworkconnectedEventFlag(9013, ON);
    IfPlayerGender(MAIN, Gender.Female);
    SetNetworkconnectedEventFlag(9013, OFF);
    EndUnconditionally(EventEndType.Restart);
});

Event(9014, Restart, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    GotoIfEventFlag(Label.LABEL0, ON, TargetEventFlagType.EventFlag, 9014);
    GotoIfEventFlag(Label.LABEL0, OFF, TargetEventFlagType.EventFlag, 13300761);
    DisplayGenericDialog(13007000, PromptType.OKCANCEL, NumberofOptions.OneButton, 10000, 0);
    EndUnconditionally(EventEndType.End);
    Label0();
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 9014);
    SetEventFlag(9014, ON);
});

Event(9015, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 70000118);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1124);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1126);
    IfConditionGroup(AND_01, PASS, OR_01);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9303);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 9314);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(70000118, ON);
});

Event(9016, Restart, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(9017, OFF);
    IfPlayersClass(MAIN, ClassType.Cleric);
    SetEventFlag(9017, ON);
    IfPlayersClass(AND_01, ClassType.Cleric);
    IfConditionGroup(MAIN, FAIL, AND_01);
    EndUnconditionally(EventEndType.Restart);
});

Event(9018, Restart, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 73300202);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13204190);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13005710);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(73300202, ON);
});

Event(9019, Restart, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X0_4);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13304192);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13014192);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
});

Event(9020, Default, function(X0_4, X4_4, X8_4, X12_4, X16_1, X17_1) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfBatchEventFlags(EventEndType.End, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, X4_4, X8_4);
    SetEventFlag(X0_4, OFF);
    IfPlayerInoutMap(OR_01, false, X16_1, X17_1);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 74000013);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, X12_4);
    IfConditionGroup(AND_01, PASS, OR_01);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(OR_02, false, X16_1, X17_1);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 74000013);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, X12_4);
    IfConditionGroup(AND_02, PASS, OR_02);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

Event(9080, Default, function(X0_1, X4_4, X8_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfPlayerHasdoesntHaveItemIncludingBbox(AND_01, X0_1, X4_4, OwnershipState.Owns);
    EndIfConditionGroupStateUncompiled(EventEndType.End, PASS, AND_01);
    SetEventFlag(X8_4, OFF);
});

// Hawkwood - Flag Check
Event(9100, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1103);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1103);
    EndUnconditionally(EventEndType.Restart);
});

// Sirris - Flags
Event(9101, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfPlayerInoutMap(OR_01, true, 34, 1);
    IfPlayerInoutMap(OR_01, true, 30, 1);
    IfPlayerInoutMap(OR_01, true, 33, 0);
    IfPlayerInoutMap(OR_01, true, 35, 0);
    IfConditionGroup(MAIN, PASS, OR_01);
    GotoIfPlayerInoutMap(Label.LABEL0, true, 34, 1);
    GotoIfPlayerInoutMap(Label.LABEL1, true, 30, 1);
    GotoIfPlayerInoutMap(Label.LABEL2, true, 33, 0);
    GotoIfPlayerInoutMap(Label.LABEL3, true, 35, 0);
    Label0();
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1128);
    IfConditionGroup(AND_01, PASS, OR_02);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73500150);
    SkipIfConditionGroupStateUncompiled(1, FAIL, AND_01);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 34, 1);
    EndUnconditionally(EventEndType.Restart);
    Label1();
    IfEventFlag(OR_03, ON, TargetEventFlagType.EventFlag, 1128);
    IfConditionGroup(AND_02, PASS, OR_03);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73500150);
    SkipIfConditionGroupStateUncompiled(1, FAIL, AND_02);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 30, 1);
    EndUnconditionally(EventEndType.Restart);
    Label2();
    IfEventFlag(OR_04, ON, TargetEventFlagType.EventFlag, 1124);
    IfEventFlag(OR_04, ON, TargetEventFlagType.EventFlag, 1126);
    IfEventFlag(OR_04, ON, TargetEventFlagType.EventFlag, 1128);
    IfConditionGroup(AND_03, PASS, OR_04);
    IfEventFlag(AND_03, OFF, TargetEventFlagType.EventFlag, 73500150);
    SkipIfConditionGroupStateUncompiled(1, FAIL, AND_03);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 33, 0);
    EndUnconditionally(EventEndType.Restart);
    Label3();
    IfEventFlag(OR_05, ON, TargetEventFlagType.EventFlag, 1124);
    IfEventFlag(OR_05, ON, TargetEventFlagType.EventFlag, 1126);
    IfEventFlag(OR_05, ON, TargetEventFlagType.EventFlag, 1128);
    IfConditionGroup(AND_04, PASS, OR_05);
    IfEventFlag(AND_04, OFF, TargetEventFlagType.EventFlag, 73500150);
    SkipIfConditionGroupStateUncompiled(1, FAIL, AND_04);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 35, 0);
    EndUnconditionally(EventEndType.Restart);
});

// Greirat - Quest Stage flags
Event(9102, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfPlayerInoutMap(OR_01, true, 31, 0); // Undead Settlement
    IfPlayerInoutMap(OR_01, true, 37, 0); // Irithyll
    IfConditionGroup(MAIN, PASS, OR_01);
    GotoIfPlayerInoutMap(Label.LABEL0, true, 31, 0);
    GotoIfPlayerInoutMap(Label.LABEL1, true, 37, 0);
    
    // Undead Settlement
    Label0();
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 1202);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 31, 0);
    EndUnconditionally(EventEndType.Restart);
    
    // Irithyll
    Label1();
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 1204);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 37, 0);
    EndUnconditionally(EventEndType.Restart);
});

// Orbeck - Flags
Event(9103, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.Restart, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1223);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1223);
    EndUnconditionally(EventEndType.Restart);
});

// Irina/Eygon - Flags
Event(9104, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1301); 
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1303);
    IfConditionGroup(AND_01, PASS, OR_01);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1295); // "Passive"
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1298); // "Killed"
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1301);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1303);
    IfConditionGroup(AND_02, PASS, OR_02);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1295); // "Passive"
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1298); // "Killed"
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Anri - Flags
Event(9105, Default, function(X0_4, X4_4, X8_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    SetEventFlag(X4_4, OFF);
    SetEventFlag(X8_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1341); 
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 9311); // Deacons of the Deep
    IfConditionGroup(MAIN, PASS, AND_01);
    GotoIfEventFlag(Label.LABEL10, OFF, TargetEventFlagType.EventFlag, 9013);
    SetEventFlag(X0_4, ON);
    GotoUnconditionally(Label.LABEL20);
    Label10();
    SetEventFlag(X4_4, ON);
    GotoUnconditionally(Label.LABEL20);
    Label20();
    SetEventFlag(X8_4, ON);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1341);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 9311);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Sirris - Flags
Event(9106, Restart, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1130);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 1138);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1130);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 1138);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Yuria - Flags
Event(9107, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1042);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1042);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Yuria - Flags
Event(9108, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfBatchEventFlags(AND_01, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1041, 1042);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfBatchEventFlags(AND_02, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1041, 1042);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Yuria - Flags
Event(9109, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1042);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1042);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1055);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// Yuria - Flags
Event(9110, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfBatchEventFlags(AND_02, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1041, 1042);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1058);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1056);
    IfConditionGroup(AND_02, PASS, OR_02);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfBatchEventFlags(OR_01, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1043, 1044);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
    IfBatchEventFlags(AND_04, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1041, 1042);
    IfEventFlag(OR_04, ON, TargetEventFlagType.EventFlag, 1058);
    IfEventFlag(OR_04, ON, TargetEventFlagType.EventFlag, 1056);
    IfConditionGroup(AND_04, PASS, OR_04);
    IfConditionGroup(OR_03, PASS, AND_04);
    IfBatchEventFlags(OR_03, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1043, 1044);
    IfConditionGroup(MAIN, FAIL, OR_03);
    EndUnconditionally(EventEndType.Restart);
});

// Anri - Flags
Event(9111, Default, function(X0_4, X4_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    SetEventFlag(X4_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1347);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1355);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 13700651);
    IfConditionGroup(MAIN, PASS, AND_01);
    GotoIfEventFlag(Label.LABEL10, OFF, TargetEventFlagType.EventFlag, 9013);
    SetEventFlag(X0_4, ON);
    GotoUnconditionally(Label.LABEL20);
    Label10();
    SetEventFlag(X4_4, ON);
    GotoUnconditionally(Label.LABEL20);
    Label20();
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1347);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1355);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 13700651);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

// 
Event(9112, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 8200);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 8200);
    EndUnconditionally(EventEndType.Restart);
});

// Lapp - Flags
Event(9113, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfPlayerInoutMap(AND_01, true, 50, 0);
    IfBatchEventFlags(AND_01, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1803, 1804);
    IfPlayerInoutMap(AND_02, true, 51, 0);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1811);
    IfPlayerInoutMap(AND_03, true, 51, 1);
    IfEventFlag(AND_03, ON, TargetEventFlagType.EventFlag, 1811);
    IfConditionGroup(OR_01, PASS, AND_01);
    IfConditionGroup(OR_01, PASS, AND_02);
    IfConditionGroup(OR_01, PASS, AND_03);
    IfConditionGroup(MAIN, PASS, OR_01);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(AND_04, true, 50, 0);
    IfBatchEventFlags(AND_04, LogicalOperationType.NotAllOFF, TargetEventFlagType.EventFlag, 1803, 1804);
    IfPlayerInoutMap(AND_05, true, 51, 0);
    IfEventFlag(AND_05, ON, TargetEventFlagType.EventFlag, 1811);
    IfPlayerInoutMap(AND_06, true, 51, 1);
    IfEventFlag(AND_06, ON, TargetEventFlagType.EventFlag, 1811);
    IfConditionGroup(OR_02, PASS, AND_04);
    IfConditionGroup(OR_02, PASS, AND_05);
    IfConditionGroup(OR_02, PASS, AND_06);
    IfConditionGroup(MAIN, FAIL, OR_02);
    EndUnconditionally(EventEndType.Restart);
});

// Shira - Flags
Event(9114, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1821);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1821);
    EndUnconditionally(EventEndType.Restart);
});

// Boss Kill Count Tracker
// <trigger flag>, <end flag>, <set flag>, <bits>, <bits>, <threshold>, <compare value>
Event(9120, Restart, function(X0_4, X4_4, X8_4, X12_4, X16_1, X20_4, X24_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X4_4);
    
    IfMapCeremonyState(AND_01, Disabled, 40, 0, 0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, X0_4);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    // Check bosses
    IfEventFlag(OR_01, OFF, TargetEventFlagType.EventFlag, X0_4);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9300);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9300);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9301);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9301);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9302);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9302);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9303);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9303);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9304);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9304);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9305);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9305);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9306);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9306);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9307);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9307);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9308);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9308);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9309);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9309);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9311);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9311);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9313);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9313);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9314);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9314);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9315);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9315);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9317);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9317);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9318);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9318);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9319);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9319);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9320);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9320);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9321);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9321);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9322);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9322);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9323);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9323);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9324);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9324);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9325);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9325);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9326);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9326);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9327);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9327);
    GotoIfComparison(Label.LABEL0, ComparisonType.NotEqual, X24_4, 1);
    
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9300, 9309);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 9311);
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9313, 9315);
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9317, 9321);
    
    // DLC 1
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 6951);
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9322, 9323);
    
    // DLC 2
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 6952);
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9324, 9327);
    
    IfConditionGroup(OR_01, PASS, AND_02);
    
    Label0();
    IfConditionGroup(MAIN, PASS, OR_01);
    EndIfEventFlag(EventEndType.Restart, OFF, TargetEventFlagType.EventFlag, X0_4);
    IncrementEventValue(X8_4, X12_4, X20_4);
    IfEventValue(OR_02, X8_4, X16_1, ComparisonType.Equal, X20_4);
    EndIfConditionGroupStateUncompiled(EventEndType.Restart, FAIL, OR_02);
    SetEventFlag(X4_4, ON);
});

Event(690, Default, function(X0_4, X4_4, X8_4, X12_4) {
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventIDSlotNumber, 0);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X12_4);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 2);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 2);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 3);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 3);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 4);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 4);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 5);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 5);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 6);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 6);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 7);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 7);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 8);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 8);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 9);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 9);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 10);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 10);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 11);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 11);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 12);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 12);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 13);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 13);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 14);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 14);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 15);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 15);
    IfConditionGroup(MAIN, PASS, OR_01);
    IncrementEventValue(X0_4, X4_4, X8_4);
    EndUnconditionally(EventEndType.Restart);
});

Event(840, Default, function(X0_4, X4_4, X8_4, X12_4) {
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X0_4);
    SkipIfEventFlag(2, ON, TargetEventFlagType.EventFlag, 844);
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 847);
    RotateCharacter(10000, X8_4, -1, false);
    ForceAnimationPlayback(10000, X4_4, false, false, false, 0, 1);
    WaitFixedTimeSeconds(1);
    PlaySE(10000, SoundType.s_SFX, 123456789);
    WaitFixedTimeSeconds(4);
    SkipIfComparison(1, ComparisonType.Equal, X12_4, -1);
    ForceAnimationPlayback(10000, X12_4, true, false, false, 0, 1);
    EndUnconditionally(EventEndType.Restart);
});

Event(870, Default, function(X0_1, X4_4) {
    IfPlayersCovenant(MAIN, X0_1);
    SetEventFlag(X4_4, ON);
    IfPlayersCovenant(AND_01, X0_1);
    IfConditionGroup(MAIN, FAIL, AND_01);
    SetEventFlag(X4_4, OFF);
    EndUnconditionally(EventEndType.Restart);
});

//------------------------------------------------------
// Cinders
//------------------------------------------------------
// Setup - Host only
Event(9600, Default, function() {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    
    InitializeEvent(0, 9610, 0); // Game Flags - Once
    InitializeEvent(0, 9611, 0); // Game Flags - On Load
    
    InitializeEvent(0, 9620, 10000); // No Hit State
    InitializeEvent(0, 9621, 10000); // Deathless Run State
    InitializeEvent(0, 9622, 10000); // Hitless Run State
    
    // Crow Trades
    InitializeCrowTrade(ItemType.Goods, 2162, 80000, -1, 74000996);
    InitializeCrowTrade(ItemType.Goods, 2163, 80100, -1, 74000996);
    InitializeCrowTrade(ItemType.Goods, 2164, 80200, -1, 74000996);
    
    // Curses - Enable
    InitializeEvent(0, 9630, 25000157, 250001200, 250001201); // Curse of Frailty
    InitializeEvent(1, 9630, 25000150, 250001300, 250001301); // Curse of Obscurity
    InitializeEvent(2, 9630, 25000151, 250001400, 250001401); // Curse of Vitality
    InitializeEvent(3, 9630, 25000152, 250001100, 250001101); // Curse of Wrath
    InitializeEvent(4, 9630, 25000153, 250001000, 250001001); // Curse of Pride
    InitializeEvent(5, 9630, 25000155, 250001600, 250001601); // Curse of Fortitude
    InitializeEvent(6, 9630, 25000156, 250001700, 250001701); // Curse of Gluttony
    InitializeEvent(7, 9630, 25000154, 250001500, 250001501); // Curse of Simplicity
    InitializeEvent(8, 9630, 25000158, 250001800, 250001801); // Curse of Enfeeblement
    InitializeEvent(9, 9630, 25000159, 250001900, 250001901); // Curse of Impermanence
    InitializeEvent(10, 9630, 25000100, 250003000, 250003001); // Curse of Attraction
    
    // Curses - Disable
    InitializeEvent(0, 9631, 25000157, 250001200, 250001201); // Curse of Frailty
    InitializeEvent(1, 9631, 25000150, 250001300, 250001301); // Curse of Obscurity
    InitializeEvent(2, 9631, 25000151, 250001400, 250001401); // Curse of Vitality
    InitializeEvent(3, 9631, 25000152, 250001100, 250001101); // Curse of Wrath
    InitializeEvent(4, 9631, 25000153, 250001000, 250001001); // Curse of Pride
    InitializeEvent(5, 9631, 25000155, 250001600, 250001601); // Curse of Fortitude
    InitializeEvent(6, 9631, 25000156, 250001700, 250001701); // Curse of Gluttony
    InitializeEvent(7, 9631, 25000154, 250001500, 250001501); // Curse of Simplicity
    InitializeEvent(8, 9631, 25000158, 250001800, 250001801); // Curse of Enfeeblement
    InitializeEvent(9, 9631, 25000159, 250001900, 250001901); // Curse of Impermanence
    InitializeEvent(10, 9631, 25000100, 250003000, 250003001); // Curse of Attraction

    // Covenant Material Drops
    InitializeEvent(0, 9640, 10000, 160100232, 800010000, 800010020); // Thieves' Code
    InitializeEvent(1, 9640, 10000, 160100242, 800010100, 800010120); // Darkmoon Faithful
    InitializeEvent(2, 9640, 10000, 160100252, 800010200, 800010220); // Spears of the Church
    InitializeEvent(3, 9640, 10000, 160100262, 800010300, 800010320); // Watchdogs of Farron
    InitializeEvent(4, 9640, 10000, 160100272, 800010400, 800010420); // Aldrich Faithful
    InitializeEvent(5, 9640, 10000, 160100292, 800010500, 800010520); // Warrior of Sunlight
    InitializeEvent(6, 9640, 10000, 160100302, 800010600, 800010620); // Mound-makers
    InitializeEvent(7, 9640, 10000, 160100322, 800010700, 800010720); // Rosaria's Fingers
    InitializeEvent(8, 9640, 10000, 160100332, 800010800, 800010820); // Chaos Servant
    InitializeEvent(9, 9640, 10000, 160100342, 800010900, 800010920); // Vinheim Scholars
    InitializeEvent(10, 9640, 10000, 160100352, 800011000, 800011020); // Pilgrims of Dark
    InitializeEvent(12, 9640, 10000, 160100372, 800011100, 800011120); // Dragon Remnants
    InitializeEvent(11, 9640, 10000, 160100362, 800011200, 800011220); // Way of White
    InitializeEvent(13, 9640, 10000, 160100382, 800011300, 800011320); // Blue Sentinels
    InitializeEvent(14, 9640, 10000, 160100392, 800011400, 800011420); // Way of Blue
    InitializeEvent(15, 9640, 10000, 160100402, 800011500, 800011520); // Company of Champions
    
    // Boss Revival
    InitializeEvent(0, 9660, 0); // Corrupted Gundyr
    InitializeEvent(0, 9661, 0); // Vordt
    InitializeEvent(0, 9662, 0); // Curse-rotted Greatwood
    InitializeEvent(0, 9663, 0); // Crystal Sage
    InitializeEvent(0, 9664, 0); // Deacons of the Deep
    InitializeEvent(0, 9665, 0); // Abyss Watchers
    InitializeEvent(0, 9666, 0); // High Lord Wolnir
    InitializeEvent(0, 9667, 0); // Old Demon King
    InitializeEvent(0, 9668, 0); // Pontiff Sulyvahn
    InitializeEvent(0, 9669, 0); // Aldrich
    InitializeEvent(0, 9670, 0); // Yhorm the Giant
    InitializeEvent(0, 9671, 0); // Dancer
    InitializeEvent(0, 9672, 0); // Oceiros
    InitializeEvent(0, 9673, 0); // Dragonslayer Armour
    InitializeEvent(0, 9674, 0); // Ancient Wyvern
    InitializeEvent(0, 9675, 0); // Nameless King
    InitializeEvent(0, 9676, 0); // Champion Gundyr
    InitializeEvent(0, 9677, 0); // Twin Princes
    InitializeEvent(0, 9678, 0); // Soul of Cinder
    InitializeEvent(0, 9679, 0); // Sister Friede
    InitializeEvent(0, 9680, 0); // Lordran Remnants
    InitializeEvent(0, 9681, 0); // Demon Prince
    InitializeEvent(0, 9682, 0); // Darkeater Midir
    InitializeEvent(0, 9683, 0); // Slave Knight Gael
    InitializeEvent(0, 9684, 0); // Halflight
    InitializeEvent(0, 9685, 0); // Champions of Yore
    
    InitializeEvent(0, 9700, 0); // Crown of the Great Lord
});

// Setup - Host and Client
Event(9601, Default, function() {
    InitializeEvent(0, 9650, 0); // Pyromancer's Parting Flame
    InitializeEvent(0, 9651, 10000, 160500060); // Numbness
    InitializeEvent(0, 9652, 10000); // Event Flag Tool
    InitializeEvent(0, 9653, 10000, 160700310, 20001); // Devil's Trumpet
    InitializeEvent(1, 9653, 10000, 160700320, 20002); // Moonflower
    InitializeEvent(0, 9654, 0); // Illusion - Skeleton Form - Head
    InitializeEvent(0, 9655, 0); // Illusion - Skeleton Form - Body
});

//------------------------------------------------
// Game Flags - Once
//------------------------------------------------
Event(9610, Default, function(X0_4, X4_4) {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 25000099);
    
    // Curses/Marks
    SetEventFlag(25000100, OFF); // Mark of Sanguis
    SetEventFlag(25000101, OFF); // Mark of Canis
    SetEventFlag(25000102, OFF); // Mark of Piscis
    SetEventFlag(25000103, OFF); // Mark of Prismatica
   
    SetEventFlag(25000150, OFF); // Curse of Obscurity
    SetEventFlag(25000151, OFF); // Curse of Vitality
    SetEventFlag(25000152, OFF); // Curse of Wrath
    SetEventFlag(25000153, OFF); // Curse of Pride
    SetEventFlag(25000154, OFF); // Curse of Simplicity
    SetEventFlag(25000155, OFF); // Curse of Fortitude
    SetEventFlag(25000156, OFF); // Curse of Gluttony
    SetEventFlag(25000157, OFF); // Curse of Frailty
    SetEventFlag(25000158, OFF); // Curse of Enfeeblement
    SetEventFlag(25000159, OFF); // Curse of Impermanence
    
    // Game State
    SetEventFlag(25000030, ON); // Deathless Run
    SetEventFlag(25000031, ON); // Hitless Run
    SetEventFlag(74000171, 1) // Transposition Enabled
    
    // Menu Options
    SetEventFlag(25000050, OFF); // Claimed Talisman of Power
    SetEventFlag(25000051, OFF); // Claimed Talisman of Insanity
    SetEventFlag(25009520, OFF); // Magnum Ursus - Dark Soul turn-in
    
    // Enable Firelink Shrine bonfire
    SetBonfireWarpingState(4001950, 60430, Enabled);
    SetEventFlag(74000010, OFF);
    SetEventFlag(14000101, ON);
    SetEventFlag(13100004, ON);
    SetEventFlag(13000000, ON);
    
    // Boss Kill Flags
    SetEventFlag(25001001, OFF); // Corrupted Gundyr
    SetEventFlag(25001002, OFF); // Vordt of the Boreal Valley
    SetEventFlag(25001003, OFF); // Curse-rotted Greatwood
    SetEventFlag(25001004, OFF); // Crystal Sage
    SetEventFlag(25001005, OFF); // Deacons of the Deep
    SetEventFlag(25001006, OFF); // Abyss Watchers
    SetEventFlag(25001007, OFF); // High Lord Wolnir
    SetEventFlag(25001008, OFF); // Old Demon King
    SetEventFlag(25001009, OFF); // Pontiff Sulyvahn
    SetEventFlag(25001010, OFF); // Aldrich, Devourer of Gods
    SetEventFlag(25001011, OFF); // Yhorm the Giant
    SetEventFlag(25001012, OFF); // Dancer of the Boreal Valley
    SetEventFlag(25001013, OFF); // Oceiros, the Consumed King
    SetEventFlag(25001014, OFF); // Dragonslayer Armour
    SetEventFlag(25001015, OFF); // Ancient Wyvern
    SetEventFlag(25001016, OFF); // Nameless King
    SetEventFlag(25001017, OFF); // Champion Gundyr
    SetEventFlag(25001018, OFF); // Twin Princes
    SetEventFlag(25001019, OFF); // Soul of Cinder
    SetEventFlag(25001020, OFF); // Sister Friede
    SetEventFlag(25001021, OFF); // Lordran Remnants
    SetEventFlag(25001022, OFF); // Demon Prince
    SetEventFlag(25001023, OFF); // Darkeater Midir 
    SetEventFlag(25001024, OFF); // Slave Knight Gael
    SetEventFlag(25001025, OFF); // Halflight

    SetEventFlag(25000099, ON); // Execution flag
});

//------------------------------------------------
// Game Flags - On Load
//------------------------------------------------
Event(9611, Restart, function(X0_4, X4_4) {
    SetEventFlag(25008900, OFF); 
    SetEventFlag(25008901, OFF); 
    SetEventFlag(25008902, OFF); 
    SetEventFlag(25008904, OFF);
    
    RandomlySetEventFlagInRange(25008900, 25008902, ON);
    
    BatchSetEventFlags(25000011, 25000015, OFF); // Reset NG+ flags
    
    IfGameCycle(MAIN, ComparisonType.GreaterOrEqual, 1);
    SetEventFlag(25000011, ON); // NG+1
    
    IfGameCycle(MAIN, ComparisonType.GreaterOrEqual, 2);
    SetEventFlag(25000012, ON); // NG+2
    
    IfGameCycle(MAIN, ComparisonType.GreaterOrEqual, 3);
    SetEventFlag(25000013, ON); // NG+3
    
    IfGameCycle(MAIN, ComparisonType.GreaterOrEqual, 4);
    SetEventFlag(25000014, ON); // NG+4
    
    IfGameCycle(MAIN, ComparisonType.GreaterOrEqual, 5);
    SetEventFlag(25000015, ON); // NG+5
});

// No Hit State
Event(9620, Restart, function(X0_4) {
    SetEventFlag(25006000, 0);
    IfCharacterHasSpeffect(MAIN, X0_4, 112060, true, ComparisonType.Equal, 1);
    SetEventFlag(25006000, 1);
});

// Deathless Run State
Event(9621, Default, function(X0_4) {
    IfCharacterHasSpeffect(MAIN, X0_4, 112100, true, ComparisonType.Equal, 1);
    SetEventFlag(25000030, OFF);
});

// Hitless Run State
Event(9622, Default, function(X0_4) {
    IfCharacterHasSpeffect(MAIN, X0_4, 112101, true, ComparisonType.Equal, 1);
    SetEventFlag(25000031, OFF);
});

// Enable Curse
Event(9630, Restart, function(X0_4, X4_4, X8_4) {
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X0_4);
    SetSpeffect(10000, X4_4);
    SetSpeffect(10000, X8_4);
});

// Disable Curse
Event(9631, Restart, function(X0_4, X4_4, X8_4) {
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, X0_4);
    ClearSpeffect(10000, X4_4);
    ClearSpeffect(10000, X8_4);
});

// Enable Curse - Map Specific
Event(9632, Restart, function(X0_4, X4_4, X8_4, X12_1, X16_1) {
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, X0_4);
    IfPlayerInoutMap(MAIN, true, X12_1, X16_1);
    SetSpeffect(10000, X4_4);
    SetSpeffect(10000, X8_4);
});

// Covenant - Trigger Covenant Item Drop
Event(9640, Default, function(X0_4, X4_4, X8_4, X12_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    // Normal Rate
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3502930, 1); // Area: Graveyard 1
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3502931, 1); // Area: Graveyard 2
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3502932, 1); // Area: Deacons
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3102930, 1); // Area: Rats
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 3902930, 1); // Area: Giant + Rats
    IfInoutsideArea(OR_01, InsideOutsideState.Inside, 10000, 5002930, 1); // Area: Murkmen
    SkipIfConditionGroupStateUncompiled(1, PASS, OR_01);
    AwardItemsIncludingClients(X8_4);
    
    // Reduced Rate
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 3502930, 1); // Area: Graveyard 1
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 3502931, 1); // Area: Graveyard 2
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 3502932, 1); // Area: Deacons
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 3102930, 1); // Area: Rats
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 3902930, 1); // Area: Giant + Rats
    IfInoutsideArea(OR_02, InsideOutsideState.Outside, 10000, 5002930, 1); // Area: Murkmen
    SkipIfConditionGroupStateUncompiled(1, PASS, OR_02);
    AwardItemsIncludingClients(X12_4);
    
    EndUnconditionally(EventEndType.Restart);
});

// Pyromancer's Parting Flame - Ascension
Event(9650, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 130134100, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    SetSpeffect(10000, 130134101);
    
    IfCharacterHasSpeffect(AND_01, 10000, 130134100, false, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    ClearSpeffect(10000, 130134101);
    
    EndUnconditionally(EventEndType.Restart);
});

// Numbness - Change Camera
Event(9651, Default, function(X0_4, X4_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    ChangeCamera(20000, 20000);
    Label0();
    IfCharacterHasSpeffect(AND_02, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, FAIL, AND_02);
    ChangeCamera(-1, -1);
    EndUnconditionally(EventEndType.Restart);
});

// Event Flag Tool
Event(9652, Default, function(X0_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, 160710000, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    SetEventFlag(1078, ON);
    
    EndUnconditionally(EventEndType.Restart);
});

// Item - Camera Override
Event(9653, Default, function(X0_4, X4_4, X8_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    ChangeCamera(X8_4, X8_4);
    Label0();
    IfCharacterHasSpeffect(AND_02, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, FAIL, AND_02);
    ChangeCamera(-1, -1);
    EndUnconditionally(EventEndType.Restart);
});


// Skeleton Illusion - Head
Event(9654, Default, function() {
    IfCharacterHasSpeffect(MAIN, 10000, 160703075, true, ComparisonType.Equal, 1);
    
    SetEventFlag(9690, OFF);
    SetEventFlag(9691, OFF);
    SetEventFlag(9692, OFF);
    SetEventFlag(9693, OFF);
    RandomlySetEventFlagInRange(9690, 9693, ON);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9690);
    SetSpeffect(10000, 160703080);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9691);
    SetSpeffect(10000, 160703100);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9692);
    SetSpeffect(10000, 160703120);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9693);
    SetSpeffect(10000, 160703140);
    
    EndUnconditionally(EventEndType.Restart);
});

// Skeleton Illusion - Body
Event(9655, Default, function() {
    IfCharacterHasSpeffect(MAIN, 10000, 160703076, true, ComparisonType.Equal, 1);
    
    SetEventFlag(9690, OFF);
    SetEventFlag(9691, OFF);
    SetEventFlag(9692, OFF);
    SetEventFlag(9693, OFF);
    RandomlySetEventFlagInRange(9690, 9693, ON);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9690);
    SetSpeffect(10000, 160703090);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9691);
    SetSpeffect(10000, 160703110);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9692);
    SetSpeffect(10000, 160703130);
    
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 9693);
    SetSpeffect(10000, 160703150);
    
    EndUnconditionally(EventEndType.Restart);
});

// Crown of the Great Lord
Event(9700, Default, function(X0_4, X4_4) {
    IfCharacterHasSpeffect(AND_01, 10000, 160409012, true, ComparisonType.Equal, 1);
    IfCharacterHasSpeffect(AND_01, 10000, 490, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    SetSpeffect(10000, 160409013);
    
    IfCharacterHasSpeffect(OR_01, 10000, 160409012, false, ComparisonType.Equal, 1);
    IfCharacterHasSpeffect(OR_01, 10000, 490, false, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, OR_01);
    
    ClearSpeffect(10000, 160409013);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Corrupted Gundyr
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9660, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100010, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001001);
    
    SetEventFlag(14000800, 0);
    SetEventFlag(9319, 0);
    SetEventFlag(6319, 0);
    SetEventFlag(14000002, 0);
    SetEventFlag(64000260, 0);
    SetEventFlag(64000261, 0);                
    
    SetPlayerRespawnPoint(4002950);
    SetMapCeremony(40, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(40, 0, 4000980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001001);
    DisplayEpitaphMessage(99030100);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Vordt
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9661, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100020, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001002);
    
    SetEventFlag(13000800, 0);
    SetEventFlag(9301, 0);
    SetEventFlag(6301, 0);
    
    SetPlayerRespawnPoint(3002958);
    SetMapCeremony(30, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(30, 0, 3000982);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001002);
    DisplayEpitaphMessage(99030101);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Curse-rotted Greatwood
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9662, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100030, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001003);
    
    SetEventFlag(13100800, 0);
    SetEventFlag(9303, 0);
    SetEventFlag(6303, 0);
    SetEventFlag(13100001, 0);
    
    SetPlayerRespawnPoint(3102953);
    SetMapCeremony(31, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(31, 0, 3100980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001003);
    DisplayEpitaphMessage(99030102);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Crystal Sage
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9663, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100040, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001004);
    
    SetEventFlag(13300850, 0);
    SetEventFlag(9306, 0);
    SetEventFlag(6306, 0);
    
    SetPlayerRespawnPoint(3302957);
    SetMapCeremony(33, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(33, 0, 3300980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001004);
    DisplayEpitaphMessage(99030103);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Deacons of the Deep
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9664, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100050, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001005);
    
    SetEventFlag(13500800, 0);
    SetEventFlag(9311, 0);
    SetEventFlag(6311, 0);
    
    SetPlayerRespawnPoint(3502950);
    SetMapCeremony(35, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(35, 0, 3500980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001005);
    DisplayEpitaphMessage(99030104);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Abyss Watchers
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9665, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100060, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001006);
    
    SetEventFlag(13300800, 0);
    SetEventFlag(9307, 0);
    SetEventFlag(6307, 0);
    SetEventFlag(13300421, 0);
    
    SetPlayerRespawnPoint(3302958);
    SetMapCeremony(33, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(33, 0, 3300981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001006);
    DisplayEpitaphMessage(99030105);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - High Lord Wolnir
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9666, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100070, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001007);
    
    SetEventFlag(13800800, 0);
    SetEventFlag(9315, 0);
    SetEventFlag(6315, 0);
    SetEventFlag(13801800, 0);
    SetEventFlag(63800560, 0);
    
    SetPlayerRespawnPoint(3802950);
    SetMapCeremony(38, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(38, 0, 3800980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001007);
    DisplayEpitaphMessage(99030106);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Old Demon King
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9667, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100080, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001008);
    
    SetEventFlag(13800830, 0);
    SetEventFlag(9317, 0);
    SetEventFlag(6317, 0);
    
    SetPlayerRespawnPoint(3802952);
    SetMapCeremony(38, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(38, 0, 3800981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001008);
    DisplayEpitaphMessage(99030107);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Pontiff Sulyvahn
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9668, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100090, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001009);
    
    SetEventFlag(13700850, 0);
    SetEventFlag(9313, 0);
    SetEventFlag(6313, 0);
    SetEventFlag(13700420, 0);
    SetEventFlag(13700421, 0);
    SetEventFlag(13700422, 0);
    
    SetPlayerRespawnPoint(3702950);
    SetMapCeremony(37, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(37, 0, 3700980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001009);
    DisplayEpitaphMessage(99030108);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Aldrich
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9669, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100100, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001010);
    
    SetEventFlag(13700800, 0);
    SetEventFlag(9314, 0);
    SetEventFlag(6314, 0);
    SetEventFlag(13700002, 0);
    
    SetPlayerRespawnPoint(3702953);
    SetMapCeremony(37, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(37, 0, 3700981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001010);
    DisplayEpitaphMessage(99030109);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Yhorm
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9670, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100110, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001011);
    
    SetEventFlag(13900800, 0);
    SetEventFlag(9318, 0);
    SetEventFlag(6318, 0);
    
    SetPlayerRespawnPoint(3902952);
    SetMapCeremony(39, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(39, 0, 3900980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001011);
    DisplayEpitaphMessage(99030110);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Dancer
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9671, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100120, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001012);
    
    SetEventFlag(13000890, 0);
    SetEventFlag(9300, 0);
    SetEventFlag(6300, 0);
    SetEventFlag(13000885, 0);
    
    SetPlayerRespawnPoint(3002955);
    SetMapCeremony(30, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(30, 0, 3000981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001012);
    DisplayEpitaphMessage(99030111);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Oceiros
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9672, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100130, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001013);
    
    SetEventFlag(13000830, 0);
    SetEventFlag(9302, 0);
    SetEventFlag(6302, 0);
    
    SetPlayerRespawnPoint(3002951);
    SetMapCeremony(30, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(30, 0, 3000983);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001013);
    DisplayEpitaphMessage(99030112);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Warp - Dragonslayer Armour
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9673, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100140, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001014);
    
    SetEventFlag(13010800, 0);
    SetEventFlag(9308, 0);
    SetEventFlag(6308, 0);
    
    SetPlayerRespawnPoint(3012952);
    SetMapCeremony(30, 1, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(30, 1, 3010980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001014);
    DisplayEpitaphMessage(99030113);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Ancient Wyvern
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9674, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100150, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001015);
    
    SetEventFlag(13200800, 0);
    SetEventFlag(9305, 0);
    SetEventFlag(6305, 0);
    
    SetPlayerRespawnPoint(3202950);
    SetMapCeremony(32, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(32, 0, 3200980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001015);
    DisplayEpitaphMessage(99030114);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Nameless King
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9675, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100160, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001016);
    
    SetEventFlag(13200850, 0);
    SetEventFlag(9304, 0);
    SetEventFlag(6304, 0);
    SetEventFlag(13200440, 0);
    SetEventFlag(13200445, 0);
    SetEventFlag(13200855, 0);
    SetEventFlag(13200856, 0);
    SetEventFlag(13200862, 0);
            
    SetPlayerRespawnPoint(3202952);
    SetMapCeremony(32, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(32, 0, 3200981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001016);
    DisplayEpitaphMessage(99030115);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Warp - Champion Gundyr
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9676, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100170, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001017);
    
    SetEventFlag(14000830, 0);
    SetEventFlag(9320, 0);
    SetEventFlag(6320, 0);
    SetEventFlag(14000004, 0);
    SetEventFlag(64000260, 0);
    SetEventFlag(64000261, 0);
    
    SetPlayerRespawnPoint(4002953);
    SetMapCeremony(40, 0, 10);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(40, 0, 4000981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001017);
    DisplayEpitaphMessage(99030116);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Warp - Twin Princes
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9677, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100180, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001018);
    
    SetEventFlag(13410830, 0);
    SetEventFlag(9309, 0);
    SetEventFlag(6309, 0);
    SetEventFlag(13410000, 0);
    
    SetPlayerRespawnPoint(3412951);
    SetMapCeremony(34, 1, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(34, 1, 3410980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001018);
    DisplayEpitaphMessage(99030117);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Soul of Cinder
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9678, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100190, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001019);
    
    SetEventFlag(14100800, 0);
    SetEventFlag(14101100, 0);
    SetEventFlag(9321, 0);
    SetEventFlag(6321, 0);
    SetEventFlag(14100002, 0);
    
    SetPlayerRespawnPoint(4102951);
    SetMapCeremony(41, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(41, 0, 4100980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001019);
    DisplayEpitaphMessage(99030118);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Sister Friede
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9679, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100200, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001020);
    
    SetEventFlag(14500800, 0);
    SetEventFlag(9322, 0);
    SetEventFlag(6322, 0);
    SetEventFlag(14500000, 0);
    SetEventFlag(14500162, 0);
    
    SetPlayerRespawnPoint(4502955);
    SetMapCeremony(45, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(45, 0, 4500980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001020);
    DisplayEpitaphMessage(99030119);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Lordran Remnants
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9680, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100210, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001021);
    
    SetEventFlag(14500860, 0);
    SetEventFlag(14500861, 0);
    SetEventFlag(14500862, 0);
    SetEventFlag(9323, 0);
    SetEventFlag(6323, 0);
    SetEventFlag(14500006, 0);
    
    SetPlayerRespawnPoint(4502957);
    SetMapCeremony(45, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(45, 0, 4500981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001021);
    DisplayEpitaphMessage(99030120);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Demon Prince
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9681, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100220, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001022);
    
    SetEventFlag(15000800, 0);
    SetEventFlag(9324, 0);
    SetEventFlag(6324, 0);
    SetEventFlag(15000000, 0);
    
    SetPlayerRespawnPoint(5002953);
    SetMapCeremony(50, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(50, 0, 5000980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001022);
    DisplayEpitaphMessage(99030121);
    
    EndUnconditionally(EventEndType.Restart);
});


//----------------------------------------------
// Boss Revival - Darkeater Midir
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9682, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100230, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001023);
    
    SetEventFlag(15100850, 0);
    SetEventFlag(9326, 0);
    SetEventFlag(6326, 0);
    SetEventFlag(15100001, 0);
    
    SetPlayerRespawnPoint(5102953);
    SetMapCeremony(51, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(51, 0, 5100980);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001023);
    DisplayEpitaphMessage(99030122);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Slave Knight Gael
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9683, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100240, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001024);
    
    SetEventFlag(15110800, 0);
    SetEventFlag(9327, 0);
    SetEventFlag(6327, 0);
    SetEventFlag(15110000, 0);
    
    SetPlayerRespawnPoint(5112951);
    SetMapCeremony(51, 1, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(51, 0, 5110980);
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001024);
    DisplayEpitaphMessage(99030123);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Halflight
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9684, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100250, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    GotoIfEventFlag(Label.LABEL1, OFF, TargetEventFlagType.EventFlag, 25001025);
    
    SetEventFlag(15100800, 0);
    SetEventFlag(6325, 0);
    SetEventFlag(9325, 0);
    SetEventFlag(9003, 1);
    
    SetPlayerRespawnPoint(5102953);
    SetMapCeremony(51, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(51, 0, 5100981);
    
    Label1();
    SkipIfEventFlag(1, ON, TargetEventFlagType.EventFlag, 25001025);
    DisplayEpitaphMessage(99030124);
    
    EndUnconditionally(EventEndType.Restart);
});

//----------------------------------------------
// Boss Revival - Champions of Yore
// <speffect>, <spawn point>, <warp id>, <map id>, <block id>, <ceremony id>
//----------------------------------------------
Event(9685, Restart, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100260, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);

    // m51_1
    SetEventFlag(15100744, 0); // Glaive Master Hodir
    SetEventFlag(15100732, 0); // Freya the Wretched
    SetEventFlag(15100734, 0); // Nahor the Fallen
    SetEventFlag(15100736, 0); // Easterner Iazeel
    SetEventFlag(15100738, 0); // Seeker of the Spurned
    SetEventFlag(15100746, 0); // Moaning Knight
    SetEventFlag(15100748, 0); // Silver Knight Ledo 

    // m50
    SetEventFlag(15000730, 0); // Dulfish the Accursed
    SetEventFlag(15000180, 0); // Desert Pyromancer Zoey

    // m45
    SetEventFlag(14500738, 0); // Ezekiel the Duelist
    SetEventFlag(14500742, 0); // Eija the Shadow
    SetEventFlag(14500734, 0); // Frozen Knight Torbjorn
    SetEventFlag(14500736, 0); // Disciple of Alsanna

    // m41
    SetEventFlag(14100810, 0); // Lord Zakar

    // m40
    SetEventFlag(14000890, 0); // Blacksmith's Nightmare
    SetEventFlag(14000892, 0); // Ashen Keeper Sofija
    SetEventFlag(9500, 0); // Sword Master

    // m39
    SetEventFlag(13900730, 0); // Corrupted Knight Lloyd
    SetEventFlag(13900732, 0); // Jailer Eileen
    SetEventFlag(13900734, 0); // Ollis the Merciless
    SetEventFlag(13900736, 0); // Fester the Jester
    SetEventFlag(13900738, 0); // Vileblood Annalise
    SetEventFlag(13900740, 0); // Bewitched Knight Iwai
    SetEventFlag(13900742, 0); // Lord Takatsuji
    SetEventFlag(13900744, 0); // Lieutenant Ugali
    SetEventFlag(13900746, 0); // Lieutenant Hanji
    SetEventFlag(13900748, 0); // Alva, Seeker of the Spurned
    SetEventFlag(13900760, 0); // The Pursuer
    SetEventFlag(13900360, 0); // Court Sorcerer

    // m38
    SetEventFlag(13800790, 0); // Holy Knight Morton
    SetEventFlag(13800792, 0); // Tomb Raider Dyfan
    SetEventFlag(13800794, 0); // Chaos Servant Eygor
    SetEventFlag(13800763, 0); // The Father
    SetEventFlag(13800761, 0); // The Mother
    SetEventFlag(13800762, 0); // The Child
    SetEventFlag(13800398, 0); // Knight Slayer Tsorig

    // m37
    SetEventFlag(13700733, 0); // Boreal Outrider Knight
    SetEventFlag(13700734, 0); // Boreal Outrider Knight
    SetEventFlag(13700544, 0); // Deep Accursed
    SetEventFlag(13700761, 0); // Dragonrider
    SetEventFlag(13700766, 0); // Wandering Knight Osvaldo
    SetEventFlag(13700762, 0); // Devotee Scarlett
    SetEventFlag(13700764, 0); // The Pursuer
    SetEventFlag(13700198, 0); // Drang Knight (Hammer)
    SetEventFlag(13700199, 0); // Drang Knight (Twinspear)

    // m35
    SetEventFlag(13500196, 0); // Ravenous Crystal Lizard
    SetEventFlag(13500198, 0); // Morne's Armor
    SetEventFlag(13500746, 0); // Morric, the Fallen Knight
    SetEventFlag(13500742, 0); // Hallowed Knight Orthell
    SetEventFlag(13500744, 0); // Longfinger Kirk
    SetEventFlag(13500286, 0); // Thief
    SetEventFlag(13500285, 0); // Brigand

    // m34_1
    SetEventFlag(13410192, 0); // Boreal Outrider Knight
    SetEventFlag(13410256, 0); // Black Dragon Knight (Greataxe)
    SetEventFlag(13410257, 0); // Black Dragon Knight (Greatsword)
    SetEventFlag(13410258, 0); // Black Dragon Knight (Sword)
    SetEventFlag(13410730, 0); // The Pursuer
    SetEventFlag(13410732, 0); // Quintus the Monstrous
    SetEventFlag(13410204, 0); // Black Hand Gotthard
    SetEventFlag(13410202, 0); // Lion Knight Albert
    SetEventFlag(13410203, 0); // Daughter of Crystal Kriemhild

    // m33
    SetEventFlag(13300603, 0); // Ravenous Crystal Lizard
    SetEventFlag(13300742, 0); // The Forlorn
    SetEventFlag(13300744, 0); // Forgotten Locklin
    SetEventFlag(13300395, 0); // Butcher
    SetEventFlag(13300396, 0); // Exile Watchdog
    SetEventFlag(13300397, 0); // Exile Watchdog

    // m32
    SetEventFlag(13200430, 0); // Dragon Cultist
    SetEventFlag(13200431, 0); // Dragon Cultist
    SetEventFlag(13200432, 0); // Dragon Cultist
    SetEventFlag(13200433, 0); // Dragon Cultist
    SetEventFlag(13200434, 0); // Dragon Cultist
    SetEventFlag(13200435, 0); // Dragon Cultist
    SetEventFlag(13200730, 0); // Gaius the Mighty
    SetEventFlag(13200732, 0); // Dragon Hunter Karstark
    SetEventFlag(13200299, 0); // Havel the Rock

    // m31
    SetEventFlag(13100613, 0); // Boreal Outrider Knight
    SetEventFlag(13100615, 0); // Boreal Outrider Knight
    SetEventFlag(13100780, 0); // Eccentric Archibald

    // m30_1
    SetEventFlag(13010730, 0); // Luyila of Londor
    SetEventFlag(13010732, 0); // Dominatrix Sharron
    SetEventFlag(13010734, 0); // The Pursuer
    SetEventFlag(13010736, 0); // Tiny

    // m30
    SetEventFlag(13000720, 0); // Mirror Knight
    SetEventFlag(13000622, 0); // Boreal Outrider Knight
    SetEventFlag(13000732, 0); // Captain Morrel
    SetEventFlag(13000734, 0); // Huntmaster Ava
    SetEventFlag(13000736, 0); // The Pursuer
    SetEventFlag(13000730, 0); // Inquisitor Ashford
    
    SetPlayerRespawnPoint(4002950);
    SetMapCeremony(40, 0, 0);
    
    WaitFixedTimeFrames(1);
    SaveRequest(0);
    WaitFixedTimeFrames(1);
    
    WarpPlayer(40, 0, 4000970);
});
