#-------------------------------------------
#-- Yoel
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400150_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400150_x13(z1=490)
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400150_x14()
        assert not IsClientPlayer()

def t400150_x0(z10=6150, flag5=1075, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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
        elif CheckActionButtonArea(z10):
            break
    """ State 4 """
    return 0

def t400150_x1():
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

def t400150_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400150_x3(text3=_, z9=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t400150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z9, 1)
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

def t400150_x4(text2=15000900, z8=74000400, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:15000900:Oh, our Champion of Ash, welcome home.
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z8, 1)
    """ State 6 """
    return 0

def t400150_x5(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400150_x6(z6=0, z7=9000, flag1=6050):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z6)
        OpenItemAcquisitionMenu(3, z7, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400150_x7(action1=13005000):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400150_x8():
    """ State 0,1 """
    if not GetEventStatus(74000400):
        """ State 2,6 """
        # talk:15000900:Oh, our Champion of Ash, welcome home.
        assert t400150_x4(text2=15000900, z8=74000400, flag3=0, mode2=1)
    elif ComparePlayerStatus(34, 1, 5) == 1:
        """ State 4,8 """
        # talk:15001100:Oh, our Champion of Ash. Welcome back.
        assert t400150_x5(text1=15001100, flag2=0, mode1=1)
    else:
        """ State 3,5 """
        # talk:15001000:Oh, our Champion of Ash. Welcome back.
        assert t400150_x5(text1=15001000, flag2=0, mode1=1)
    """ State 7 """
    assert t400150_x16(z2=0, z3=2, z4=6, z5=12)
    """ State 9 """
    return 0

def t400150_x9():
    """ State 0,5 """
    assert t400150_x1()
    """ State 2 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 3,7 """
        call = t400150_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 6 """
            assert t400150_x1()
    else:
        """ State 4 """
        pass
    """ State 8 """
    return 0

def t400150_x10():
    """ State 0,1 """
    if GetEventStatus(1078) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400150_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400150_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400150_x11():
    """ State 0,2,1,3 """
    return 0

def t400150_x12():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400150_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400150_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400150_x13(z1=490):
    """ State 0,1 """
    while True:
        call = t400150_x18()
        assert not GetEventStatus(1061)
        """ State 2 """
        call = t400150_x19()
        assert not GetEventStatus(1061)

def t400150_x14():
    """ State 0,1 """
    assert t400150_x1()
    """ State 2 """
    return 0

def t400150_x15():
    """ State 0,1 """
    # talk:15001400:As I have said, I was once a sorcerer.
    assert t400150_x5(text1=15001400, flag2=0, mode1=1)
    """ State 2 """
    assert t400150_x6(z6=0, z7=9000, flag1=6050)
    """ State 3 """
    return 0

def t400150_x16(z2=0, z3=2, z4=6, z5=12):
    """ State 0,13 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 11 """
        
        # Draw Out True Strength
        AddTalkListDataIf((ComparePlayerStatus(34, 0, 5) == 1 and ComparePlayerStatus(31, 4, z2) == 1) or (ComparePlayerStatus(34, 0, 4) == 1 and ComparePlayerStatus(31, 4, z3) == 1) or (ComparePlayerStatus(34, 0, 3) == 1 and ComparePlayerStatus(31, 4, z4) == 1) or (ComparePlayerStatus(34, 0, 2) == 1 and ComparePlayerStatus(31, 4, z5) == 1) or GetPlayerChrType() == 8, 3, 15005020, -1)
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15011020, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008210) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008210) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008210) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 2 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 10 """
        if GetTalkListEntryResult() == 1:
            """ State 3,8 """
            OpenRegularShop(40000, 40999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        elif GetTalkListEntryResult() == 2:
            """ State 4,12 """
            CombineMenuFlagAndEventFlag(6001, 233)
            """ State 9 """
            OpenEnhanceShop(0)
            assert not (CheckSpecificPersonMenuIsOpen(9, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        elif GetTalkListEntryResult() == 3:
            """ State 7 """
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                """ State 19,25 """
                assert t400150_x7(action1=13005000)
                continue
            else:
                """ State 14 """
                if ComparePlayerStatus(34, 3, 0) == 1:
                    """ State 15,23 """
                    # talk:15001600:Ahh, you have attained ample strength.
                    assert t400150_x5(text1=15001600, flag2=0, mode1=1)
                    continue
                else:
                    """ State 16,24 """
                    # talk:15001500:Then, shall we begin?
                    assert t400150_x5(text1=15001500, flag2=0, mode1=1)
                    """ State 18 """
                    assert not GetEventStatus(74000432) and not GetEventStatus(74000433)
                    """ State 21 """
                    SetEventState(74000430, 1)
                    call = t400150_x17()
                    def ExitPause():
                        SetEventState(74000430, 0)
                        SetEventState(74000431, 0)
                    if call.Get() == 1:
                        """ State 17 """
                        pass
                    elif call.Done():
                        continue
        elif GetTalkListEntryResult() == 4:
            """ State 5,20 """
            assert t400150_x15()
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008210, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400150_x5(text1=10119030, flag2=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400150_x5(text1=10119000, flag2=0, mode1=0)
                GetItemFromItemLot(90200)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400150_x5(text1=10119010, flag2=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400150_x5(text1=10119020, flag2=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400150_x5(text1=10119020, flag2=0, mode1=0)
            SetEventState(25008210, 0)
            return 0
        else:
            """ State 6,22 """
            assert t400150_x22()
        """ State 26 """
        return 0

def t400150_x17():
    """ State 0,5 """
    if DoesSelfHaveSpEffect(150) == 1:
        """ State 6 """
        SetEventState(74000431, 1)
        """ State 2 """
        if GetEventStatus(74000432) == 1 and GetEventStatus(74000433) == 1:
            """ State 1 """
            OpenHollowLevelUpMenu()
            assert not (CheckSpecificPersonMenuIsOpen(17, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 3 """
            if ComparePlayerStatus(34, 1, 5) == 1:
                """ State 4 """
                SetEventState(70000450, 1)
            else:
                pass
            """ State 7 """
            return 0
        elif not GetEventStatus(74000430):
            pass
    elif not GetEventStatus(74000430):
        pass
    """ State 8 """
    return 1

def t400150_x18():
    """ State 0,2 """
    call = t400150_x23()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400150_x10()

def t400150_x19():
    """ State 0 """

def t400150_x20():
    """ State 0,2 """
    if not GetEventStatus(74000421):
        """ State 1,6 """
        # talk:15001700: 
        assert t400150_x3(text3=15001700, z9=74000421, flag4=0, mode3=1)
    elif not GetEventStatus(74000422):
        """ State 3,7 """
        # talk:15001800: 
        assert t400150_x3(text3=15001800, z9=74000422, flag4=0, mode3=1)
    else:
        """ State 4,5 """
        SetEventState(74000421, 0)
        SetEventState(74000422, 0)
        """ State 8 """
        # talk:15001900:What do you intend?
        assert t400150_x5(text1=15001900, flag2=0, mode1=1)
    """ State 9 """
    return 0

def t400150_x21():
    """ State 0,1 """
    if ComparePlayerStatus(34, 3, 0) == 1:
        """ State 2 """
        # talk:15002100:Ahh, I thank you kindly...
        assert t400150_x5(text1=15002100, flag2=0, mode1=1)
    else:
        """ State 3 """
        # talk:15002000: 
        assert t400150_x5(text1=15002000, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400150_x22():
    """ State 0,1 """
    if ComparePlayerStatus(34, 3, 0) == 1:
        """ State 2 """
        # talk:15001300:Be safe, our Lord...
        assert t400150_x5(text1=15001300, flag2=0, mode1=1)
    else:
        """ State 3 """
        # talk:15001200:Be safe, Champion of Ash.
        assert t400150_x5(text1=15001200, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400150_x23():
    """ State 0,5 """
    while True:
        call = t400150_x0(z10=6150, flag5=1075, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t400150_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400150_x9()
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
                call = t400150_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
    """ State 2 """
    t400150_x11()

