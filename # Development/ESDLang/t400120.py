#-------------------------------------------
#-- Fire Keeper
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400120_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400120_x14()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400120_x15()
        assert not IsClientPlayer()

def t400120_x0(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400120_x1(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

def t400120_x2():
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

def t400120_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400120_x4(text3=12002600, z3=74000115, flag3=0, mode3=1):
    """ State 0,5 """
    assert t400120_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    # talk:12002600: 
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400120_x5(text2=_, z2=_, flag2=0, mode2=0):
    """ State 0,5 """
    assert t400120_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    return 0

def t400120_x6(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400120_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400120_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400120_x8(goods1=2138, goods2=390, goods3=2002, goods5=2000, goods6=2016):
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
        
        #---- Normal
        # Level Up
        AddTalkListData(1, 15002000, -1)
        
        # Heal the Dark Sigil
        AddTalkListData(4, 15002004, 74000125)
        
        # Eyes of a Fire Keeper
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 10, 15002001, -1)
        
        # Fire Keeper Soul
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 16, 15002005, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008020) == 0 and ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1 and GetEventStatus(25009850) == 0, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008020) == 1 and GetEventStatus(25009850) == 0, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008020) == 1 and GetEventStatus(25009850) == 0, 32, 15015042, -1)
        
        # Seduce
        AddTalkListDataIf(GetEventStatus(25008020) == 1 and GetEventStatus(25009850) == 0, 33, 15015043, -1)
        
        # Talk
        AddTalkListData(20, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4 """
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                pass
            else:
                """ State 13 """
                # talk:12000200:Very well.
                assert t400120_x6(text1=12000200, flag1=0, mode1=0)
                """ State 11 """
                def WhilePaused():
                    SetTalkTime(0.1)
                assert not GetEventStatus(74000137) and not GetEventStatus(74000138)
                """ State 19 """
                SetEventState(74000135, 1)
                call = t400120_x25()
                def ExitPause():
                    SetEventState(74000135, 0)
                    SetEventState(74000136, 0)
                if call.Get() == 1:
                    """ State 21 """
                    Label('L0')
                    return 0
                elif call.Done():
                    continue
        elif GetTalkListEntryResult() == 16:
            """ State 5,17 """
            assert t400120_x22()
            return 0
        elif GetTalkListEntryResult() == 20:
            """ State 7,15 """
            assert t400120_x20()
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008020, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400120_x6(text1=10101030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                assert t400120_x6(text1=10101000, flag1=0, mode1=0)
                GetItemFromItemLot(90010)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400120_x6(text1=10101010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400120_x6(text1=10101020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            assert t400120_x6(text1=10101020, flag1=0, mode1=0)
            SetEventState(25008020, 0)
            return 0
        # Seduce
        elif GetTalkListEntryResult() == 33:
            # BONK!
            assert t400120_x29(text1=12003600)
            #OpenGenericDialog(1, 99030720, 0, 0, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6,14 """
            assert t400120_x19()
            Goto('L0')
        elif GetTalkListEntryResult() == 10:
            """ State 9,16 """
            def ExitPause():
                SetEventState(74000122, 0)
            assert t400120_x21(goods1=goods1)
            continue
        elif GetTalkListEntryResult() == 4:
            """ State 10 """
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                pass
            else:
                """ State 18 """
                # goods:490:Dark Sigil
                assert t400120_x23(goods3=490, z1=0)
                continue

        """ State 12,20 """
        assert t400120_x7(action1=13002040)

def t400120_x9():
    if GetEventStatus(25009850) == 0:
        """ State 0,1 """
        if GetEventStatus(1002) == 1:
            """ State 8 """
            if GetEventStatus(74000121) == 1:
                """ State 11 """
                Label('L0')
                """ State 20 """
                # talk:12003150:I'm truly sorry.
                assert t400120_x6(text1=12003150, flag1=0, mode1=0)
                """ State 6 """
                Label('L1')
                SetEventState(74000121, 0)
            elif GetEventStatus(50006020) == 1:
                """ State 12,22 """
                # talk:12002000:Ashen one, link the fire.
                assert t400120_x6(text1=12002000, flag1=0, mode1=0)
            else:
                """ State 13,21 """
                # talk:12002200:Ashen one, if, when thou peerest upon the First Flame...
                assert t400120_x6(text1=12002200, flag1=0, mode1=0)
        elif GetEventStatus(1001) == 1:
            """ State 7 """
            if GetEventStatus(74000121) == 1:
                Goto('L0')
            elif not GetEventStatus(74000101):
                """ State 9,19 """
                # talk:12001300:The five lords sit their five thrones.
                assert t400120_x5(text2=12001300, z2=74000101, flag2=0, mode2=0)
            else:
                """ State 10,18 """
                # talk:12001400:Ashen one, with the Lords as thy witness, bend thy knee afore the bonfire's coiled sword.
                assert t400120_x6(text1=12001400, flag1=0, mode1=0)
        else:
            """ State 2 """
            if GetEventStatus(74000121) == 1:
                """ State 5,17 """
                # talk:12003100:I'm truly sorry.
                assert t400120_x6(text1=12003100, flag1=0, mode1=0)
                Goto('L1')
            elif not GetEventStatus(74000100):
                """ State 3,16 """
                # talk:12000000:Welcome to the bonfire, Unkindled One.
                assert t400120_x5(text2=12000000, z2=74000100, flag2=0, mode2=0)
            else:
                """ State 4 """
                if not GetEventStatus(131):
                    """ State 23 """
                    # talk:12003200:Ashen one.
                    SetEventState(131, 1)
                    assert t400120_x6(text1=12003200, flag1=0, mode1=0)
                else:
                    """ State 15 """
                    # talk:12000100:Welcome home, ashen one.
                    assert t400120_x6(text1=12000100, flag1=0, mode1=0)
     
    """ State 14 """
    # goods:2138:Eyes of a Fire Keeper, goods:390:Fire Keeper Soul
    assert t400120_x8(goods1=2138, goods2=390, goods3=2002, goods5=2000, goods6=2016)
    """ State 24 """
    return 0

def t400120_x10():
    """ State 0,6 """
    assert t400120_x2()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t400120_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t400120_x2()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t400120_x11():
    """ State 0,1 """
    if GetEventStatus(1018) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            if GetEventStatus(50006020) == 1:
                """ State 6,9 """
                # talk:12002900: 
                call = t400120_x6(text1=12002900, flag1=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            else:
                """ State 7,10 """
                # talk:12002950: 
                call = t400120_x6(text1=12002950, flag1=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            """ State 8 """
            assert t400120_x2()
        else:
            """ State 5 """
            pass
    """ State 11 """
    Label('L0')
    return 0

def t400120_x12():
    """ State 0,1,2 """
    assert t400120_x2()
    """ State 3 """
    return 0

def t400120_x13():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400120_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400120_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400120_x14():
    """ State 0,1 """
    while True:
        call = t400120_x16()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)
        """ State 2 """
        call = t400120_x17()
        assert GetEventStatus(1000) == 1 or GetEventStatus(1001) == 1 or GetEventStatus(1002) == 1

def t400120_x15():
    """ State 0,1 """
    assert t400120_x2()
    """ State 2 """
    return 0

def t400120_x16():
    """ State 0,1 """
    call = t400120_x26()
    assert CheckSelfDeath() == 1
    """ State 2 """
    t400120_x11()

def t400120_x17():
    """ State 0 """

def t400120_x18():
    """ State 0,1 """
    if not GetEventStatus(74000115):
        """ State 2,5 """
        # talk:12002600: 
        assert t400120_x4(text3=12002600, z3=74000115, flag3=0, mode3=1)
    else:
        """ State 3,6 """
        # talk:12002700: 
        assert t400120_x6(text1=12002700, flag1=0, mode1=1)
        """ State 4 """
        SetEventState(74000115, 0)
    """ State 7 """
    return 0

def t400120_x19():
    """ State 0,1 """
    if GetEventStatus(1002) == 1:
        """ State 5 """
        if GetEventStatus(50006020) == 1:
            """ State 6,10 """
            # talk:12002100:Ashen one, may the flames guide thee.
            assert t400120_x6(text1=12002100, flag1=0, mode1=1)
        else:
            """ State 7,11 """
            # talk:12002300:Mayst thou thy peace discov'r.
            assert t400120_x6(text1=12002300, flag1=0, mode1=1)
    else:
        """ State 2 """
        if GetEventStatus(50006020) == 1:
            """ State 3,8 """
            # talk:12000400:Farewell, ashen one.
            assert t400120_x6(text1=12000400, flag1=0, mode1=1)
        else:
            """ State 4,9 """
            # talk:12000500:Farewell, ashen one.
            assert t400120_x6(text1=12000500, flag1=0, mode1=1)
    """ State 12 """
    return 0

def t400120_x20():
    """ State 0,1 """
    if GetEventStatus(50006020) == 1:
        """ State 2 """
        if GetEventStatus(9300) == 1 and not GetEventStatus(1002):
            """ State 4,20 """
            # talk:12000700:Ashen one, may I pose thee a question?
            assert t400120_x6(text1=12000700, flag1=0, mode1=0)
        else:
            """ State 3,19 """
            # talk:12000600:Ashen one, to be unkindled is to be a vessel for souls.
            assert t400120_x6(text1=12000600, flag1=0, mode1=0)
    else:
        """ State 5 """
        if not GetEventStatus(74000130) and not GetEventStatus(74000131):
            """ State 7,21 """
            # talk:12000800:Ashen one, my thanks for the eyes thou'st given.
            assert (t400120_x6(text1=12000800, flag1=0, mode1=0) and (not CheckSpecificPersonGenericDialogIsOpen(2)
                    and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))))
            """ State 14 """
            ClearTalkListData()
            """ State 15 """
            # action:14002000:Wish for a world without flame
            AddTalkListData(1, 14002000, -1)
            # action:14002001:Decline
            AddTalkListData(2, 14002001, -1)
            """ State 13 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 17 """
            if GetTalkListEntryResult() == 1:
                """ State 12,24 """
                # talk:12000900:Of course.
                assert t400120_x5(text2=12000900, z2=74000130, flag2=0, mode2=0)
            elif GetTalkListEntryResult() == 2:
                """ State 16,25 """
                # talk:12001100:Of course not.
                assert t400120_x5(text2=12001100, z2=74000131, flag2=0, mode2=0)
            else:
                """ State 18 """
                pass
        else:
            """ State 6 """
            if GetEventStatus(74000130) == 1:
                """ State 8 """
                if not GetEventStatus(74000132) or GetEventStatus(74000110) == 1:
                    """ State 10,23 """
                    # talk:12001000:Ashen one, if thine heart should bend...
                    assert t400120_x6(text1=12001000, flag1=0, mode1=0)
                else:
                    """ State 11,26 """
                    # talk:12001900:Ashen one, forgive me if this soundeth strange.
                    assert t400120_x5(text2=12001900, z2=74000110, flag2=0, mode2=0)
            else:
                """ State 9,22 """
                # talk:12001200:Ashen one, kill me, and take these eyes away.
                assert t400120_x6(text1=12001200, flag1=0, mode1=0)
    """ State 27 """
    return 0

def t400120_x21(goods1=2138):
    """ State 0,6 """
    # action:12002000:Give <?gdsparam@2138?>?
    call = t400120_x0(action2=12002000)
    if call.Get() == 0:
        """ State 2,1 """
        # goods:2138:Eyes of a Fire Keeper
        PlayerEquipmentQuantityChange(3, goods1, -1)
        """ State 3 """
        SetEventState(50006020, 0)
        """ State 5 """
        SetEventState(74000122, 1)
        """ State 7 """
        # talk:12003300:...Ashen one, are these...
        assert t400120_x6(text1=12003300, flag1=0, mode1=0)
    elif call.Done():
        """ State 4 """
        pass
    """ State 8 """
    return 0

def t400120_x22(goods2=390):
    """ State 0,5 """
    # action:12002001:Give <?gdsparam@390?>?
    call = t400120_x0(action2=12002001)
    if call.Get() == 0:
        """ State 2,1 """
        # goods:390:Fire Keeper Soul
        PlayerEquipmentQuantityChange(3, goods2, -1)
        """ State 3 """
        SetEventState(74000125, 1)
        """ State 6 """
        # talk:12003400:...Ashen one, this is...
        assert (t400120_x6(text1=12003400, flag1=0, mode1=0) and (not CheckSpecificPersonGenericDialogIsOpen(2)
                and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))))
        """ State 7 """
        # action:13002030:The Fire Keeper is now able to heal the dark sigil
        assert t400120_x7(action1=13002030)
        """ State 8 """
        # talk:12003500:Forgive me, sister.
        assert t400120_x6(text1=12003500, flag1=0, mode1=0)
    elif call.Done():
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t400120_x23(goods3=490, z1=0):
    """ State 0,1 """
    # goods:490:Dark Sigil
    if ComparePlayerInventoryNumber(3, goods3, 0, 0, 0) == 1:
        """ State 3,20 """
        # action:13002021:You have no dark sigil
        assert t400120_x7(action1=13002021)
    else:
        """ State 2,24 """
        assert t400120_x24(goods3=goods3, z1=z1)
        """ State 10 """
        SetMessageTagValue(0, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + GetWorkValue(z1)))
        """ State 21 """
        # action:12002002:Requires <?evntAcquittalPrice?> souls. \nWill you choose to heal the dark sigil?
        call = t400120_x0(action2=12002002)
        if call.Get() == 0:
            """ State 6 """
            if ComparePlayerStatus(8, 2, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + GetWorkValue(z1))):
                """ State 4,13 """
                TurnCharacterToFaceEntity(-1, 10000, -1)
                assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
                """ State 12 """
                TurnCharacterToFaceEntity(69010, 10000, -1)
                assert GetCurrentStateElapsedTime() > 1.5
                """ State 8 """
                # goods:490:Dark Sigil
                PlayerEquipmentQuantityChange(3, goods3, -1 * GetWorkValue(z1))
                """ State 9 """
                ChangePlayerStats(8, 1, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + GetWorkValue(z1)))
                """ State 11 """
                SetEventState(74000124, 1)
                """ State 14 """
                if GetPlayerChrType() == 8:
                    """ State 15,18 """
                    GiveSpEffectToPlayer(3093)
                else:
                    """ State 16,17 """
                    ChangePlayerStats(31, 5, 0)
                """ State 19 """
                assert GetCurrentStateElapsedTime() > 3
                """ State 23 """
                # action:13002020:Dark sigil has been healed
                assert t400120_x7(action1=13002020) and GetWhetherChrEventAnimHasEnded(10000) == 1
            else:
                """ State 5,22 """
                # action:13000050:Insufficient souls
                assert t400120_x7(action1=13000050)
        elif call.Done():
            """ State 7 """
            pass
    """ State 25 """
    return 0

def t400120_x24(goods3=490, z1=0):
    """ State 0,1 """
    # goods:490:Dark Sigil
    SetWorkValue(z1, GetItemHeldNumLimit(3, goods3))
    """ State 5 """
    while True:
        # goods:490:Dark Sigil
        if ComparePlayerInventoryNumber(3, goods3, 0, GetWorkValue(z1), 0) or GetWorkValue(z1) <= 0:
            break
        else:
            """ State 3,2 """
            SetWorkValue(z1, GetWorkValue(z1) - 1)
    """ State 4,6 """
    return 0

def t400120_x25():
    """ State 0,3 """
    if DoesSelfHaveSpEffect(150) == 1 or DoesSelfHaveSpEffect(152) == 1:
        """ State 4 """
        SetEventState(74000136, 1)
        """ State 2 """
        if not GetEventStatus(74000135):
            pass
        elif GetEventStatus(74000137) == 1 and GetEventStatus(74000138) == 1:
            """ State 1 """
            OpenSoul()
            assert not (CheckSpecificPersonMenuIsOpen(10, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 5 """
            return 0
    elif not GetEventStatus(74000135):
        pass
    """ State 6 """
    return 1

def t400120_x26():
    """ State 0,5 """
    while True:
        call = t400120_x1(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            SetEventState(74000139, 1)
            call = t400120_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400120_x10()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t400120_x13()
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400120_x12()

def t400120_x27(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
       
def t400120_x28(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

# BONK!
def t400120_x29(text1=_):
    """ State 0,4 """
    assert t400120_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    SetEventState(25008903, 1)
    """ State 5 """
    return 0
    
