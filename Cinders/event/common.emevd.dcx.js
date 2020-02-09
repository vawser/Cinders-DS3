// ==EMEVD==
// @docs    ds3-common.emedf.json
// @compress    DarkSouls3
// @game    DarkSouls3
// @string    
// @linked    []
// ==/EMEVD==

Event(0, Default, function() {
    InitializeEvent(0, 400000, 0); // Setup Cinders scripts
    InitializeEvent(0, 200, 0);
    InitializeEvent(0, 230, 0);
    InitializeEvent(0, 9570, 4500, 3740);
    InitializeEvent(1, 9570, 4510, 3750);
    EndIfMultiplayerState(EventEndType.End, MultiplayerState.Client);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 2052);
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
    InitializeEvent(0, 9004, 9007);
    InitializeEvent(0, 9005, 9008);
    InitializeEvent(0, 9006, 9009);
    InitializeEvent(0, 9000, 9001, 9007, 9008, 9009);
    InitializeEvent(0, 9002, 9003);
    InitializeEvent(0, 9010, 0);
    InitializeEvent(0, 970, 13000800, 2000, 0, 0);
    InitializeEvent(1, 970, 13000890, 2010, 0, 0);
    InitializeEvent(2, 970, 13000830, 2020, 0, 0);
    InitializeEvent(3, 970, 13010800, 2030, 0, 0);
    InitializeEvent(9, 970, 13410830, 2040, 0, 0);
    InitializeEvent(10, 970, 13410860, 2050, 0, 0);
    InitializeEvent(4, 970, 13100800, 2060, 0, 0);
    InitializeEvent(5, 970, 13200800, 2070, 0, 0);
    InitializeEvent(6, 970, 13200850, 2080, 0, 0);
    InitializeEvent(7, 970, 13300850, 2090, 0, 0);
    InitializeEvent(8, 970, 13300800, 2100, 0, 0);
    InitializeEvent(11, 970, 13500800, 2110, 0, 0);
    InitializeEvent(12, 970, 13700850, 2120, 0, 0);
    InitializeEvent(13, 970, 13700800, 2130, 0, 0);
    InitializeEvent(14, 970, 13800800, 2140, 0, 0);
    InitializeEvent(15, 970, 13800830, 2150, 0, 0);
    InitializeEvent(17, 970, 13900800, 2170, 0, 0);
    InitializeEvent(18, 970, 14000800, 2180, 0, 0);
    InitializeEvent(19, 970, 14000830, 2190, 0, 0);
    InitializeEvent(20, 970, 14100800, 2200, 0, 0);
    InitializeEvent(21, 970, 14500800, 2300, 0, 0);
    InitializeEvent(22, 970, 14500860, 2310, 0, 0);
    InitializeEvent(23, 970, 15000800, 2330, 0, 0);
    InitializeEvent(24, 970, 15100800, 2340, 0, 0);
    InitializeEvent(25, 970, 15100850, 2350, 0, 0);
    InitializeEvent(26, 970, 15110800, 2360, 0, 0);
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
    InitializeEvent(0, 6099, 0);
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
    InitializeEvent(0, 702, 0);
    InitializeEvent(0, 710, 0);
    InitializeEvent(0, 9510, 0);
    InitializeEvent(0, 9511, 0);
    InitializeEvent(0, 9512, 0);
    InitializeEvent(0, 9520, 4410, 8, 9013, 6058);
    InitializeEvent(0, 9525, 4430, 4, 9005, 6054);
    InitializeEvent(0, 9530, 4420, 18, 9020, 6068);
    InitializeEvent(0, 9540, 15, 9017, 6065);
    InitializeEvent(0, 9100, 70000007);
    InitializeEvent(0, 9101, 70000008);
    InitializeEvent(0, 9102, 70000012);
    InitializeEvent(0, 9103, 70000013);
    InitializeEvent(0, 9104, 70000017);
    InitializeEvent(0, 9105, 70000019, 70000020, 70000021);
    InitializeEvent(0, 9111, 70000022, 70000023);
    InitializeEvent(0, 9106, 70000000);
    InitializeEvent(0, 9107, 70000001);
    InitializeEvent(0, 9108, 70000002);
    InitializeEvent(0, 9109, 70000003);
    InitializeEvent(0, 9110, 70000004);
    InitializeEvent(0, 9112, 70000005);
    InitializeEvent(0, 9113, 70000030);
    InitializeEvent(0, 9114, 70000031);
    InitializeEvent(0, 9120, 74000756, 74000760, 74000760, 1, 1, 1, 0);
    InitializeEvent(1, 9120, 74000591, 74000552, 74000592, 3, 3, 3, 0);
    InitializeEvent(2, 9120, 74000552, 74000553, 74000592, 3, 3, 6, 0);
    InitializeEvent(3, 9120, 74000303, 74000316, 74000316, 1, 1, 1, 1);
    InitializeEvent(4, 9120, 74000306, 74000318, 74000318, 1, 1, 1, 1);
    InitializeEvent(5, 9120, 74000921, 74000925, 74000925, 1, 1, 1, 1);
    InitializeEvent(6, 9120, 74000916, 74000913, 74000913, 1, 1, 1, 1);
    InitializeEvent(7, 9120, 73500265, 73500264, 73500264, 1, 1, 1, 0);
    InitializeEvent(0, 9016, 0);
    InitializeEvent(0, 9011, 74000132);
    InitializeEvent(0, 9014, 0);
    InitializeEvent(0, 9018, 0);
    InitializeEvent(0, 9019, 74000669);
    InitializeEvent(0, 9015, 0);
    InitializeEvent(0, 6900, 0);
    InitializeEvent(0, 9020, 73500300, 1621, 1634, 6951, 35);
    InitializeEvent(1, 9020, 14100511, 14100512, 14100512, 6952, 41);
    InitializeEvent(2, 9020, 14500161, 14500162, 14500162, 6952, 45);
});

Event(50, Default, function() {
    InitializeEvent(0, 231, 0);
    InitializeEvent(0, 232, 0);
    InitializeEvent(0, 701, 0);
    InitializeEvent(0, 700, 0);
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
    RemoveItemFromPlayer(ItemType.Goods, 115, 1);
    RemoveItemFromPlayer(ItemType.Goods, 384, 1);
    RemoveItemFromPlayer(ItemType.Goods, 386, 1);
    RemoveItemFromPlayer(ItemType.Goods, 390, 1);
    RemoveItemFromPlayer(ItemType.Goods, 490, 8);
    RemoveItemFromPlayer(ItemType.Goods, 2001, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2005, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2007, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2008, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2009, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2010, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2011, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2012, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2013, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2014, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2015, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2102, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2103, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2104, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2105, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2106, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2107, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2108, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2109, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2110, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2111, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2112, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2113, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2114, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2115, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2116, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2117, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2119, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2120, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2121, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2123, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2124, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2125, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2126, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2127, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2128, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2129, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2130, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2131, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2132, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2133, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2134, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2135, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2137, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2138, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2139, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2140, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2142, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2144, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2145, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2146, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2147, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2148, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2149, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2150, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2151, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2152, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2154, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2155, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2156, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2157, 1);
    RemoveItemFromPlayer(ItemType.Goods, 2158, 1);
    RemoveItemFromPlayer(ItemType.Goods, 5000, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5001, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5002, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5003, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5004, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5005, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5006, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5007, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5008, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5009, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5010, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5011, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5012, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5013, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5014, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5015, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5016, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5017, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5018, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5019, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5020, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5021, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5022, 99);
    RemoveItemFromPlayer(ItemType.Goods, 5023, 99);
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
    SetEventFlag(13900001, ON);
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

Event(9100, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1103);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1103);
    EndUnconditionally(EventEndType.Restart);
});

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

Event(9102, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfPlayerInoutMap(OR_01, true, 31, 0);
    IfPlayerInoutMap(OR_01, true, 37, 0);
    IfConditionGroup(MAIN, PASS, OR_01);
    GotoIfPlayerInoutMap(Label.LABEL0, true, 31, 0);
    GotoIfPlayerInoutMap(Label.LABEL1, true, 37, 0);
    Label0();
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 1202);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 31, 0);
    EndUnconditionally(EventEndType.Restart);
    Label1();
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 1204);
    SetEventFlag(X0_4, ON);
    IfPlayerInoutMap(MAIN, false, 37, 0);
    EndUnconditionally(EventEndType.Restart);
});

Event(9103, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.Restart, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1223);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1223);
    EndUnconditionally(EventEndType.Restart);
});

Event(9104, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1301);
    IfEventFlag(OR_01, ON, TargetEventFlagType.EventFlag, 1303);
    IfConditionGroup(AND_01, PASS, OR_01);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1295);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73101710);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73101720);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73101730);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73101740);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 73101750);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(X0_4, ON);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1301);
    IfEventFlag(OR_02, ON, TargetEventFlagType.EventFlag, 1303);
    IfConditionGroup(AND_02, PASS, OR_02);
    IfEventFlag(AND_02, ON, TargetEventFlagType.EventFlag, 1295);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73101710);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73101720);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73101730);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73101740);
    IfEventFlag(AND_02, OFF, TargetEventFlagType.EventFlag, 73101750);
    IfConditionGroup(MAIN, FAIL, AND_02);
    EndUnconditionally(EventEndType.Restart);
});

Event(9105, Default, function(X0_4, X4_4, X8_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    SetEventFlag(X4_4, OFF);
    SetEventFlag(X8_4, OFF);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, 1341);
    IfEventFlag(AND_01, OFF, TargetEventFlagType.EventFlag, 9311);
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

Event(9112, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 8200);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 8200);
    EndUnconditionally(EventEndType.Restart);
});

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

Event(9114, Default, function(X0_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    SetEventFlag(X0_4, OFF);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 1821);
    SetEventFlag(X0_4, ON);
    IfEventFlag(MAIN, OFF, TargetEventFlagType.EventFlag, 1821);
    EndUnconditionally(EventEndType.Restart);
});

Event(9120, Restart, function(X0_4, X4_4, X8_4, X12_4, X16_1, X20_4, X24_4) {
    EndIfPlayerIsNotInOwnWorldExcludesArena(EventEndType.End, true);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, X4_4);
    IfMapCeremonyState(AND_01, Disabled, 40, 0, 0);
    IfEventFlag(AND_01, ON, TargetEventFlagType.EventFlag, X0_4);
    IfConditionGroup(MAIN, PASS, AND_01);
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
    SkipIfEventFlag(1, OFF, TargetEventFlagType.EventFlag, 6951);
    IfBatchEventFlags(AND_02, LogicalOperationType.AllON, TargetEventFlagType.EventFlag, 9322, 9323);
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

Event(400000, Default, function() {
    InitializeEvent(0, 400010, 10000, 160100005); // Setup Effects
    
    InitializeEvent(0, 400016, 0); // NG+ Flags
    
    InitializeEvent(0, 400020, 0); // Deathless Run - Effect
    InitializeEvent(0, 400021, 0); // Deathless Run - Check
    InitializeEvent(0, 400022, 0); // Champion's Pact - Enemies
    InitializeEvent(0, 400023, 0); // Champion's Pact - Clients
    
    InitializeEvent(0, 400030, 0); // Crow Trades
    
    InitializeEvent(0, 400100, 10000, 160100242, 800020000); // Darkmoon Faithful
    InitializeEvent(1, 400100, 10000, 160100252, 800030000); // Spears of the Church
    InitializeEvent(2, 400100, 10000, 160100262, 800040000); // Watchdogs of Farron
    InitializeEvent(3, 400100, 10000, 160100272, 800050000); // Aldrich Faithful
    InitializeEvent(4, 400100, 10000, 160100292, 800060000); // Warrior of Sunlight
    InitializeEvent(5, 400100, 10000, 160100302, 800070000); // Mound-makers
    InitializeEvent(6, 400100, 10000, 160100322, 800080000); // Rosaria's Fingers
    InitializeEvent(7, 400100, 10000, 160100332, 800090000); // Chaos Servant
    InitializeEvent(8, 400100, 10000, 160100232, 800010000); // Thieves' Code
    InitializeEvent(9, 400100, 10000, 160100342, 800090100); // Vinheim Scholars
    InitializeEvent(10, 400100, 10000, 160100352, 800090200); // Pilgrims of Dark
    InitializeEvent(11, 400100, 10000, 160100362, 800090400); // Way of White
    InitializeEvent(12, 400100, 10000, 160100372, 800090300); // Dragon Remnants
    
    InitializeEvent(0, 400200, 0); // Rainbow Ring

    InitializeEvent(0, 400300, 10000, 160500060); // Numbness
    
    InitializeEvent(0, 400400, 10000); // Blood of Might
    InitializeEvent(0, 400402, 10000); // Event Flag Tool
    
    InitializeEvent(0, 400410, 10000, 160700310, 20001); // Devil's Trumpet
    InitializeEvent(1, 400410, 10000, 160700320, 20002); // Moonflower
    
    InitializeEvent(0, 401000, 0); // Boss System
});

// Add Effect to X
Event(400010, Default, function(X0_4, X4_4) {
    IfCharacterHasSpeffect(MAIN, X0_4, X4_4, true, ComparisonType.GreaterOrEqual, 0);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetSpeffect(X0_4, X4_4);
    EndUnconditionally(EventEndType.Restart);
});

// NG+ Flags
Event(400016, Default, function() {
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

// Deathless Run - Add Effect
Event(400020, Default, function() {
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 25000010);
    SetSpeffect(10000, 250000100);
});

// Deathless Run - Check Status
Event(400021, Default, function() {
    IfCharacterDeadalive(MAIN, 10000, DeathState.Dead, ComparisonType.Equal, 1);
    SetEventFlag(25000010, OFF);
});

// Champion's Pact - Add Effect
Event(400022, Default, function() {
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 25000000);
    SetSpeffect(10000, 250001000);
    SetSpeffect(10000, 250001001);
    SetSpeffect(10000, 250001010);
});

// Champion's Pact - Clients
Event(400023, Default, function() {
    SetNetworkSyncState(Enabled);
    IfEventFlag(MAIN, ON, TargetEventFlagType.EventFlag, 25000000);
    SetNetworkconnectedEventFlag(25000000, ON);
});

// Crow Trades
Event(400030, Default, function() {
    InitializeCrowTrade(ItemType.Goods, 2162, 80000, -1, 74000996);
    InitializeCrowTrade(ItemType.Goods, 2163, 80100, -1, 74000996);
    InitializeCrowTrade(ItemType.Goods, 2164, 80200, -1, 74000996);
});

// Covenant - Trigger Covenant Item Drop
Event(400100, Default, function(X0_4, X4_4, X8_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    AwardItemsIncludingClients(X8_4);
    EndUnconditionally(EventEndType.Restart);
});

// Rainbow Ring - Setup
Event(400200, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 160601390, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    InitializeEvent(0, 400201, 0);
    Label0();
    IfCharacterHasSpeffect(AND_02, 10000, 160601390, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, FAIL, AND_02);
    ClearSpeffect(10000, 160601391);
    ClearSpeffect(10000, 160601392);
    ClearSpeffect(10000, 160601393);
    ClearSpeffect(10000, 160601394);
    ClearSpeffect(10000, 160601395);
    ClearSpeffect(10000, 160601396);
    ClearSpeffect(10000, 160601397);
    ClearSpeffect(10000, 160601398);
    ClearSpeffect(10000, 160601399);
    EndUnconditionally(EventEndType.Restart);
});

// Rainbow Ring - Cycle
Event(400201, Default, function() {
    ClearSpeffect(10000, 160601399);
    SetSpeffect(10000, 160601391);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601391);
    SetSpeffect(10000, 160601392);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601392);
    SetSpeffect(10000, 160601393);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601393);
    SetSpeffect(10000, 160601394);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601394);
    SetSpeffect(10000, 160601395);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601395);
    SetSpeffect(10000, 160601396);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601396);
    SetSpeffect(10000, 160601397);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601397);
    SetSpeffect(10000, 160601398);
    WaitFixedTimeSeconds(0.1);
    ClearSpeffect(10000, 160601398);
    SetSpeffect(10000, 160601399);
    WaitFixedTimeSeconds(0.1);
    IfCharacterHasSpeffect(AND_01, 10000, 160601390, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    EndUnconditionally(EventEndType.Restart);
});

// Numbness - Change Camera
Event(400300, Default, function(X0_4, X4_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    ChangeCamera(20000, 20000);
    Label0();
    IfCharacterHasSpeffect(AND_02, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, FAIL, AND_02);
    ChangeCamera(-1, -1);
    EndUnconditionally(EventEndType.Restart);
});

// Blood of Might - Reset flags
Event(400400, Default, function(X0_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, 160700030, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    
    // Spawn flags
    SetEventFlag(13000706, OFF); // Captain Morrel
    SetEventFlag(13000707, OFF); // Huntmaster Ava
    SetEventFlag(13000708, OFF); // The Pursuer (High Wall)
    SetEventFlag(13000709, OFF); // Inquisitor Ashford
    SetEventFlag(13800763, OFF); // The Father
    SetEventFlag(13800761, OFF); // The Mother
    SetEventFlag(13800762, OFF); // The Child
    SetEventFlag(13900100, OFF); // Corrupted Knight Lloyd
    SetEventFlag(13900101, OFF); // Jailer Eileen
    SetEventFlag(13900102, OFF); // Ollis the Merciless
    SetEventFlag(13900103, OFF); // Fester the Jester
    SetEventFlag(13900104, OFF); // The Pursuer (Irithyll Dungeon)
    SetEventFlag(13900105, OFF); // Vileblood Annalise
    SetEventFlag(13800101, OFF); // Holy Knight Morton
    SetEventFlag(13800102, OFF); // Tomb Raider Dyfan
    SetEventFlag(13800104, OFF); // Chaos Servant Eygor
    SetEventFlag(13700172, OFF); // Devotee Scarlett
    SetEventFlag(13700173, OFF); // The Pursuer (Irithyll)
    SetEventFlag(13500195, OFF); // Morric, the Fallen Knight
    SetEventFlag(13410255, OFF); // The Pursuer
    SetEventFlag(13300600, OFF); // Seighard of Catarina
    SetEventFlag(13300601, OFF); // The Forlorn
    SetEventFlag(13300602, OFF); // Forgotten Locklin
    SetEventFlag(13100612, OFF); // Eccentric Archibald
    SetEventFlag(13010302, OFF); // Tiny
    SetEventFlag(13010303, OFF); // Luyila of Londor
    SetEventFlag(13010304, OFF); // Dominatrix Sharron
    SetEventFlag(13010305, OFF); // The Pursuer (Lothric Castle)
    SetEventFlag(13200299, OFF); // Havel the Rock
    SetEventFlag(13300395, OFF); // Butcher
    SetEventFlag(13300396, OFF); // Exile Watchdog
    SetEventFlag(13300397, OFF); // Exile Watchdog
    SetEventFlag(13410204, OFF); // Black Hand Gotthard
    SetEventFlag(13410202, OFF); // Lion Knight Albert
    SetEventFlag(13410203, OFF); // Daughter of Crystal Kriemhild
    SetEventFlag(13500286, OFF); // Thief
    SetEventFlag(13500285, OFF); // Brigand
    SetEventFlag(13700198, OFF); // Drang Knight (Hammer)
    SetEventFlag(13700199, OFF); // Drang Knight (Twinspear)
    SetEventFlag(13800398, OFF); // Knight Slayer Tsorig
    SetEventFlag(13900360, OFF); // Court Sorcerer
    SetEventFlag(9500, OFF); // Sword Master
    SetEventFlag(15000180, OFF); // Desert Pyromancer Zoey
    SetEventFlag(13410256, OFF); // Dragon Knight Oswald
    SetEventFlag(13410257, OFF); // Dragon Knight Terrill
    SetEventFlag(13410258, OFF); // Dragon Knight Lyre
    SetEventFlag(14100810, OFF); // Lord Erectus
    SetEventFlag(14500660, OFF); // Ezekiel the Penetrator
    SetEventFlag(14500661, OFF); // Eija the Shadow
    SetEventFlag(15000600, OFF); // Dulfisk the Accursed
    SetEventFlag(15100650, OFF); // Glaive Master Hodir
    SetEventFlag(15100651, OFF); // Freya the Wretched
    SetEventFlag(15100652, OFF); // Nahor the Fallen
    SetEventFlag(15100653, OFF); // Easterner Iazeel
    SetEventFlag(13200430, OFF); // Dragon Cultist Xeric
    SetEventFlag(13200431, OFF); // Dragon Cultist Zena
    SetEventFlag(13200432, OFF); // Dragon Cultist Pon
    SetEventFlag(13200433, OFF); // Dragon Cultist Kalix
    SetEventFlag(13200434, OFF); // Dragon Cultist Wex
    SetEventFlag(13200435, OFF); // Dragon Cultist Solos
    SetEventFlag(13200436, OFF); // Gaius the Mighty
    SetEventFlag(13410259, OFF); // Quintus the Monstrous
    
    SetPlayerRespawnPoint(4002950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    SetMapCeremony(40, 0, 0);
    WarpPlayer(40, 0, 4000970);
    EndUnconditionally(EventEndType.Restart);
});


// Event Flag Tool
Event(400402, Default, function(X0_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, 160710000, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13000896, OFF);
    EndUnconditionally(EventEndType.Restart);
});

// Item - Camera Override
Event(400410, Default, function(X0_4, X4_4, X8_4) {
    IfCharacterHasSpeffect(AND_01, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    ChangeCamera(X8_4, X8_4);
    Label0();
    IfCharacterHasSpeffect(AND_02, X0_4, X4_4, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, FAIL, AND_02);
    ChangeCamera(-1, -1);
    EndUnconditionally(EventEndType.Restart);
});

// Bosses - Setup
Event(401000, Restart, function() {
    // Iudex Gundyr
    InitializeEvent(0, 4008010, 0);
    InitializeEvent(0, 4008011, 0);
    InitializeEvent(0, 4008012, 0);
    InitializeEvent(0, 4008013, 0);
    InitializeEvent(0, 4008014, 0);
    InitializeEvent(0, 4008015, 0);
    
    // Vordt of the Boreal Valley
    InitializeEvent(0, 4008020, 0);
    InitializeEvent(0, 4008021, 0);
    InitializeEvent(0, 4008022, 0);
    InitializeEvent(0, 4008023, 0);
    InitializeEvent(0, 4008024, 0);
    InitializeEvent(0, 4008025, 0);
    
    // Curse-rotted Greatwood
    InitializeEvent(0, 4008030, 0);
    InitializeEvent(0, 4008031, 0);
    InitializeEvent(0, 4008032, 0);
    InitializeEvent(0, 4008033, 0);
    InitializeEvent(0, 4008034, 0);
    InitializeEvent(0, 4008035, 0);
    
    // Crystal Sage
    InitializeEvent(0, 4008040, 0);
    InitializeEvent(0, 4008041, 0);
    InitializeEvent(0, 4008042, 0);
    InitializeEvent(0, 4008043, 0);
    InitializeEvent(0, 4008044, 0);
    InitializeEvent(0, 4008045, 0);
    
    // Deacons of the Deep
    InitializeEvent(0, 4008050, 0);
    InitializeEvent(0, 4008051, 0);
    InitializeEvent(0, 4008052, 0);
    InitializeEvent(0, 4008053, 0);
    InitializeEvent(0, 4008054, 0);
    InitializeEvent(0, 4008055, 0);
    
    // Abyss Watchers
    InitializeEvent(0, 4008060, 0);
    InitializeEvent(0, 4008061, 0);
    InitializeEvent(0, 4008062, 0);
    InitializeEvent(0, 4008063, 0);
    InitializeEvent(0, 4008064, 0);
    InitializeEvent(0, 4008065, 0);
    
    // High Lord Wolnir
    InitializeEvent(0, 4008070, 0);
    InitializeEvent(0, 4008071, 0);
    InitializeEvent(0, 4008072, 0);
    InitializeEvent(0, 4008073, 0);
    InitializeEvent(0, 4008074, 0);
    InitializeEvent(0, 4008075, 0);
    
    // Old Demon King
    InitializeEvent(0, 4008080, 0);
    InitializeEvent(0, 4008081, 0);
    InitializeEvent(0, 4008082, 0);
    InitializeEvent(0, 4008083, 0);
    InitializeEvent(0, 4008084, 0);
    InitializeEvent(0, 4008085, 0);
    
    // Pontiff Sulyvahn
    InitializeEvent(0, 4008090, 0);
    InitializeEvent(0, 4008091, 0);
    InitializeEvent(0, 4008092, 0);
    InitializeEvent(0, 4008093, 0);
    InitializeEvent(0, 4008094, 0);
    InitializeEvent(0, 4008095, 0);
    
    // Aldrich, Devourer of Gods
    InitializeEvent(0, 4008100, 0);
    InitializeEvent(0, 4008101, 0);
    InitializeEvent(0, 4008102, 0);
    InitializeEvent(0, 4008103, 0);
    InitializeEvent(0, 4008104, 0);
    InitializeEvent(0, 4008105, 0);
    
    // Yhorm the Giant
    InitializeEvent(0, 4008110, 0);
    InitializeEvent(0, 4008111, 0);
    InitializeEvent(0, 4008112, 0);
    InitializeEvent(0, 4008113, 0);
    InitializeEvent(0, 4008114, 0);
    InitializeEvent(0, 4008115, 0);
    
    // Dancer of the Boreal Valley
    InitializeEvent(0, 4008120, 0);
    InitializeEvent(0, 4008121, 0);
    InitializeEvent(0, 4008122, 0);
    InitializeEvent(0, 4008123, 0);
    InitializeEvent(0, 4008124, 0);
    InitializeEvent(0, 4008125, 0);
    
    // Oceiros, the Consumed King
    InitializeEvent(0, 4008130, 0);
    InitializeEvent(0, 4008131, 0);
    InitializeEvent(0, 4008132, 0);
    InitializeEvent(0, 4008133, 0);
    InitializeEvent(0, 4008134, 0);
    InitializeEvent(0, 4008135, 0);
    
    // Dragonslayer Armour
    InitializeEvent(0, 4008140, 0);
    InitializeEvent(0, 4008141, 0);
    InitializeEvent(0, 4008142, 0);
    InitializeEvent(0, 4008143, 0);
    InitializeEvent(0, 4008144, 0);
    InitializeEvent(0, 4008145, 0);
    
    // Ancient Wyvern
    InitializeEvent(0, 4008150, 0);
    InitializeEvent(0, 4008151, 0);
    InitializeEvent(0, 4008152, 0);
    InitializeEvent(0, 4008153, 0);
    InitializeEvent(0, 4008154, 0);
    InitializeEvent(0, 4008155, 0);
    
    // Nameless King
    InitializeEvent(0, 4008160, 0);
    InitializeEvent(0, 4008161, 0);
    InitializeEvent(0, 4008162, 0);
    InitializeEvent(0, 4008163, 0);
    InitializeEvent(0, 4008164, 0);
    InitializeEvent(0, 4008165, 0);
    
    // Champion Gundyr
    InitializeEvent(0, 4008170, 0);
    InitializeEvent(0, 4008171, 0);
    InitializeEvent(0, 4008172, 0);
    InitializeEvent(0, 4008173, 0);
    InitializeEvent(0, 4008174, 0);
    InitializeEvent(0, 4008175, 0);
    
    // Twin Princes
    InitializeEvent(0, 4008180, 0);
    InitializeEvent(0, 4008181, 0);
    InitializeEvent(0, 4008182, 0);
    InitializeEvent(0, 4008183, 0);
    InitializeEvent(0, 4008184, 0);
    InitializeEvent(0, 4008185, 0);
    
    // Soul of Cinder
    InitializeEvent(0, 4008190, 0);
    InitializeEvent(0, 4008191, 0);
    InitializeEvent(0, 4008192, 0);
    InitializeEvent(0, 4008193, 0);
    InitializeEvent(0, 4008194, 0);
    InitializeEvent(0, 4008195, 0);
    
    // Sister Friede
    InitializeEvent(0, 4008200, 0);
    InitializeEvent(0, 4008201, 0);
    InitializeEvent(0, 4008202, 0);
    InitializeEvent(0, 4008203, 0);
    InitializeEvent(0, 4008204, 0);
    InitializeEvent(0, 4008205, 0);
    
    // Gravetender's Champion
    InitializeEvent(0, 4008210, 0);
    InitializeEvent(0, 4008211, 0);
    InitializeEvent(0, 4008212, 0);
    InitializeEvent(0, 4008213, 0);
    InitializeEvent(0, 4008214, 0);
    InitializeEvent(0, 4008215, 0);
    
    // Demon Prince
    InitializeEvent(0, 4008220, 0);
    InitializeEvent(0, 4008221, 0);
    InitializeEvent(0, 4008222, 0);
    InitializeEvent(0, 4008223, 0);
    InitializeEvent(0, 4008224, 0);
    InitializeEvent(0, 4008225, 0);
    
    // Darkeater Midir
    InitializeEvent(0, 4008230, 0);
    InitializeEvent(0, 4008231, 0);
    InitializeEvent(0, 4008232, 0);
    InitializeEvent(0, 4008233, 0);
    InitializeEvent(0, 4008234, 0);
    InitializeEvent(0, 4008235, 0);
    
    // Slave Knight Gael
    InitializeEvent(0, 4008240, 0);
    InitializeEvent(0, 4008241, 0);
    InitializeEvent(0, 4008242, 0);
    InitializeEvent(0, 4008243, 0);
    InitializeEvent(0, 4008244, 0);
    InitializeEvent(0, 4008245, 0);
});

// Iudex Gundyr - Dream
Event(4008010, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100010, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14001800, ON);
    SetEventFlag(14002800, OFF);
    SetEventFlag(14000800, OFF);
    SetEventFlag(9319, OFF);
    SetEventFlag(6319, OFF);
    SetEventFlag(14000002, OFF);
    SetEventFlag(64000260, OFF);
    SetEventFlag(64000261, OFF);
    SetPlayerRespawnPoint(4002951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    SetMapCeremony(40, 0, 0);
    WarpPlayer(40, 0, 4000971);
    EndUnconditionally(EventEndType.End);
});

// Iudex Gundyr - Nightmare
Event(4008011, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100012, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14001800, OFF);
    SetEventFlag(14002800, ON);
    SetEventFlag(14000800, OFF);
    SetEventFlag(9319, OFF);
    SetEventFlag(6319, OFF);
    SetEventFlag(14000002, OFF);
    SetEventFlag(64000260, OFF);
    SetEventFlag(64000261, OFF);
    SetPlayerRespawnPoint(4002951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    SetMapCeremony(40, 0, 0);
    WarpPlayer(40, 0, 4000971);
    EndUnconditionally(EventEndType.End);
});

Event(4008012, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14001800);
    SetSpeffect(4000800, 260100011);
    EndUnconditionally(EventEndType.End);
});

Event(4008013, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14002800);
    SetSpeffect(4000800, 260100013);
    EndUnconditionally(EventEndType.End);
});

Event(4008014, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14000800);
    AwardItemLot(800200000);
    SetEventFlag(14001800, OFF);
    ClearSpeffect(4000800, 260100011);
    EndUnconditionally(EventEndType.End);
});

Event(4008015, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14000800);
    AwardItemLot(800200020);
    SetEventFlag(14002800, OFF);
    ClearSpeffect(4000800, 260100013);
    EndUnconditionally(EventEndType.End);
});

// Dream - Vordt
Event(4008020, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100020, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13001800, ON);
    SetEventFlag(13002800, OFF);
    SetEventFlag(13000800, OFF);
    SetEventFlag(9301, OFF);
    SetEventFlag(6301, OFF);
    SetPlayerRespawnPoint(3002955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000975);
    EndUnconditionally(EventEndType.End);
});

// Nightmare - Vordt
Event(4008021, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100022, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13001800, OFF);
    SetEventFlag(13002800, ON);
    SetEventFlag(13000800, OFF);
    SetEventFlag(9301, OFF);
    SetEventFlag(6301, OFF);
    SetPlayerRespawnPoint(3002955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000975);
    EndUnconditionally(EventEndType.End);
});

Event(4008022, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13001800);
    SetSpeffect(3000800, 260100021);
    EndUnconditionally(EventEndType.End);
});

Event(4008023, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13002800);
    SetSpeffect(3000800, 260100023);
    EndUnconditionally(EventEndType.End);
});

Event(4008024, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000800);
    AwardItemLot(800200100);
    SetEventFlag(13001800, OFF);
    ClearSpeffect(3000800, 260100021);
    EndUnconditionally(EventEndType.End);
});

Event(4008025, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000800);
    AwardItemLot(800200120);
    SetEventFlag(13002800, OFF);
    ClearSpeffect(3000800, 260100023);
    EndUnconditionally(EventEndType.End);
});

Event(4008030, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100030, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13101800, ON);
    SetEventFlag(13102800, OFF);
    SetEventFlag(13100800, OFF);
    SetEventFlag(9303, OFF);
    SetEventFlag(6303, OFF);
    SetEventFlag(13100001, OFF);
    SetPlayerRespawnPoint(3102953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(31, 0, 3100973);
    EndUnconditionally(EventEndType.End);
});

Event(4008031, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100032, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13101800, OFF);
    SetEventFlag(13102800, ON);
    SetEventFlag(13100800, OFF);
    SetEventFlag(9303, OFF);
    SetEventFlag(6303, OFF);
    SetEventFlag(13100001, OFF);
    SetPlayerRespawnPoint(3102953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(31, 0, 3100973);
    EndUnconditionally(EventEndType.End);
});

Event(4008032, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13101800);
    SetSpeffect(3100800, 260100031);
    SetSpeffect(3100259, 260100031);
    SetSpeffect(3100264, 260100031);
    SetSpeffect(3100258, 260100031);
    SetSpeffect(3100257, 260100031);
    SetSpeffect(3100254, 260100031);
    SetSpeffect(3100266, 260100031);
    SetSpeffect(3100261, 260100031);
    SetSpeffect(3100262, 260100031);
    SetSpeffect(3100252, 260100031);
    SetSpeffect(3100265, 260100031);
    SetSpeffect(3100490, 260100031);
    SetSpeffect(3100491, 260100031);
    SetSpeffect(3100492, 260100031);
    SetSpeffect(3100493, 260100031);
    SetSpeffect(3100494, 260100031);
    EndUnconditionally(EventEndType.End);
});

Event(4008033, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13102800);
    SetSpeffect(3100800, 260100033);
    SetSpeffect(3100259, 260100033);
    SetSpeffect(3100264, 260100033);
    SetSpeffect(3100258, 260100033);
    SetSpeffect(3100257, 260100033);
    SetSpeffect(3100254, 260100033);
    SetSpeffect(3100266, 260100033);
    SetSpeffect(3100261, 260100033);
    SetSpeffect(3100262, 260100033);
    SetSpeffect(3100252, 260100033);
    SetSpeffect(3100265, 260100033);
    SetSpeffect(3100490, 260100033);
    SetSpeffect(3100491, 260100033);
    SetSpeffect(3100492, 260100033);
    SetSpeffect(3100493, 260100033);
    SetSpeffect(3100494, 260100033);
    EndUnconditionally(EventEndType.End);
});

Event(4008034, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13100800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13100800);
    AwardItemLot(800200200);
    SetEventFlag(13101800, OFF);
    ClearSpeffect(3100800, 260100031);
    ClearSpeffect(3100259, 260100031);
    ClearSpeffect(3100264, 260100031);
    ClearSpeffect(3100258, 260100031);
    ClearSpeffect(3100257, 260100031);
    ClearSpeffect(3100254, 260100031);
    ClearSpeffect(3100266, 260100031);
    ClearSpeffect(3100261, 260100031);
    ClearSpeffect(3100262, 260100031);
    ClearSpeffect(3100252, 260100031);
    ClearSpeffect(3100265, 260100031);
    ClearSpeffect(3100490, 260100031);
    ClearSpeffect(3100491, 260100031);
    ClearSpeffect(3100492, 260100031);
    ClearSpeffect(3100493, 260100031);
    ClearSpeffect(3100494, 260100031);
    EndUnconditionally(EventEndType.End);
});

Event(4008035, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13100800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13100800);
    AwardItemLot(800200220);
    SetEventFlag(13102800, OFF);
    ClearSpeffect(3100800, 260100033);
    ClearSpeffect(3100259, 260100033);
    ClearSpeffect(3100264, 260100033);
    ClearSpeffect(3100258, 260100033);
    ClearSpeffect(3100257, 260100033);
    ClearSpeffect(3100254, 260100033);
    ClearSpeffect(3100266, 260100033);
    ClearSpeffect(3100261, 260100033);
    ClearSpeffect(3100262, 260100033);
    ClearSpeffect(3100252, 260100033);
    ClearSpeffect(3100265, 260100033);
    ClearSpeffect(3100490, 260100033);
    ClearSpeffect(3100491, 260100033);
    ClearSpeffect(3100492, 260100033);
    ClearSpeffect(3100493, 260100033);
    ClearSpeffect(3100494, 260100033);
    EndUnconditionally(EventEndType.End);
});

Event(4008040, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100040, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13301850, ON);
    SetEventFlag(13302850, OFF);
    SetEventFlag(13300850, OFF);
    SetEventFlag(9306, OFF);
    SetEventFlag(6306, OFF);
    SetPlayerRespawnPoint(3302957);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(33, 0, 3300977);
    EndUnconditionally(EventEndType.End);
});

Event(4008041, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100042, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13301850, OFF);
    SetEventFlag(13302850, ON);
    SetEventFlag(13300850, OFF);
    SetEventFlag(9306, OFF);
    SetEventFlag(6306, OFF);
    SetPlayerRespawnPoint(3302957);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(33, 0, 3300977);
    EndUnconditionally(EventEndType.End);
});

Event(4008042, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13302850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13301850);
    SetSpeffect(3300850, 260100041);
    SetSpeffect(3300851, 260100041);
    SetSpeffect(3300852, 260100041);
    SetSpeffect(3300853, 260100041);
    EndUnconditionally(EventEndType.End);
});

Event(4008043, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13301850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13302850);
    SetSpeffect(3300850, 260100043);
    SetSpeffect(3300851, 260100043);
    SetSpeffect(3300852, 260100043);
    SetSpeffect(3300853, 260100043);
    EndUnconditionally(EventEndType.End);
});

Event(4008044, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13300850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13302850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13301850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13300850);
    AwardItemLot(800200300);
    SetEventFlag(13301850, OFF);
    ClearSpeffect(3300850, 260100041);
    ClearSpeffect(3300851, 260100041);
    ClearSpeffect(3300852, 260100041);
    ClearSpeffect(3300853, 260100041);
    EndUnconditionally(EventEndType.End);
});

Event(4008045, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13300850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13301850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13302850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13300850);
    AwardItemLot(800200320);
    SetEventFlag(13302850, OFF);
    ClearSpeffect(3300850, 260100043);
    ClearSpeffect(3300851, 260100043);
    ClearSpeffect(3300852, 260100043);
    ClearSpeffect(3300853, 260100043);
    EndUnconditionally(EventEndType.End);
});

Event(4008050, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100050, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13503800, ON);
    SetEventFlag(13503801, OFF);
    SetEventFlag(13500800, OFF);
    SetEventFlag(9311, OFF);
    SetEventFlag(6311, OFF);
    SetPlayerRespawnPoint(3502950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(35, 0, 3500970);
    EndUnconditionally(EventEndType.End);
});

Event(4008051, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100052, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13503800, OFF);
    SetEventFlag(13503801, ON);
    SetEventFlag(13500800, OFF);
    SetEventFlag(9311, OFF);
    SetEventFlag(6311, OFF);
    SetPlayerRespawnPoint(3502950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(35, 0, 3500970);
    EndUnconditionally(EventEndType.End);
});

Event(4008052, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13503801);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13503800);
    SetSpeffect(3500800, 260100051);
    SetSpeffect(3500842, 260100051);
    SetSpeffect(3500841, 260100051);
    SetSpeffect(3500840, 260100051);
    SetSpeffect(3500836, 260100051);
    SetSpeffect(3500811, 260100051);
    SetSpeffect(3500837, 260100051);
    SetSpeffect(3500815, 260100051);
    SetSpeffect(3500819, 260100051);
    SetSpeffect(3500813, 260100051);
    SetSpeffect(3500818, 260100051);
    SetSpeffect(3500817, 260100051);
    SetSpeffect(3500839, 260100051);
    SetSpeffect(3500835, 260100051);
    SetSpeffect(3500828, 260100051);
    SetSpeffect(3500848, 260100051);
    SetSpeffect(3500847, 260100051);
    SetSpeffect(3500825, 260100051);
    SetSpeffect(3500826, 260100051);
    SetSpeffect(3500845, 260100051);
    SetSpeffect(3500846, 260100051);
    SetSpeffect(3500827, 260100051);
    SetSpeffect(3500844, 260100051);
    SetSpeffect(3500843, 260100051);
    SetSpeffect(3500814, 260100051);
    SetSpeffect(3500820, 260100051);
    SetSpeffect(3500834, 260100051);
    SetSpeffect(3500812, 260100051);
    SetSpeffect(3500838, 260100051);
    SetSpeffect(3500816, 260100051);
    SetSpeffect(3500810, 260100051);
    SetSpeffect(3500821, 260100051);
    SetSpeffect(3500822, 260100051);
    SetSpeffect(3500823, 260100051);
    SetSpeffect(3500824, 260100051);
    SetSpeffect(3500379, 260100051);
    SetSpeffect(3500322, 260100051);
    SetSpeffect(3500268, 260100051);
    SetSpeffect(3500267, 260100051);
    SetSpeffect(3500266, 260100051);
    SetSpeffect(3500265, 260100051);
    SetSpeffect(3500264, 260100051);
    SetSpeffect(3500377, 260100051);
    SetSpeffect(3500378, 260100051);
    EndUnconditionally(EventEndType.End);
});

Event(4008053, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13503800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13503801);
    SetSpeffect(3500800, 260100053);
    SetSpeffect(3500842, 260100053);
    SetSpeffect(3500841, 260100053);
    SetSpeffect(3500840, 260100053);
    SetSpeffect(3500836, 260100053);
    SetSpeffect(3500811, 260100053);
    SetSpeffect(3500837, 260100053);
    SetSpeffect(3500815, 260100053);
    SetSpeffect(3500819, 260100053);
    SetSpeffect(3500813, 260100053);
    SetSpeffect(3500818, 260100053);
    SetSpeffect(3500817, 260100053);
    SetSpeffect(3500839, 260100053);
    SetSpeffect(3500835, 260100053);
    SetSpeffect(3500828, 260100053);
    SetSpeffect(3500848, 260100053);
    SetSpeffect(3500847, 260100053);
    SetSpeffect(3500825, 260100053);
    SetSpeffect(3500826, 260100053);
    SetSpeffect(3500845, 260100053);
    SetSpeffect(3500846, 260100053);
    SetSpeffect(3500827, 260100053);
    SetSpeffect(3500844, 260100053);
    SetSpeffect(3500843, 260100053);
    SetSpeffect(3500814, 260100053);
    SetSpeffect(3500820, 260100053);
    SetSpeffect(3500834, 260100053);
    SetSpeffect(3500812, 260100053);
    SetSpeffect(3500838, 260100053);
    SetSpeffect(3500816, 260100053);
    SetSpeffect(3500810, 260100053);
    SetSpeffect(3500821, 260100053);
    SetSpeffect(3500822, 260100053);
    SetSpeffect(3500823, 260100053);
    SetSpeffect(3500824, 260100053);
    SetSpeffect(3500379, 260100053);
    SetSpeffect(3500322, 260100053);
    SetSpeffect(3500268, 260100053);
    SetSpeffect(3500267, 260100053);
    SetSpeffect(3500266, 260100053);
    SetSpeffect(3500265, 260100053);
    SetSpeffect(3500264, 260100053);
    SetSpeffect(3500377, 260100053);
    SetSpeffect(3500378, 260100053);
    EndUnconditionally(EventEndType.End);
});

Event(4008054, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13500800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13503801);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13503800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13500800);
    AwardItemLot(800200400);
    SetEventFlag(13503800, OFF);
    ClearSpeffect(3500800, 260100051);
    ClearSpeffect(3500842, 260100051);
    ClearSpeffect(3500841, 260100051);
    ClearSpeffect(3500840, 260100051);
    ClearSpeffect(3500836, 260100051);
    ClearSpeffect(3500811, 260100051);
    ClearSpeffect(3500837, 260100051);
    ClearSpeffect(3500815, 260100051);
    ClearSpeffect(3500819, 260100051);
    ClearSpeffect(3500813, 260100051);
    ClearSpeffect(3500818, 260100051);
    ClearSpeffect(3500817, 260100051);
    ClearSpeffect(3500839, 260100051);
    ClearSpeffect(3500835, 260100051);
    ClearSpeffect(3500828, 260100051);
    ClearSpeffect(3500848, 260100051);
    ClearSpeffect(3500847, 260100051);
    ClearSpeffect(3500825, 260100051);
    ClearSpeffect(3500826, 260100051);
    ClearSpeffect(3500845, 260100051);
    ClearSpeffect(3500846, 260100051);
    ClearSpeffect(3500827, 260100051);
    ClearSpeffect(3500844, 260100051);
    ClearSpeffect(3500843, 260100051);
    ClearSpeffect(3500814, 260100051);
    ClearSpeffect(3500820, 260100051);
    ClearSpeffect(3500834, 260100051);
    ClearSpeffect(3500812, 260100051);
    ClearSpeffect(3500838, 260100051);
    ClearSpeffect(3500816, 260100051);
    ClearSpeffect(3500810, 260100051);
    ClearSpeffect(3500821, 260100051);
    ClearSpeffect(3500822, 260100051);
    ClearSpeffect(3500823, 260100051);
    ClearSpeffect(3500824, 260100051);
    ClearSpeffect(3500379, 260100051);
    ClearSpeffect(3500322, 260100051);
    ClearSpeffect(3500268, 260100051);
    ClearSpeffect(3500267, 260100051);
    ClearSpeffect(3500266, 260100051);
    ClearSpeffect(3500265, 260100051);
    ClearSpeffect(3500264, 260100051);
    ClearSpeffect(3500377, 260100051);
    ClearSpeffect(3500378, 260100051);
    EndUnconditionally(EventEndType.End);
});

Event(4008055, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13500800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13503800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13503801);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13500800);
    AwardItemLot(800200420);
    SetEventFlag(13503801, OFF);
    ClearSpeffect(3500800, 260100053);
    ClearSpeffect(3500842, 260100053);
    ClearSpeffect(3500841, 260100053);
    ClearSpeffect(3500840, 260100053);
    ClearSpeffect(3500836, 260100053);
    ClearSpeffect(3500811, 260100053);
    ClearSpeffect(3500837, 260100053);
    ClearSpeffect(3500815, 260100053);
    ClearSpeffect(3500819, 260100053);
    ClearSpeffect(3500813, 260100053);
    ClearSpeffect(3500818, 260100053);
    ClearSpeffect(3500817, 260100053);
    ClearSpeffect(3500839, 260100053);
    ClearSpeffect(3500835, 260100053);
    ClearSpeffect(3500828, 260100053);
    ClearSpeffect(3500848, 260100053);
    ClearSpeffect(3500847, 260100053);
    ClearSpeffect(3500825, 260100053);
    ClearSpeffect(3500826, 260100053);
    ClearSpeffect(3500845, 260100053);
    ClearSpeffect(3500846, 260100053);
    ClearSpeffect(3500827, 260100053);
    ClearSpeffect(3500844, 260100053);
    ClearSpeffect(3500843, 260100053);
    ClearSpeffect(3500814, 260100053);
    ClearSpeffect(3500820, 260100053);
    ClearSpeffect(3500834, 260100053);
    ClearSpeffect(3500812, 260100053);
    ClearSpeffect(3500838, 260100053);
    ClearSpeffect(3500816, 260100053);
    ClearSpeffect(3500810, 260100053);
    ClearSpeffect(3500821, 260100053);
    ClearSpeffect(3500822, 260100053);
    ClearSpeffect(3500823, 260100053);
    ClearSpeffect(3500824, 260100053);
    ClearSpeffect(3500379, 260100053);
    ClearSpeffect(3500322, 260100053);
    ClearSpeffect(3500268, 260100053);
    ClearSpeffect(3500267, 260100053);
    ClearSpeffect(3500266, 260100053);
    ClearSpeffect(3500265, 260100053);
    ClearSpeffect(3500264, 260100053);
    ClearSpeffect(3500377, 260100053);
    ClearSpeffect(3500378, 260100053);
    EndUnconditionally(EventEndType.End);
});

Event(4008060, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100060, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13301800, ON);
    SetEventFlag(13302800, OFF);
    SetEventFlag(13300800, OFF);
    SetEventFlag(9307, OFF);
    SetEventFlag(6307, OFF);
    SetEventFlag(13300421, OFF);
    SetPlayerRespawnPoint(3302958);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(33, 0, 3300978);
    EndUnconditionally(EventEndType.End);
});

Event(4008061, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100062, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13301800, OFF);
    SetEventFlag(13302800, ON);
    SetEventFlag(13300800, OFF);
    SetEventFlag(9307, OFF);
    SetEventFlag(6307, OFF);
    SetEventFlag(13300421, OFF);
    SetPlayerRespawnPoint(3302958);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(33, 0, 3300978);
    EndUnconditionally(EventEndType.End);
});

Event(4008062, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13302800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13301800);
    SetSpeffect(3300801, 260100061);
    SetSpeffect(3300802, 260100061);
    SetSpeffect(3300803, 260100061);
    EndUnconditionally(EventEndType.End);
});

Event(4008063, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13301800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13302800);
    SetSpeffect(3300801, 260100063);
    SetSpeffect(3300802, 260100063);
    SetSpeffect(3300803, 260100063);
    EndUnconditionally(EventEndType.End);
});

Event(4008064, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13300800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13302800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13301800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13300800);
    AwardItemLot(800200500);
    SetEventFlag(13301800, OFF);
    ClearSpeffect(3300801, 260100061);
    ClearSpeffect(3300802, 260100061);
    ClearSpeffect(3300803, 260100061);
    EndUnconditionally(EventEndType.End);
});

Event(4008065, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13300800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13301800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13302800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13300800);
    AwardItemLot(800200520);
    SetEventFlag(13302800, OFF);
    ClearSpeffect(3300801, 260100063);
    ClearSpeffect(3300802, 260100063);
    ClearSpeffect(3300803, 260100063);
    EndUnconditionally(EventEndType.End);
});

Event(4008070, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100070, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13801800, ON);
    SetEventFlag(13802800, OFF);
    SetEventFlag(13800800, OFF);
    SetEventFlag(9315, OFF);
    SetEventFlag(6315, OFF);
    SetEventFlag(13801800, OFF);
    SetEventFlag(63800561, OFF);
    SetPlayerRespawnPoint(3802950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(38, 0, 3800970);
    EndUnconditionally(EventEndType.End);
});

Event(4008071, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100072, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13801800, OFF);
    SetEventFlag(13802800, ON);
    SetEventFlag(13800800, OFF);
    SetEventFlag(9315, OFF);
    SetEventFlag(6315, OFF);
    SetEventFlag(13801800, OFF);
    SetEventFlag(63800561, OFF);
    SetPlayerRespawnPoint(3802950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(38, 0, 3800970);
    EndUnconditionally(EventEndType.End);
});

Event(4008072, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13802800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13801800);
    SetSpeffect(3800800, 260100071);
    EndUnconditionally(EventEndType.End);
});

Event(4008073, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13801800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13802800);
    SetSpeffect(3800800, 260100073);
    EndUnconditionally(EventEndType.End);
});

Event(4008074, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13800800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13802800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13801800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13800800);
    AwardItemLot(800200600);
    SetEventFlag(13801800, OFF);
    ClearSpeffect(3800800, 260100071);
    EndUnconditionally(EventEndType.End);
});

Event(4008075, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13800800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13801800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13802800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13800800);
    AwardItemLot(800200620);
    SetEventFlag(13802800, OFF);
    ClearSpeffect(3800800, 260100073);
    EndUnconditionally(EventEndType.End);
});

Event(4008080, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100080, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13801830, ON);
    SetEventFlag(13802830, OFF);
    SetEventFlag(13800830, OFF);
    SetEventFlag(9317, OFF);
    SetEventFlag(6317, OFF);
    SetPlayerRespawnPoint(3802952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(38, 0, 3800972);
    EndUnconditionally(EventEndType.End);
});

Event(4008081, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100082, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13801830, OFF);
    SetEventFlag(13802830, ON);
    SetEventFlag(13800830, OFF);
    SetEventFlag(9317, OFF);
    SetEventFlag(6317, OFF);
    SetPlayerRespawnPoint(3802952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(38, 0, 3800972);
    EndUnconditionally(EventEndType.End);
});

Event(4008082, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13802830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13801830);
    SetSpeffect(3800830, 260100081);
    EndUnconditionally(EventEndType.End);
});

Event(4008083, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13801830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13802830);
    SetSpeffect(3800830, 260100083);
    EndUnconditionally(EventEndType.End);
});

Event(4008084, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13800830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13802830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13801830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13800830);
    AwardItemLot(800200700);
    SetEventFlag(13801830, OFF);
    ClearSpeffect(3800830, 260100081);
    EndUnconditionally(EventEndType.End);
});

Event(4008085, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13800830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13801830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13802830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13800830);
    AwardItemLot(800200720);
    SetEventFlag(13802830, OFF);
    ClearSpeffect(3800830, 260100083);
    EndUnconditionally(EventEndType.End);
});

Event(4008090, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100090, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13701850, ON);
    SetEventFlag(13702850, OFF);
    SetEventFlag(13700850, OFF);
    SetEventFlag(9313, OFF);
    SetEventFlag(6313, OFF);
    SetEventFlag(13700001, OFF);
    SetEventFlag(13700420, OFF);
    SetPlayerRespawnPoint(3702950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(37, 0, 3700970);
    EndUnconditionally(EventEndType.End);
});

Event(4008091, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100092, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13701850, OFF);
    SetEventFlag(13702850, ON);
    SetEventFlag(13700850, OFF);
    SetEventFlag(9313, OFF);
    SetEventFlag(6313, OFF);
    SetPlayerRespawnPoint(3702950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(37, 0, 3700970);
    EndUnconditionally(EventEndType.End);
});

Event(4008092, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13702850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13701850);
    SetSpeffect(3700850, 260100091);
    SetSpeffect(3700851, 260100091);
    EndUnconditionally(EventEndType.End);
});

Event(4008093, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13701850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13702850);
    SetSpeffect(3700850, 260100093);
    SetSpeffect(3700851, 260100093);
    EndUnconditionally(EventEndType.End);
});

Event(4008094, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13700850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13702850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13701850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13700850);
    AwardItemLot(800200800);
    SetEventFlag(13701850, OFF);
    ClearSpeffect(3700850, 260100091);
    ClearSpeffect(3700851, 260100091);
    EndUnconditionally(EventEndType.End);
});

Event(4008095, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13700850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13701850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13702850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13700850);
    AwardItemLot(800200820);
    SetEventFlag(13702850, OFF);
    ClearSpeffect(3700850, 260100093);
    ClearSpeffect(3700851, 260100093);
    EndUnconditionally(EventEndType.End);
});

Event(4008100, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100100, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13701800, ON);
    SetEventFlag(13702800, OFF);
    SetEventFlag(13700800, OFF);
    SetEventFlag(9314, OFF);
    SetEventFlag(6314, OFF);
    SetEventFlag(13700002, OFF);
    SetPlayerRespawnPoint(3702953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(37, 0, 3700973);
    EndUnconditionally(EventEndType.End);
});

Event(4008101, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100102, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13701800, OFF);
    SetEventFlag(13702800, ON);
    SetEventFlag(13700800, OFF);
    SetEventFlag(9314, OFF);
    SetEventFlag(6314, OFF);
    SetEventFlag(13700002, OFF);
    SetPlayerRespawnPoint(3702953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(37, 0, 3700973);
    EndUnconditionally(EventEndType.End);
});

Event(4008102, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13702800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13701800);
    SetSpeffect(3700800, 260100101);
    EndUnconditionally(EventEndType.End);
});

Event(4008103, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13701800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13702800);
    SetSpeffect(3700800, 260100103);
    EndUnconditionally(EventEndType.End);
});

Event(4008104, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13700800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13702800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13701800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13700800);
    AwardItemLot(800200900);
    SetEventFlag(13701800, OFF);
    ClearSpeffect(3700800, 260100101);
    EndUnconditionally(EventEndType.End);
});

Event(4008105, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13700800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13701800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13702800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13700800);
    AwardItemLot(800200920);
    SetEventFlag(13702800, OFF);
    ClearSpeffect(3700800, 260100103);
    EndUnconditionally(EventEndType.End);
});

Event(4008110, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100110, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13901800, ON);
    SetEventFlag(13902800, OFF);
    SetEventFlag(13900800, OFF);
    SetEventFlag(9318, OFF);
    SetEventFlag(6318, OFF);
    SetEventFlag(13900001, OFF);
    SetPlayerRespawnPoint(3902952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(39, 0, 3900972);
    EndUnconditionally(EventEndType.End);
});

Event(4008111, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100112, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13901800, OFF);
    SetEventFlag(13902800, ON);
    SetEventFlag(13900800, OFF);
    SetEventFlag(9318, OFF);
    SetEventFlag(6318, OFF);
    SetEventFlag(13900001, OFF);
    SetPlayerRespawnPoint(3902952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(39, 0, 3900972);
    EndUnconditionally(EventEndType.End);
});

Event(4008112, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13902800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13901800);
    SetSpeffect(3900800, 260100111);
    EndUnconditionally(EventEndType.End);
});

Event(4008113, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13901800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13902800);
    SetSpeffect(3900800, 260100113);
    EndUnconditionally(EventEndType.End);
});

Event(4008114, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13900800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13902800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13901800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13900800);
    AwardItemLot(800201000);
    SetEventFlag(13901800, OFF);
    ClearSpeffect(3900800, 260100111);
    EndUnconditionally(EventEndType.End);
});

Event(4008115, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13900800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13901800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13902800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13900800);
    AwardItemLot(800201020);
    SetEventFlag(13902800, OFF);
    ClearSpeffect(3900800, 260100113);
    EndUnconditionally(EventEndType.End);
});

Event(4008120, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100120, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13003890, ON);
    SetEventFlag(13003891, OFF);
    SetEventFlag(13000890, OFF);
    SetEventFlag(9300, OFF);
    SetEventFlag(6300, OFF);
    SetEventFlag(13000885, OFF);
    SetPlayerRespawnPoint(3002955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000975);
    EndUnconditionally(EventEndType.End);
});

Event(4008121, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100122, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13003890, OFF);
    SetEventFlag(13003891, ON);
    SetEventFlag(13000890, OFF);
    SetEventFlag(9300, OFF);
    SetEventFlag(6300, OFF);
    SetEventFlag(13000885, OFF);
    SetPlayerRespawnPoint(3002955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000975);
    EndUnconditionally(EventEndType.End);
});

Event(4008122, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13003891);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13003890);
    SetSpeffect(3000899, 260100121);
    EndUnconditionally(EventEndType.End);
});

Event(4008123, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13003890);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13003891);
    SetSpeffect(3000899, 260100123);
    EndUnconditionally(EventEndType.End);
});

Event(4008124, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000890);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13003891);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13003890);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000890);
    AwardItemLot(800201100);
    SetEventFlag(13003890, OFF);
    ClearSpeffect(3000899, 260100121);
    EndUnconditionally(EventEndType.End);
});

Event(4008125, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000890);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13003890);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13003891);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000890);
    AwardItemLot(800201120);
    SetEventFlag(13003891, OFF);
    ClearSpeffect(3000899, 260100123);
    EndUnconditionally(EventEndType.End);
});

Event(4008130, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100130, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13000831, ON);
    SetEventFlag(13000832, OFF);
    SetEventFlag(13000830, OFF);
    SetEventFlag(9302, OFF);
    SetEventFlag(6302, OFF);
    SetPlayerRespawnPoint(3002951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000971);
    EndUnconditionally(EventEndType.End);
});

Event(4008131, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100132, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13000831, OFF);
    SetEventFlag(13000832, ON);
    SetEventFlag(13000830, OFF);
    SetEventFlag(9302, OFF);
    SetEventFlag(6302, OFF);
    SetPlayerRespawnPoint(3002951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 0, 3000971);
    EndUnconditionally(EventEndType.End);
});

Event(4008132, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000832);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000831);
    SetSpeffect(3000830, 260100131);
    EndUnconditionally(EventEndType.End);
});

Event(4008133, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000831);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000832);
    SetSpeffect(3000830, 260100133);
    EndUnconditionally(EventEndType.End);
});

Event(4008134, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000832);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000831);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000830);
    AwardItemLot(800201200);
    SetEventFlag(13000831, OFF);
    ClearSpeffect(3000830, 260100131);
    EndUnconditionally(EventEndType.End);
});

Event(4008135, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13000831);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000832);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13000830);
    AwardItemLot(800201220);
    SetEventFlag(13000832, OFF);
    ClearSpeffect(3000830, 260100133);
    EndUnconditionally(EventEndType.End);
});

Event(4008140, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100140, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13011800, ON);
    SetEventFlag(13012800, OFF);
    SetEventFlag(13010800, OFF);
    SetEventFlag(9308, OFF);
    SetEventFlag(6308, OFF);
    SetPlayerRespawnPoint(3012952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 1, 3010972);
    EndUnconditionally(EventEndType.End);
});

Event(4008141, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100142, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13011800, OFF);
    SetEventFlag(13012800, ON);
    SetEventFlag(13010800, OFF);
    SetEventFlag(9308, OFF);
    SetEventFlag(6308, OFF);
    SetPlayerRespawnPoint(3012952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(30, 1, 3010972);
    EndUnconditionally(EventEndType.End);
});

Event(4008142, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13012800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13011800);
    SetSpeffect(3010800, 260100141);
    EndUnconditionally(EventEndType.End);
});

Event(4008143, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13011800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13012800);
    SetSpeffect(3010800, 260100143);
    EndUnconditionally(EventEndType.End);
});

Event(4008144, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13010800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13012800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13011800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13010800);
    AwardItemLot(800201300);
    SetEventFlag(13011800, OFF);
    ClearSpeffect(3010800, 260100141);
    EndUnconditionally(EventEndType.End);
});

Event(4008145, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13010800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13011800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13012800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13010800);
    AwardItemLot(800201320);
    SetEventFlag(13012800, OFF);
    ClearSpeffect(3010800, 260100143);
    EndUnconditionally(EventEndType.End);
});

Event(4008150, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100150, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13201800, ON);
    SetEventFlag(13202800, OFF);
    SetEventFlag(13200800, OFF);
    SetEventFlag(9305, OFF);
    SetEventFlag(6305, OFF);
    SetPlayerRespawnPoint(3202950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(32, 0, 3200970);
    EndUnconditionally(EventEndType.End);
});

Event(4008151, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100152, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13201800, OFF);
    SetEventFlag(13202800, ON);
    SetEventFlag(13200800, OFF);
    SetEventFlag(9305, OFF);
    SetEventFlag(6305, OFF);
    SetPlayerRespawnPoint(3202950);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(32, 0, 3200970);
    EndUnconditionally(EventEndType.End);
});

Event(4008152, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13202800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13201800);
    SetSpeffect(3200800, 260100151);
    SetSpeffect(3200220, 260100151);
    SetSpeffect(3200222, 260100151);
    SetSpeffect(3200221, 260100151);
    SetSpeffect(3200224, 260100151);
    SetSpeffect(3200226, 260100151);
    SetSpeffect(3200225, 260100151);
    SetSpeffect(3200223, 260100151);
    SetSpeffect(3200227, 260100151);
    SetSpeffect(3200228, 260100151);
    SetSpeffect(3200230, 260100151);
    SetSpeffect(3200229, 260100151);
    SetSpeffect(3200233, 260100151);
    SetSpeffect(3200231, 260100151);
    SetSpeffect(3200232, 260100151);
    SetSpeffect(3200421, 260100151);
    SetSpeffect(3200514, 260100151);
    SetSpeffect(3200515, 260100151);
    EndUnconditionally(EventEndType.End);
});

Event(4008153, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13201800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13202800);
    SetSpeffect(3200800, 260100153);
    SetSpeffect(3200220, 260100153);
    SetSpeffect(3200222, 260100153);
    SetSpeffect(3200221, 260100153);
    SetSpeffect(3200224, 260100153);
    SetSpeffect(3200226, 260100153);
    SetSpeffect(3200225, 260100153);
    SetSpeffect(3200223, 260100153);
    SetSpeffect(3200227, 260100153);
    SetSpeffect(3200228, 260100153);
    SetSpeffect(3200230, 260100153);
    SetSpeffect(3200229, 260100153);
    SetSpeffect(3200233, 260100153);
    SetSpeffect(3200231, 260100153);
    SetSpeffect(3200232, 260100153);
    SetSpeffect(3200421, 260100153);
    SetSpeffect(3200514, 260100153);
    SetSpeffect(3200515, 260100153);
    EndUnconditionally(EventEndType.End);
});

Event(4008154, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13200800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13202800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13201800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13200800);
    AwardItemLot(800201400);
    SetEventFlag(13201800, OFF);
    ClearSpeffect(3200800, 260100151);
    ClearSpeffect(3200220, 260100151);
    ClearSpeffect(3200222, 260100151);
    ClearSpeffect(3200221, 260100151);
    ClearSpeffect(3200224, 260100151);
    ClearSpeffect(3200226, 260100151);
    ClearSpeffect(3200225, 260100151);
    ClearSpeffect(3200223, 260100151);
    ClearSpeffect(3200227, 260100151);
    ClearSpeffect(3200228, 260100151);
    ClearSpeffect(3200230, 260100151);
    ClearSpeffect(3200229, 260100151);
    ClearSpeffect(3200233, 260100151);
    ClearSpeffect(3200231, 260100151);
    ClearSpeffect(3200232, 260100151);
    ClearSpeffect(3200421, 260100151);
    ClearSpeffect(3200514, 260100151);
    ClearSpeffect(3200515, 260100151);
    EndUnconditionally(EventEndType.End);
});

Event(4008155, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13200800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13201800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13202800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13200800);
    AwardItemLot(800201420);
    SetEventFlag(13202800, OFF);
    ClearSpeffect(3200800, 260100153);
    ClearSpeffect(3200220, 260100153);
    ClearSpeffect(3200222, 260100153);
    ClearSpeffect(3200221, 260100153);
    ClearSpeffect(3200224, 260100153);
    ClearSpeffect(3200226, 260100153);
    ClearSpeffect(3200225, 260100153);
    ClearSpeffect(3200223, 260100153);
    ClearSpeffect(3200227, 260100153);
    ClearSpeffect(3200228, 260100153);
    ClearSpeffect(3200230, 260100153);
    ClearSpeffect(3200229, 260100153);
    ClearSpeffect(3200233, 260100153);
    ClearSpeffect(3200231, 260100153);
    ClearSpeffect(3200232, 260100153);
    ClearSpeffect(3200421, 260100153);
    ClearSpeffect(3200514, 260100153);
    ClearSpeffect(3200515, 260100153);
    EndUnconditionally(EventEndType.End);
});

Event(4008160, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100160, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13201850, ON);
    SetEventFlag(13202850, OFF);
    SetEventFlag(13200850, OFF);
    SetEventFlag(9304, OFF);
    SetEventFlag(6304, OFF);
    SetEventFlag(13200440, OFF);
    SetEventFlag(13200445, OFF);
    SetEventFlag(13200855, OFF);
    SetEventFlag(13200856, OFF);
    SetEventFlag(13200862, OFF);
    SetPlayerRespawnPoint(3202952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(32, 0, 3200972);
    EndUnconditionally(EventEndType.End);
});

Event(4008161, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100162, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13201850, OFF);
    SetEventFlag(13202850, ON);
    SetEventFlag(13200850, OFF);
    SetEventFlag(9304, OFF);
    SetEventFlag(6304, OFF);
    SetEventFlag(13200440, OFF);
    SetEventFlag(13200445, OFF);
    SetEventFlag(13200855, OFF);
    SetEventFlag(13200856, OFF);
    SetEventFlag(13200862, OFF);
    SetPlayerRespawnPoint(3202952);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(32, 0, 3200972);
    EndUnconditionally(EventEndType.End);
});

Event(4008162, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13202850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13201850);
    SetSpeffect(3200850, 260100161);
    SetSpeffect(3200851, 260100161);
    EndUnconditionally(EventEndType.End);
});

Event(4008163, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13201850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13202850);
    SetSpeffect(3200850, 260100163);
    SetSpeffect(3200851, 260100163);
    EndUnconditionally(EventEndType.End);
});

Event(4008164, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13200850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13202850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13201850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13200850);
    AwardItemLot(800201500);
    SetEventFlag(13201850, OFF);
    ClearSpeffect(3200850, 260100161);
    ClearSpeffect(3200851, 260100161);
    EndUnconditionally(EventEndType.End);
});

Event(4008165, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13200850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13201850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13202850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13200850);
    AwardItemLot(800201520);
    SetEventFlag(13202850, OFF);
    ClearSpeffect(3200850, 260100163);
    ClearSpeffect(3200851, 260100163);
    EndUnconditionally(EventEndType.End);
});

Event(4008170, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100170, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14001830, ON);
    SetEventFlag(14002830, OFF);
    SetEventFlag(14000830, OFF);
    SetEventFlag(9320, OFF);
    SetEventFlag(6320, OFF);
    SetEventFlag(14000004, OFF);
    SetEventFlag(64000260, OFF);
    SetEventFlag(64000261, OFF);
    SetPlayerRespawnPoint(4002953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    SetMapCeremony(40, 0, 10);
    WarpPlayer(40, 0, 4000973);
    EndUnconditionally(EventEndType.End);
});

Event(4008171, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100172, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14001830, OFF);
    SetEventFlag(14002830, ON);
    SetEventFlag(14000830, OFF);
    SetEventFlag(9320, OFF);
    SetEventFlag(6320, OFF);
    SetEventFlag(14000004, OFF);
    SetEventFlag(64000260, OFF);
    SetEventFlag(64000261, OFF);
    SetPlayerRespawnPoint(4002953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    SetMapCeremony(40, 0, 10);
    WarpPlayer(40, 0, 4000973);
    EndUnconditionally(EventEndType.End);
});

Event(4008172, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14002830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14001830);
    SetSpeffect(4000830, 260100171);
    EndUnconditionally(EventEndType.End);
});

Event(4008173, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14001830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14002830);
    SetSpeffect(4000830, 260100173);
    EndUnconditionally(EventEndType.End);
});

Event(4008174, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14000830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14002830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14001830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14000830);
    AwardItemLot(800201600);
    SetEventFlag(14001830, OFF);
    ClearSpeffect(4000830, 260100171);
    EndUnconditionally(EventEndType.End);
});

Event(4008175, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14000830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14001830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14002830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14000830);
    AwardItemLot(800201620);
    SetEventFlag(14002830, OFF);
    ClearSpeffect(4000830, 260100173);
    EndUnconditionally(EventEndType.End);
});

Event(4008180, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100180, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13411830, ON);
    SetEventFlag(13412830, OFF);
    SetEventFlag(13410830, OFF);
    SetEventFlag(9309, OFF);
    SetEventFlag(6309, OFF);
    SetEventFlag(13410000, OFF);
    SetPlayerRespawnPoint(3412951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(34, 1, 3410971);
    EndUnconditionally(EventEndType.End);
});

Event(4008181, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100182, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(13411830, OFF);
    SetEventFlag(13412830, ON);
    SetEventFlag(13410830, OFF);
    SetEventFlag(9309, OFF);
    SetEventFlag(6309, OFF);
    SetEventFlag(13410000, OFF);
    SetPlayerRespawnPoint(3412951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(34, 1, 3410971);
    EndUnconditionally(EventEndType.End);
});

Event(4008182, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13412830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13411830);
    SetSpeffect(3410830, 260100181);
    SetSpeffect(3410831, 260100181);
    SetSpeffect(3410832, 260100181);
    EndUnconditionally(EventEndType.End);
});

Event(4008183, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13411830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13412830);
    SetSpeffect(3410830, 260100183);
    SetSpeffect(3410831, 260100183);
    SetSpeffect(3410832, 260100183);
    EndUnconditionally(EventEndType.End);
});

Event(4008184, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13410830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13412830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13411830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13410830);
    AwardItemLot(800201700);
    SetEventFlag(13411830, OFF);
    ClearSpeffect(3410830, 260100181);
    ClearSpeffect(3410831, 260100181);
    ClearSpeffect(3410832, 260100181);
    EndUnconditionally(EventEndType.End);
});

Event(4008185, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13410830);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 13411830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13412830);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 13410830);
    AwardItemLot(800201720);
    SetEventFlag(13412830, OFF);
    ClearSpeffect(3410830, 260100183);
    ClearSpeffect(3410831, 260100183);
    ClearSpeffect(3410832, 260100183);
    EndUnconditionally(EventEndType.End);
});

Event(4008190, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100190, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14101800, ON);
    SetEventFlag(14102800, OFF);
    SetEventFlag(14100800, OFF);
    SetEventFlag(14101100, OFF);
    SetEventFlag(9321, OFF);
    SetEventFlag(6321, OFF);
    SetEventFlag(14100002, OFF);
    SetPlayerRespawnPoint(4102951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(41, 0, 4100971);
    EndUnconditionally(EventEndType.End);
});

Event(4008191, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100192, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14101800, OFF);
    SetEventFlag(14102800, ON);
    SetEventFlag(14100800, OFF);
    SetEventFlag(14101100, OFF);
    SetEventFlag(9321, OFF);
    SetEventFlag(6321, OFF);
    SetEventFlag(14100002, OFF);
    SetPlayerRespawnPoint(4102951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(41, 0, 4100971);
    EndUnconditionally(EventEndType.End);
});

Event(4008192, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14101800);
    SetSpeffect(4100800, 260100191);
    EndUnconditionally(EventEndType.End);
});

Event(4008193, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14102800);
    SetSpeffect(4100800, 260100193);
    EndUnconditionally(EventEndType.End);
});

Event(4008194, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14100800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14100800);
    AwardItemLot(800201800);
    SetEventFlag(14101800, OFF);
    ClearSpeffect(4100800, 260100191);
    EndUnconditionally(EventEndType.End);
});

Event(4008195, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14100800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14101800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14102800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14100800);
    AwardItemLot(800201820);
    SetEventFlag(14102800, OFF);
    ClearSpeffect(4100800, 260100193);
    EndUnconditionally(EventEndType.End);
});

Event(4008200, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100200, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14501800, ON);
    SetEventFlag(14502800, OFF);
    SetEventFlag(14500800, OFF);
    SetEventFlag(9322, OFF);
    SetEventFlag(6322, OFF);
    SetEventFlag(14500000, OFF);
    SetPlayerRespawnPoint(4502955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(45, 0, 4500975);
    EndUnconditionally(EventEndType.End);
});

Event(4008201, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100202, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14501800, OFF);
    SetEventFlag(14502800, ON);
    SetEventFlag(14500800, OFF);
    SetEventFlag(9322, OFF);
    SetEventFlag(6322, OFF);
    SetEventFlag(14500000, OFF);
    SetPlayerRespawnPoint(4502955);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(45, 0, 4500975);
    EndUnconditionally(EventEndType.End);
});

Event(4008202, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14502800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14501800);
    SetSpeffect(4500800, 260100201);
    SetSpeffect(4500801, 260100201);
    SetSpeffect(4500802, 260100201);
    SetSpeffect(4500803, 260100201);
    EndUnconditionally(EventEndType.End);
});

Event(4008203, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14501800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14502800);
    SetSpeffect(4500800, 260100203);
    SetSpeffect(4500801, 260100203);
    SetSpeffect(4500802, 260100203);
    SetSpeffect(4500803, 260100203);
    EndUnconditionally(EventEndType.End);
});

Event(4008204, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14500800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14502800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14501800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14500800);
    AwardItemLot(800201900);
    SetEventFlag(14501800, OFF);
    ClearSpeffect(4500800, 260100201);
    ClearSpeffect(4500801, 260100201);
    ClearSpeffect(4500802, 260100201);
    ClearSpeffect(4500803, 260100201);
    EndUnconditionally(EventEndType.End);
});

Event(4008205, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14500800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14501800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14502800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14500800);
    AwardItemLot(800201920);
    SetEventFlag(14502800, OFF);
    ClearSpeffect(4500800, 260100203);
    ClearSpeffect(4500801, 260100203);
    ClearSpeffect(4500802, 260100203);
    ClearSpeffect(4500803, 260100203);
    EndUnconditionally(EventEndType.End);
});

Event(4008210, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100210, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14501870, ON);
    SetEventFlag(14502870, OFF);
    SetEventFlag(14500860, OFF);
    SetEventFlag(14500861, OFF);
    SetEventFlag(9323, OFF);
    SetEventFlag(6323, OFF);
    SetEventFlag(14500006, OFF);
    SetPlayerRespawnPoint(4502957);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(45, 0, 4500977);
    EndUnconditionally(EventEndType.End);
});

Event(4008211, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100212, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(14501870, OFF);
    SetEventFlag(14502870, ON);
    SetEventFlag(14500860, OFF);
    SetEventFlag(14500861, OFF);
    SetEventFlag(9323, OFF);
    SetEventFlag(6323, OFF);
    SetEventFlag(14500006, OFF);
    SetPlayerRespawnPoint(4502957);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(45, 0, 4500977);
    EndUnconditionally(EventEndType.End);
});

Event(4008212, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14502870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14501870);
    SetSpeffect(4500860, 260100211);
    SetSpeffect(4500861, 260100211);
    EndUnconditionally(EventEndType.End);
});

Event(4008213, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14501870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14502870);
    SetSpeffect(4500860, 260100213);
    SetSpeffect(4500861, 260100213);
    EndUnconditionally(EventEndType.End);
});

Event(4008214, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14500860);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14502870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14501870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14500860);
    AwardItemLot(800202000);
    SetEventFlag(14501870, OFF);
    ClearSpeffect(4500860, 260100211);
    ClearSpeffect(4500861, 260100211);
    EndUnconditionally(EventEndType.End);
});

Event(4008215, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14500860);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 14501870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14502870);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 14500860);
    AwardItemLot(800202020);
    SetEventFlag(14502870, OFF);
    ClearSpeffect(4500860, 260100213);
    ClearSpeffect(4500861, 260100213);
    EndUnconditionally(EventEndType.End);
});

Event(4008220, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100220, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15001800, ON);
    SetEventFlag(15002800, OFF);
    SetEventFlag(15000800, OFF);
    SetEventFlag(9324, OFF);
    SetEventFlag(6324, OFF);
    SetEventFlag(15000000, OFF);
    SetPlayerRespawnPoint(5002953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(50, 0, 5000973);
    EndUnconditionally(EventEndType.End);
});

Event(4008221, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100222, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15001800, OFF);
    SetEventFlag(15002800, ON);
    SetEventFlag(15000800, OFF);
    SetEventFlag(9324, OFF);
    SetEventFlag(6324, OFF);
    SetEventFlag(15000000, OFF);
    SetPlayerRespawnPoint(5002953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(50, 0, 5000973);
    EndUnconditionally(EventEndType.End);
});

Event(4008222, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15001800);
    SetSpeffect(5000800, 260100221);
    SetSpeffect(5000801, 260100221);
    SetSpeffect(5000802, 260100221);
    EndUnconditionally(EventEndType.End);
});

Event(4008223, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15002800);
    SetSpeffect(5000800, 260100223);
    SetSpeffect(5000801, 260100223);
    SetSpeffect(5000802, 260100223);
    EndUnconditionally(EventEndType.End);
});

Event(4008224, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15000800);
    AwardItemLot(800202100);
    SetEventFlag(15001800, OFF);
    ClearSpeffect(5000800, 260100221);
    ClearSpeffect(5000801, 260100221);
    ClearSpeffect(5000802, 260100221);
    EndUnconditionally(EventEndType.End);
});

Event(4008225, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15000800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15001800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15002800);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15000800);
    AwardItemLot(800202120);
    SetEventFlag(15002800, OFF);
    ClearSpeffect(5000800, 260100223);
    ClearSpeffect(5000801, 260100223);
    ClearSpeffect(5000802, 260100223);
    EndUnconditionally(EventEndType.End);
});

Event(4008230, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100230, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15101850, ON);
    SetEventFlag(15102850, OFF);
    SetEventFlag(15100850, OFF);
    SetEventFlag(6326, OFF);
    SetEventFlag(9326, OFF);
    SetEventFlag(15100001, OFF);
    SetPlayerRespawnPoint(5102953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(51, 0, 5100973);
    EndUnconditionally(EventEndType.End);
});

Event(4008231, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100232, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15101850, OFF);
    SetEventFlag(15102850, ON);
    SetEventFlag(15100850, OFF);
    SetEventFlag(6326, OFF);
    SetEventFlag(9326, OFF);
    SetEventFlag(15100001, OFF);
    SetPlayerRespawnPoint(5102953);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(51, 0, 5100973);
    EndUnconditionally(EventEndType.End);
});

Event(4008232, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15102850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15101850);
    SetSpeffect(5100850, 260100231);
    EndUnconditionally(EventEndType.End);
});

Event(4008233, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15101850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15102850);
    SetSpeffect(5100850, 260100233);
    EndUnconditionally(EventEndType.End);
});

Event(4008234, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15100850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15102850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15101850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15100850);
    AwardItemLot(800202200);
    SetEventFlag(15101850, OFF);
    ClearSpeffect(5100850, 260100231);
    EndUnconditionally(EventEndType.End);
});

Event(4008235, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15100850);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15101850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15102850);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15100850);
    AwardItemLot(800202220);
    SetEventFlag(15102850, OFF);
    ClearSpeffect(5100850, 260100233);
    EndUnconditionally(EventEndType.End);
});

Event(4008240, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100240, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15111810, ON);
    SetEventFlag(15112810, OFF);
    SetEventFlag(15110800, OFF);
    SetEventFlag(6327, OFF);
    SetEventFlag(9327, OFF);
    SetEventFlag(15110000, OFF);
    SetPlayerRespawnPoint(5112951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(51, 1, 5110971);
    EndUnconditionally(EventEndType.End);
});

Event(4008241, Default, function() {
    IfCharacterHasSpeffect(AND_01, 10000, 260100242, true, ComparisonType.Equal, 1);
    IfConditionGroup(MAIN, PASS, AND_01);
    SetEventFlag(15111810, OFF);
    SetEventFlag(15112810, ON);
    SetEventFlag(15110800, OFF);
    SetEventFlag(6327, OFF);
    SetEventFlag(9327, OFF);
    SetEventFlag(15110000, OFF);
    SetPlayerRespawnPoint(5112951);
    SaveRequest(0);
    WaitFixedTimeSeconds(1);
    WarpPlayer(51, 1, 5110971);
    EndUnconditionally(EventEndType.End);
});

Event(4008242, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15112810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15111810);
    SetSpeffect(5110800, 260100101);
    SetSpeffect(5110801, 260100101);
    EndUnconditionally(EventEndType.End);
});

Event(4008243, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15111810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15112810);
    SetSpeffect(5110800, 260100103);
    SetSpeffect(5110801, 260100103);
    EndUnconditionally(EventEndType.End);
});

Event(4008244, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15110800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15112810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15111810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15110800);
    AwardItemLot(800202300);
    SetEventFlag(15111810, OFF);
    ClearSpeffect(3700800, 260100101);
    ClearSpeffect(3700801, 260100101);
    EndUnconditionally(EventEndType.End);
});

Event(4008245, Default, function() {
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15110800);
    EndIfEventFlag(EventEndType.End, ON, TargetEventFlagType.EventFlag, 15111810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15112810);
    WaitForEventFlag(ON, TargetEventFlagType.EventFlag, 15110800);
    AwardItemLot(800202320);
    SetEventFlag(15112810, OFF);
    ClearSpeffect(3700800, 260100103);
    ClearSpeffect(3700801, 260100103);
    EndUnconditionally(EventEndType.End);
});
