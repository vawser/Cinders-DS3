# -*- coding: utf-8 -*-
def t350906_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350906_x16()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350906_x17()
        assert not IsClientPlayer()

def t350906_x0(action2=10010745):
    """ State 0,1 """
    # action:10010745:
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t350906_x1(z5=6000, flag4=1060, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000, flag10=6000,
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
        elif CheckActionButtonArea(z5):
            break
    """ State 5 """
    return 0

def t350906_x2():
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

def t350906_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350906_x4(text3=90004000, z4=73509019, flag3=0):
    """ State 0,4 """
    assert t350906_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t350906_x5(text2=90004000, z3=73509019, flag2=0):
    """ State 0,4 """
    assert t350906_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 5 """
    return 0

def t350906_x6(text1=90004000, flag1=0):
    """ State 0,3 """
    assert t350906_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    ReportConversationEndToHavokBehavior()
    """ State 4 """
    return 0

def t350906_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t350906_x8(goods1=373, z2=10020210, action1=15000320):
    """ State 0,1 """
    if ComparePlayerStatus(15, 1, 100) == 1:
        """ State 11 """
        # goods:373:Pale Tongue
        if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
            """ State 12,9 """
            SetWorkValue(0, GetPlayerStatus(16))
            """ State 16 """
            call = t350906_x9(goods1=goods1, z2=z2)
            if call.Get() == 0:
                """ State 3,6 """
                # goods:373:Pale Tongue
                PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
                """ State 2 """
                ChangePlayerStats(15, 0, GetValueFromNumberSelectDialog() * 1)
                if ComparePlayerStatus(16, 2, GetWorkValue(0)):
                    """ State 7,13 """
                    assert t350906_x7(action1=10010797)
                else:
                    """ State 8,15 """
                    assert t350906_x7(action1=10010796)
            elif call.Get() == 1:
                """ State 4 """
                pass
        else:
            """ State 5,14 """
            assert t350906_x7(action1=action1)
    else:
        """ State 10,17 """
        assert t350906_x7(action1=10010790)
    """ State 18 """
    return 0

def t350906_x9(goods1=373, z2=10020210):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z2)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not CheckSpecificPersonMenuIsOpen(13, 0):
        """ State 4,6 """
        return 1

def t350906_x10():
    """ State 0,1,2,4,9 """
    # goods:373:Pale Tongue
    assert t350906_x18(z1=5, goods1=373)
    """ State 10 """
    return 0

def t350906_x11():
    """ State 0 """

def t350906_x12():
    """ State 0,1 """
    if GetEventStatus(1078) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,5 """
        call = t350906_x6(text1=90004000, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            assert t350906_x2()
    """ State 6 """
    return 0

def t350906_x13():
    """ State 0,5 """
    call = t350906_x2()
    if call.Done() and (not GetEventStatus(1076) and not GetEventStatus(1077)):
        """ State 2 """
        pass
    elif call.Done():
        """ State 1,4 """
        call = t350906_x6(text1=90004000, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 3 """
            assert t350906_x2()
    """ State 6 """
    return 0

def t350906_x14():
    """ State 0,1,3,5 """
    assert t350906_x2()
    """ State 7 """
    return 0

def t350906_x15():
    """ State 0,4 """
    t350906_x3()

def t350906_x16():
    """ State 0,7 """
    while True:
        assert (t350906_x1(z5=6000, flag4=1060, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000,
                flag10=6000, flag11=6000, flag12=6000, flag13=6000, flag14=6000, flag15=6000, flag16=6000,
                flag17=6000, flag18=6000))
        """ State 4 """
        call = t350906_x10()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 5:
            """ State 5 """
            assert t350906_x14() and GetDistanceToPlayer() < 4.9

def t350906_x17():
    """ State 0,1 """
    assert t350906_x2()
    """ State 2 """
    return 0

def t350906_x18(z1=5, goods1=373):
    """ State 0,1 """
    while True:
        ClearTalkListData()
        if ComparePlayerStatus(11, 0, z1) == 1:
            """ State 13,15 """
            AddTalkListData(2, 15000310, -1)
            # action:15000005:Leave
            AddTalkListData(99, 15000005, -1)
        else:
            """ State 14,2 """
            AddTalkListData(1, 15000200, -1)
            # action:15000005:Leave
            AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,8 """
            if IsMultiplayerInProgress() == 1:
                """ State 6,17 """
                # action:10010747:
                assert t350906_x7(action1=10010747)
            else:
                """ State 5,18 """
                # action:10010745:
                call = t350906_x0(action2=10010745)
                if call.Get() == 0:
                    """ State 9,11 """
                    ChangePlayerStats(11, 5, z1)
                    """ State 19 """
                    # action:10010729:
                    assert t350906_x7(action1=10010729)
                elif call.Get() == 1:
                    """ State 10 """
                    pass
        elif not CheckSpecificPersonMenuIsOpen(1, 0):
            """ State 12,21 """
            return 0
        elif GetTalkListEntryResult() == 2:
            """ State 20 """
            assert t350906_x8(goods1=goods1, z2=10020210, action1=15000320)

