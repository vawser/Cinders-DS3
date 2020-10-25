# -*- coding: utf-8 -*-
def t400909_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400909_x14()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400909_x15()
        assert not IsClientPlayer()

def t400909_x0(action2=_):
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

def t400909_x1(z3=6000, flag4=1980, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000, flag10=6000,
               flag11=6000, flag12=6000, flag13=6000, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
               flag18=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9)
                == 1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12)
                == 1 or GetEventStatus(flag13) == 1)
        """ State 4 """
        assert (GetEventStatus(flag14) == 1 or GetEventStatus(flag15) == 1 or GetEventStatus(flag16)
                == 1 or GetEventStatus(flag17) == 1 or GetEventStatus(flag18) == 1)
        """ State 2 """
        if (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
            not GetEventStatus(flag7) and not GetEventStatus(flag8) and not GetEventStatus(flag9) and
            not GetEventStatus(flag10) and not GetEventStatus(flag11) and not GetEventStatus(flag12)
            and not GetEventStatus(flag13)):
            pass
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag14) and not GetEventStatus(flag15) and not GetEventStatus(flag16)
              and not GetEventStatus(flag17) and not GetEventStatus(flag18)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 5 """
    return 0

def t400909_x2():
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
    if not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t400909_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400909_x4(text3=_, z2=_, flag3=0):
    """ State 0,4 """
    assert t400909_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400909_x5(text2=90014000, z1=74009160, flag2=0):
    """ State 0,4 """
    assert t400909_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z1, 1)
    """ State 5 """
    return 0

def t400909_x6(text1=_, flag1=0):
    """ State 0,3 """
    assert t400909_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    ReportConversationEndToHavokBehavior()
    """ State 4 """
    return 0

def t400909_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400909_x8():
    """ State 0,1,2 """
    if not GetEventStatus(74009160):
        """ State 3,9 """
        assert t400909_x5(text2=90014000, z1=74009160, flag2=0)
    elif GetEventStatus(74009161) == 1:
        """ State 5,6 """
        SetEventState(74009161, 0)
        """ State 8 """
        assert t400909_x6(text1=90014020, flag1=0)
        """ State 10 """
        Label('L0')
        assert t400909_x16()
    else:
        """ State 4,7 """
        assert t400909_x6(text1=90014010, flag1=0)
        Goto('L0')
    """ State 11 """
    return 0

def t400909_x9():
    """ State 0,9 """
    SetEventState(74009165, 1)
    """ State 14 """
    assert t400909_x2()
    """ State 10 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1996) and not GetEventStatus(1997):
        """ State 2 """
        if not GetEventStatus(74009162):
            """ State 4,11 """
            call = t400909_x4(text3=90014090, z2=74009162, flag3=0)
            if call.Done():
                pass
            elif GetEventStatus(1997) == 1:
                """ State 6 """
                Label('L0')
                """ State 12 """
                assert t400909_x4(text3=90014100, z2=74009163, flag3=0)
            elif GetEventStatus(1996) == 1:
                Goto('L0')
        else:
            """ State 5 """
            pass
    else:
        """ State 3 """
        if not GetEventStatus(74009163):
            Goto('L0')
        elif not GetEventStatus(74009164) and GetSelfHP() < 50:
            """ State 7,13 """
            assert t400909_x4(text3=90014110, z2=74009164, flag3=0)
        else:
            """ State 8 """
            pass
    """ State 15 """
    return 0

def t400909_x10():
    """ State 0,1 """
    if GetEventStatus(1998) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,5 """
        call = t400909_x6(text1=90014120, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            assert t400909_x2()
    """ State 6 """
    return 0

def t400909_x11():
    """ State 0,3 """
    if not GetEventStatus(1996) and not GetEventStatus(1997):
        """ State 2 """
        pass
    else:
        """ State 1,5 """
        call = t400909_x6(text1=90014130, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            assert t400909_x2()
    """ State 6 """
    return 0

def t400909_x12():
    """ State 0,1 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 2,4 """
        SetEventState(74009161, 1)
        """ State 6 """
        call = t400909_x6(text1=90014080, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            Label('L0')
            assert t400909_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 7 """
    return 0

def t400909_x13():
    """ State 0,6,2 """
    if not GetEventStatus(74009163):
        """ State 3,5 """
        SetEventState(74009165, 1)
        """ State 10 """
        call = t400909_x4(text3=90014100, z2=74009163, flag3=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 8 """
            assert t400909_x2()
    else:
        """ State 4,12 """
        call = t400909_x4(text3=90014140, z2=74009165, flag3=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 11 """
            assert t400909_x2()
    """ State 13 """
    return 0

def t400909_x14():
    """ State 0,7 """
    while True:
        call = t400909_x1(z3=6000, flag4=1980, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000,
                          flag10=6000, flag11=6000, flag12=6000, flag13=6000, flag14=6000, flag15=6000,
                          flag16=6000, flag17=6000, flag18=6000)
        if call.Done():
            """ State 4 """
            call = t400909_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400909_x9()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif CheckSelfDeath() == 1:
                    """ State 2 """
                    t400909_x10()
                    Quit()
                elif IsPlayerDead() == 1:
                    break
                elif GetDistanceToPlayer() > 12:
                    """ State 5 """
                    Label('L1')
                    assert t400909_x12() and GetDistanceToPlayer() < 4.9
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                Goto('L1')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif (GetDistanceToPlayer() < 10 and (GetEventStatus(1996) == 1 or GetEventStatus(1997) == 1)
              and (not GetEventStatus(74009165) or not GetEventStatus(74009163))):
            """ State 6 """
            call = t400909_x13()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
    """ State 3 """
    t400909_x11()

def t400909_x15():
    """ State 0,1 """
    assert t400909_x2()
    """ State 2 """
    return 0

def t400909_x16():
    """ State 0,1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        AddTalkListData(1, 15000020, -1)
        AddTalkListData(2, 15000021, -1)
        AddTalkListData(3, 15000270, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,10 """
            # goods:490:Dark Sigil
            assert t400909_x18(goods2=490)
        elif GetTalkListEntryResult() == 2:
            """ State 5,9 """
            # goods:490:Dark Sigil
            assert t400909_x17(goods3=490)
        elif not CheckSpecificPersonMenuIsOpen(1, 0):
            """ State 6,8 """
            assert t400909_x6(text1=90014070, flag1=0)
            """ State 12 """
            return 0
        elif GetTalkListEntryResult() == 3:
            """ State 7,11 """
            # goods:490:Dark Sigil
            assert t400909_x19(goods1=490)

def t400909_x17(goods3=490):
    """ State 0,1 """
    # goods:490:Dark Sigil
    if ComparePlayerInventoryNumber(3, goods3, 0, 0, 0) == 1:
        """ State 3,11 """
        # action:10010756:
        assert t400909_x7(action1=10010756)
    else:
        """ State 2,12 """
        assert t400909_x6(text1=90014050, flag1=0)
        """ State 10 """
        SetMessageTagValue(0, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + 1))
        """ State 13 """
        call = t400909_x0(action2=10020053)
        if call.Get() == 0:
            """ State 6 """
            if ComparePlayerStatus(8, 2, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + 1)):
                """ State 4,8 """
                # goods:490:Dark Sigil
                PlayerEquipmentQuantityChange(3, goods3, -1)
                """ State 9 """
                ChangePlayerStats(8, 1, GetLevelUpSoulCost(GetStatus(33), GetStatus(33) + 1))
                """ State 16 """
                assert t400909_x6(text1=90014060, flag1=0)
                """ State 15 """
                # action:10010759:
                assert t400909_x7(action1=10010759)
            else:
                """ State 5,14 """
                # action:10010754:Insufficient souls
                assert t400909_x7(action1=10010754)
        elif call.Get() == 1:
            """ State 7 """
            pass
    """ State 17 """
    return 0

def t400909_x18(goods2=490):
    """ State 0,2 """
    # goods:490:Dark Sigil
    if ComparePlayerInventoryNumber(3, goods2, 0, GetItemHeldNumLimit(3, goods2), 0) == 1:
        """ State 3,5 """
        assert t400909_x6(text1=90014030, flag1=0)
    else:
        """ State 4,6 """
        assert t400909_x6(text1=90014040, flag1=0)
        """ State 1 """
        OpenHollowLevelUpMenu()
        assert not CheckSpecificPersonMenuIsOpen(17, 0)
    """ State 7 """
    return 0

def t400909_x19(goods1=490):
    """ State 0,1 """
    if GetPlayerChrType() == 8:
        """ State 2 """
        if ComparePlayerStatus(31, 0, 0) == 1:
            """ State 9 """
            # goods:490:Dark Sigil
            if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
                """ State 6,13 """
                # action:10010757:
                assert t400909_x7(action1=10010757)
            else:
                """ State 17 """
                assert t400909_x6(text1=90014150, flag1=0)
                """ State 7,11 """
                call = t400909_x0(action2=10020054)
                if call.Get() == 0:
                    """ State 4,8 """
                    PlayerRespawn()
                    """ State 15 """
                    assert t400909_x6(text1=90014160, flag1=0)
                    """ State 14 """
                    # action:10010912:
                    assert t400909_x7(action1=10010912)
                elif call.Get() == 1:
                    """ State 5 """
                    pass
        else:
            """ State 10,16 """
            # action:10010758:
            assert t400909_x7(action1=10010758)
    else:
        """ State 3,12 """
        # action:10010730:
        assert t400909_x7(action1=10010730)
    """ State 18 """
    return 0

