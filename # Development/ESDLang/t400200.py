#-------------------------------------------
#-- Andre the Blacksmith
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400200_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400200_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400200_x18()
        assert not IsClientPlayer()

def t400200_x0(action2=12002003):
    """ State 0,1 """
    # action:12002003:Use <?gdsparam@2141?> to reinforce Estus Flask?
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400200_x1(z5=6000, flag5=1175, flag6=1176, flag7=6000, flag8=6000, flag9=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400200_x2():
    """ State 0,1 """
    if not CheckSpecificPersonTalkHasEnded(0):
        """ State 7 """
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """ State 6 """
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """ State 2 """
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t400200_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400200_x4(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t400200_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400200_x5(text2=_, z3=_, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400200_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 6 """
    return 0

def t400200_x6(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400200_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400200_x7(lot1=61000):
    """ State 0,1 """
    # lot:61000:Hawkwood's Swordgrass
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400200_x8(z1=12, z2=9002, flag1=6062):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)

        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400200_x9(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400200_x10(goods5=150, goods7=_):
    """ State 0,1 """
    if (not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
        goods5 + 1 + goods7 * 40 + 1 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 +
        2 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 3 * 2) and not IsEquipmentIDObtained(3,
        goods5 + 1 + goods7 * 40 + 4 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 +
        5 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 6 * 2) and not IsEquipmentIDObtained(3,
        goods5 + 1 + goods7 * 40 + 7 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 +
        8 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 9 * 2)):
        """ State 2 """
        if (not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
            goods5 + 1 + goods7 * 40 + 11 * 2) and not IsEquipmentIDObtained(3, goods5 + 12 + goods7
            * 40 + 12 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 13 * 2) and not
            IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 14 * 2) and not IsEquipmentIDObtained(3,
            goods5 + 1 + goods7 * 40 + 15 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 *
            40 + 16 * 2) and not IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 17 * 2) and not
            IsEquipmentIDObtained(3, goods5 + 1 + goods7 * 40 + 18 * 2) and not IsEquipmentIDObtained(3,
            goods5 + 1 + goods7 * 40 + 19 * 2)):
            """ State 3 """
            if (not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 0 * 2) and not IsEquipmentIDObtained(3,
                goods5 + 0 + goods7 * 40 + 1 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7
                * 40 + 2 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 3 * 2) and
                not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 4 * 2) and not IsEquipmentIDObtained(3,
                goods5 + 0 + goods7 * 40 + 5 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7
                * 40 + 6 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 7 * 2) and
                not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 8 * 2) and not IsEquipmentIDObtained(3,
                goods5 + 0 + goods7 * 40 + 9 * 2)):
                """ State 4 """
                if (not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 10 * 2) and not IsEquipmentIDObtained(3,
                    goods5 + 0 + goods7 * 40 + 11 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 +
                    goods7 * 40 + 12 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 +
                    13 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 14 * 2) and not
                    IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 15 * 2) and not IsEquipmentIDObtained(3,
                    goods5 + 0 + goods7 * 40 + 16 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 +
                    goods7 * 40 + 17 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 +
                    18 * 2) and not IsEquipmentIDObtained(3, goods5 + 0 + goods7 * 40 + 19 * 2)):
                    """ State 5 """
                    return 0
                else:
                    pass
            else:
                pass
        else:
            pass
    else:
        pass
    """ State 6 """
    return 1

def t400200_x11(goods1=2103, goods2=2104, goods3=2105, goods4=2106, goods5=150, goods6=2141, val1=10, goods20=2172):
    """ State 0,18 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 12 """
        # Reinforce Weapon
        AddTalkListDataIf(GetEventStatus(25000055) == 0, 2, 15010002, -1)
        
        # Weapon Infusions
        AddTalkListData(11, 15003021, -1)
        
        # Shield Infusions
        AddTalkListData(12, 15003022, -1)
        
        # Catalyst Infusions
        AddTalkListData(13, 15003029, -1)
        
        # Infuse Weapon
        AddTalkListData(1, 15010001, -1)
        
        # Repair Equipment
        AddTalkListData(3, 15010003, -1)
        
        # Allot Estus
        # AddTalkListData(7, 15002002, -1)
        
        # Reinforce Estus Flask
        AddTalkListData(8, 15002003, -1)
    
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 15, 15003018, -1)
        
        # Learn Gesture
        AddTalkListDataIf(GetEventStatus(6074) == 0, 9, 99000960, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008130) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008130) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008130) == 1, 32, 15015042, -1)
        
        # Talk
        AddTalkListData(5, 15000000, -1)

        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 13 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 2 """
        if GetTalkListEntryResult() == 1:
            """ State 3,14 """
            CombineMenuFlagAndEventFlag(6001, 344)
            CombineMenuFlagAndEventFlag(6001, 337)
            CombineMenuFlagAndEventFlag(6001, 334)
            CombineMenuFlagAndEventFlag(300, 332)
            CombineMenuFlagAndEventFlag(300, 333)
            CombineMenuFlagAndEventFlag(300, 342)
            CombineMenuFlagAndEventFlag(301, 335)
            CombineMenuFlagAndEventFlag(301, 345)
            CombineMenuFlagAndEventFlag(301, 340)
            CombineMenuFlagAndEventFlag(302, 336)
            CombineMenuFlagAndEventFlag(302, 338)
            CombineMenuFlagAndEventFlag(302, 339)
            CombineMenuFlagAndEventFlag(303, 341)
            CombineMenuFlagAndEventFlag(303, 343)
            CombineMenuFlagAndEventFlag(303, 346)
            CombineMenuFlagAndEventFlag(6000, 347)
            CombineMenuFlagAndEventFlag(6001, 331)
            CombineMenuFlagAndEventFlag(6001, 232)
            CombineMenuFlagAndEventFlag(6001, 233)
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
                
            """ State 6 """
            OpenEquipmentChangeOfPurposeShop()
            assert not (CheckSpecificPersonMenuIsOpen(7, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """ State 4 """
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                """ State 21,27 """
                assert t400200_x9(action1=13010000)
            else:
                """ State 17 """
                CombineMenuFlagAndEventFlag(6001, 232)
                CombineMenuFlagAndEventFlag(6001, 233)
                CombineMenuFlagAndEventFlag(6001, 234)
                CombineMenuFlagAndEventFlag(6001, 235)
                """ State 9 """
                OpenEnhanceShop(0)
                assert not (CheckSpecificPersonMenuIsOpen(9, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,10 """
            OpenRepairShop()
            assert not (CheckSpecificPersonMenuIsOpen(8, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 4:
            """ State 5,23 """
            assert t400200_x19(goods1=goods1, goods2=goods2, goods3=goods3, goods4=goods4)
        elif GetTalkListEntryResult() == 5:
            """ State 11,24 """
            assert t400200_x20()
        elif GetTalkListEntryResult() == 7:
            """ State 20,26 """
            assert (t400200_x24(goods5=goods5) and not (CheckSpecificPersonMenuIsOpen(8, 0) == 1 and
                    not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 8:
            """ State 19,25 """
            assert (t400200_x23(goods5=goods5, goods6=goods6, val1=val1) and not (CheckSpecificPersonMenuIsOpen(8,
                    0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 9:
            """ State 30,31 """
            assert t400200_x27(z2=24, z3=9025, flag1=6074)
        elif GetTalkListEntryResult() == 15:
            OpenRegularShop(100000, 109999)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 11:
            OpenGenericDialog(1, 99004000, 0, 0, 0)
            continue
        elif GetTalkListEntryResult() == 12:
            OpenGenericDialog(1, 99004001, 0, 0, 0)
            continue
        elif GetTalkListEntryResult() == 13:
            OpenGenericDialog(1, 99004002, 0, 0, 0)
            continue
        elif GetTalkListEntryResult() == 14:
            OpenGenericDialog(1, 99004003, 0, 0, 0)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008130, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400200_x6(text1=10111030, flag2=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                assert t400200_x6(text1=10111000, flag2=0, mode1=0)
                GetItemFromItemLot(90120)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400200_x6(text1=10111010, flag2=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400200_x6(text1=10111020, flag2=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            assert t400200_x6(text1=10111020, flag2=0, mode1=0)
            SetEventState(25008130, 0)
            return 0
        else:
            """ State 7,22 """
            # talk:20000500:Prithee, be careful.
            assert t400200_x6(text1=20000500, flag2=0, mode1=1)
            """ State 28 """
            return 0

def t400200_x12():
    """ State 0,1 """
    if GetEventStatus(1175) == 1:
        """ State 2 """
        if not GetEventStatus(74000200):
            """ State 3,12 """
            # talk:20000000:Well, a newcomer I see.
            assert t400200_x5(text2=20000000, z3=74000200, flag3=0, mode2=1)
        elif GetEventStatus(74000201) == 1 and not GetEventStatus(74000210):
            """ State 5 """
            if not GetEventStatus(50006100):
                """ State 7,11 """
                # talk:20001200:Oh, you've returned. I was hoping to see y'.
                assert t400200_x6(text1=20001200, flag2=0, mode1=1)
                """ State 14 """
                # lot:61000:Hawkwood's Swordgrass
                assert t400200_x7(lot1=61000)
            else:
                """ State 8 """
                pass
            """ State 15 """
            # talk:20001250:Well, now that that task is concluded...
            assert t400200_x5(text2=20001250, z3=74000210, flag3=0, mode2=1)
        else:
            """ State 4,10 """
            # talk:20000100:Ahh, well met.
            assert t400200_x6(text1=20000100, flag2=0, mode1=1)
        """ State 9 """
        # goods:2103:Farron Coal, goods:2104:Sage's Coal, goods:2105:Giant's Coal, goods:2106:Profaned Coal, goods:151:Estus Flask, goods:191:Ashen Estus Flask, goods:153:Estus Flask+1, goods:193:Ashen Estus Flask+1, goods:155:Estus Flask+2, goods:195:Ashen Estus Flask+2, goods:157:Estus Flask+3, goods:197:Ashen Estus Flask+3, goods:159:Estus Flask+4, goods:199:Ashen Estus Flask+4, goods:161:Estus Flask+5, goods:201:Ashen Estus Flask+5, goods:163:Estus Flask+6, goods:203:Ashen Estus Flask+6, goods:165:Estus Flask+7, goods:205:Ashen Estus Flask+7, goods:167:Estus Flask+8, goods:207:Ashen Estus Flask+8, goods:169:Estus Flask+9, goods:209:Ashen Estus Flask+9, goods:171:Estus Flask+10, goods:211:Ashen Estus Flask+10, goods:150:Estus Flask, goods:190:Ashen Estus Flask, goods:152:Estus Flask+1, goods:192:Ashen Estus Flask+1, goods:154:Estus Flask+2, goods:194:Ashen Estus Flask+2, goods:156:Estus Flask+3, goods:196:Ashen Estus Flask+3, goods:158:Estus Flask+4, goods:198:Ashen Estus Flask+4, goods:160:Estus Flask+5, goods:200:Ashen Estus Flask+5, goods:162:Estus Flask+6, goods:202:Ashen Estus Flask+6, goods:164:Estus Flask+7, goods:204:Ashen Estus Flask+7, goods:166:Estus Flask+8, goods:206:Ashen Estus Flask+8, goods:168:Estus Flask+9, goods:208:Ashen Estus Flask+9, goods:170:Estus Flask+10, goods:210:Ashen Estus Flask+10, goods:2141:Estus Shard
        assert (t400200_x11(goods1=2103, goods2=2104, goods3=2105, goods4=2106, goods5=150, goods6=2141,
                val1=10, goods20=2172))
    else:
        """ State 6,13 """
        # talk:20001700:Overstep not yer bounds, cousin.
        assert t400200_x6(text1=20001700, flag2=0, mode1=1)
    """ State 16 """
    return 0

def t400200_x13():
    """ State 0,9 """
    assert t400200_x2() and GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2 """
        if not GetEventStatus(74000214):
            """ State 6,14 """
            # talk:20001300: 
            call = t400200_x4(text3=20001300, z4=74000214, flag4=0, mode3=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 10 """
                assert t400200_x2()
        elif not GetEventStatus(74000215):
            """ State 7,15 """
            # talk:20001400: 
            call = t400200_x4(text3=20001400, z4=74000215, flag4=0, mode3=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 11 """
                assert t400200_x2()
        else:
            """ State 8,4 """
            SetEventState(74000214, 0)
            """ State 5 """
            SetEventState(74000215, 0)
            """ State 13 """
            # talk:20001500:Enough of that!
            call = t400200_x6(text1=20001500, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 12 """
                assert t400200_x2()
    else:
        """ State 3 """
        pass
    """ State 16 """
    return 0

def t400200_x14():
    """ State 0,1 """
    if GetEventStatus(1178) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:20001600: 
            call = t400200_x6(text1=20001600, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400200_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400200_x15():
    """ State 0,3 """
    if GetEventStatus(1176) == 1 or GetEventStatus(1177) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t400200_x16():
    """ State 0,1 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 2,5 """
        # talk:20000500:Prithee, be careful.
        call = t400200_x6(text1=20000500, flag2=0, mode1=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400200_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400200_x17():
    """ State 0,1 """
    while True:
        call = t400200_x21()
        assert not GetEventStatus(1160)
        """ State 2 """
        call = t400200_x22()
        assert GetEventStatus(1160) == 1

def t400200_x18():
    """ State 0,1 """
    assert t400200_x2()
    """ State 2 """
    return 0

def t400200_x19(goods1=2103, goods2=2104, goods3=2105, goods4=2106):
    """ State 0,1 """
    ClearTalkListData()
    """ State 17 """
    # goods:2103:Farron Coal, action:15010010:Give <?gdsparam@2103?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 10, 15010010, -1)
    # goods:2104:Sage's Coal, action:15010011:Give <?gdsparam@2104?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 11, 15010011, -1)
    # goods:2105:Giant's Coal, action:15010012:Give <?gdsparam@2105?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1, 12, 15010012, -1)
    # goods:2106:Profaned Coal, action:15010013:Give <?gdsparam@2106?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1, 13, 15010013, -1)
    # action:15000180:Quit
    AddTalkListData(20, 15000180, -1)
    """ State 16 """
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 2 """
    if GetTalkListEntryResult() == 10:
        """ State 3,8 """
        SetEventState(300, 1)
        """ State 9 """
        # goods:2103:Farron Coal
        PlayerEquipmentQuantityChange(3, goods1, -1)
        """ State 18 """
        # talk:20000900:Oh, my...this coal is from the Undead Legion...
        assert t400200_x6(text1=20000900, flag2=0, mode1=1)
    elif GetTalkListEntryResult() == 11:
        """ State 4,10 """
        SetEventState(301, 1)
        """ State 11 """
        # goods:2104:Sage's Coal
        PlayerEquipmentQuantityChange(3, goods2, -1)
        """ State 19 """
        # talk:20001900:Well, well... What's the Undead Legion doing with a coal such as this?
        assert t400200_x6(text1=20001900, flag2=0, mode1=1)
    elif GetTalkListEntryResult() == 12:
        """ State 5,12 """
        SetEventState(302, 1)
        """ State 13 """
        # goods:2105:Giant's Coal
        PlayerEquipmentQuantityChange(3, goods3, -1)
        """ State 20 """
        # talk:20001000:My, my... The coal of that peaceable giant.
        assert t400200_x6(text1=20001000, flag2=0, mode1=1)
    elif GetTalkListEntryResult() == 13:
        """ State 6,14 """
        SetEventState(303, 1)
        """ State 15 """
        # goods:2106:Profaned Coal
        PlayerEquipmentQuantityChange(3, goods4, -1)
        """ State 21 """
        # talk:20001100:Lords... Where didye hap'n upon this coal?
        assert t400200_x6(text1=20001100, flag2=0, mode1=1)
    elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 7 """
        pass
    """ State 22 """
    return 0

def t400200_x20():
    """ State 0,1 """
    if GetEventStatus(300) == 1 and GetEventStatus(301) == 1 and GetEventStatus(302) == 1:
        """ State 2 """
        if not GetEventStatus(74000205):
            """ State 4,16 """
            # talk:20000600:Weapons and protection are sturdy enough, by and large.
            assert t400200_x5(text2=20000600, z3=74000205, flag3=0, mode2=1)
        elif not GetEventStatus(74000206):
            """ State 5,21 """
            # talk:20000700:There are two ways to smith weapons.
            assert t400200_x5(text2=20000700, z3=74000206, flag3=0, mode2=1)
            """ State 23 """
            assert t400200_x8(z1=12, z2=9002, flag1=6062)
        else:
            """ State 15,20 """
            # talk:20001800:Oh, by the by.
            assert t400200_x6(text1=20001800, flag2=0, mode1=1)
            """ State 14 """
            SetEventState(74000205, 0)
            """ State 13 """
            SetEventState(74000206, 0)
    else:
        """ State 3 """
        if not GetEventStatus(74000205):
            """ State 6,17 """
            # talk:20000600:Weapons and protection are sturdy enough, by and large.
            assert t400200_x5(text2=20000600, z3=74000205, flag3=0, mode2=1)
        elif not GetEventStatus(74000206):
            """ State 7,18 """
            # talk:20000700:There are two ways to smith weapons.
            assert t400200_x5(text2=20000700, z3=74000206, flag3=0, mode2=1)
            """ State 24 """
            assert t400200_x8(z1=12, z2=9002, flag1=6062)
        elif not GetEventStatus(74000207):
            """ State 8,22 """
            # talk:20000800:Ahh, another matter.
            assert t400200_x5(text2=20000800, z3=74000207, flag3=0, mode2=1)
        else:
            """ State 9,19 """
            # talk:20001800:Oh, by the by.
            assert t400200_x6(text1=20001800, flag2=0, mode1=1)
            """ State 11 """
            SetEventState(74000205, 0)
            """ State 10 """
            SetEventState(74000206, 0)
            """ State 12 """
            SetEventState(74000207, 0)
    """ State 25 """
    return 0

def t400200_x21():
    """ State 0,1 """
    call = t400200_x26()
    assert CheckSelfDeath() == 1
    """ State 2 """
    t400200_x14()

def t400200_x22():
    """ State 0 """

def t400200_x23(goods5=150, goods6=2141, val1=10):
    """ State 0,18 """
    # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10, goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
    call = t400200_x10(goods5=goods5, goods7=0)
    if call.Get() == 1:
        """ State 12,9 """
        if f109(0) + f109(1) < val1:
            """ State 1 """
            # goods:2141:Estus Shard
            if ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1:
                """ State 2,14 """
                # action:12002003:Use <?gdsparam@2141?> to reinforce Estus Flask?
                call = t400200_x0(action2=12002003)
                if call.Get() == 0:
                    """ State 4,6 """
                    # goods:2141:Estus Shard
                    PlayerEquipmentQuantityChange(3, goods6, -1)
                    """ State 7 """
                    c1108(f109(0) + 1, 0)
                    """ State 16 """
                    # action:13002010:Reinforced Estus Flask, increasing number of uses\n
                    assert t400200_x9(action1=13002010)
                    """ State 22 """
                    assert t400200_x25(val1=val1)
                elif call.Done():
                    """ State 5 """
                    pass
            else:
                """ State 3,15 """
                # action:13002011:No <?gdsparam@2141?> in inventory
                assert t400200_x9(action1=13002011)
        else:
            """ State 8,17 """
            # action:13002012:Cannot reinforce further
            assert t400200_x9(action1=13002012)
    elif call.Done():
        """ State 11,20 """
        # action:13002013:No <?gdsparam@150?> in inventory
        assert t400200_x9(action1=13002013)
    """ State 23 """
    return 0

def t400200_x24(goods5=150):
    """ State 0,6 """
    # goods:151:Estus Flask, goods:153:Estus Flask+1, goods:155:Estus Flask+2, goods:157:Estus Flask+3, goods:159:Estus Flask+4, goods:161:Estus Flask+5, goods:163:Estus Flask+6, goods:165:Estus Flask+7, goods:167:Estus Flask+8, goods:169:Estus Flask+9, goods:171:Estus Flask+10, goods:150:Estus Flask, goods:152:Estus Flask+1, goods:154:Estus Flask+2, goods:156:Estus Flask+3, goods:158:Estus Flask+4, goods:160:Estus Flask+5, goods:162:Estus Flask+6, goods:164:Estus Flask+7, goods:166:Estus Flask+8, goods:168:Estus Flask+9, goods:170:Estus Flask+10
    call = t400200_x10(goods5=goods5, goods7=0)
    if call.Get() == 1:
        """ State 1,7 """
        # goods:191:Ashen Estus Flask, goods:193:Ashen Estus Flask+1, goods:195:Ashen Estus Flask+2, goods:197:Ashen Estus Flask+3, goods:199:Ashen Estus Flask+4, goods:201:Ashen Estus Flask+5, goods:203:Ashen Estus Flask+6, goods:205:Ashen Estus Flask+7, goods:207:Ashen Estus Flask+8, goods:209:Ashen Estus Flask+9, goods:211:Ashen Estus Flask+10, goods:190:Ashen Estus Flask, goods:192:Ashen Estus Flask+1, goods:194:Ashen Estus Flask+2, goods:196:Ashen Estus Flask+3, goods:198:Ashen Estus Flask+4, goods:200:Ashen Estus Flask+5, goods:202:Ashen Estus Flask+6, goods:204:Ashen Estus Flask+7, goods:206:Ashen Estus Flask+8, goods:208:Ashen Estus Flask+9, goods:210:Ashen Estus Flask+10
        call = t400200_x10(goods5=goods5, goods7=1)
        if call.Get() == 1:
            """ State 3,4 """
            OpenEstusAllotMenu()
            assert not (CheckSpecificPersonMenuIsOpen(14, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif call.Done():
            """ State 5,9 """
            # action:13002014:No <?gdsparam@190?> in inventory
            assert t400200_x9(action1=13002014)
    elif call.Done():
        """ State 2,8 """
        # action:13002013:No <?gdsparam@150?> in inventory
        assert t400200_x9(action1=13002013)
    """ State 10 """
    return 0

def t400200_x25(val1=10):
    """ State 0,3 """
    if f109(0) + f109(1) < val1:
        """ State 2 """
        pass
    else:
        """ State 1,4 """
        RequestUnlockTrophy(16)
    """ State 5 """
    return 0

def t400200_x26():
    """ State 0,5 """
    while True:
        call = t400200_x1(z5=6000, flag5=1175, flag6=1176, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t400200_x12()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400200_x13()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400200_x16()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400200_x15()

def t400200_x27(z2=24, z3=9025, flag1=6074):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0
    
def t400200_x28(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    