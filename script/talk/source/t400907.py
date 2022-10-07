# -*- coding: utf-8 -*-
def t400907_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400907_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400907_x18()
        assert not IsClientPlayer()

def t400907_x0(action2=10010745):
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

def t400907_x1(z5=6000, flag4=1080, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000, flag10=6000,
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

def t400907_x2():
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

def t400907_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400907_x4(text6=_, z4=_, flag3=0):
    """ State 0,4 """
    assert t400907_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text6, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400907_x5(text5=90005000, z3=74009120, flag2=0):
    """ State 0,4 """
    assert t400907_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 5 """
    return 0

def t400907_x6(text1=_, flag1=0):
    """ State 0,3 """
    assert t400907_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    ReportConversationEndToHavokBehavior()
    """ State 4 """
    return 0

def t400907_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400907_x8(z1=2, text3=90005030, text4=90005040):
    """ State 0,1,5 """
    if IsMultiplayerInProgress() == 1:
        """ State 3,10 """
        # action:10010747:
        assert t400907_x7(action1=10010747)
    else:
        """ State 2,12 """
        assert t400907_x6(text1=text3, flag1=0)
        """ State 11 """
        # action:10010745:
        call = t400907_x0(action2=10010745)
        if call.Get() == 0:
            """ State 6,13 """
            assert t400907_x6(text1=text4, flag1=0)
            """ State 8 """
            ChangePlayerStats(11, 5, z1)
            """ State 14 """
            # action:10010729:
            assert t400907_x7(action1=10010729)
        elif call.Get() == 1:
            """ State 7 """
            pass
    """ State 15 """
    return 0

def t400907_x9(goods1=375, z2=10020211):
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

def t400907_x10(goods1=375, z2=10020211, action1=15000321, text1=90005050, text2=90005060):
    """ State 0,1 """
    if ComparePlayerStatus(15, 1, 100) == 1:
        """ State 11 """
        # goods:375:Sunlight Medal
        if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
            """ State 12,9 """
            SetWorkValue(0, GetPlayerStatus(16))
            """ State 18 """
            assert t400907_x6(text1=text1, flag1=0)
            """ State 16 """
            call = t400907_x9(goods1=goods1, z2=z2)
            if call.Get() == 0:
                """ State 3,19 """
                assert t400907_x6(text1=text2, flag1=0)
                """ State 6 """
                # goods:375:Sunlight Medal
                PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
                """ State 2 """
                ChangePlayerStats(15, 0, GetValueFromNumberSelectDialog() * 1)
                if ComparePlayerStatus(16, 2, GetWorkValue(0)):
                    """ State 7,13 """
                    assert t400907_x7(action1=10010797)
                else:
                    """ State 8,15 """
                    assert t400907_x7(action1=10010796)
            elif call.Get() == 1:
                """ State 4 """
                pass
        else:
            """ State 5,14 """
            assert t400907_x7(action1=action1)
    else:
        """ State 10,17 """
        assert t400907_x7(action1=10010790)
    """ State 20 """
    return 0

def t400907_x11():
    """ State 0,1,2 """
    if not GetEventStatus(74009120):
        """ State 3,7 """
        assert t400907_x5(text5=90005000, z3=74009120, flag2=0)
    elif GetEventStatus(74009121) == 1:
        """ State 5,6 """
        SetEventState(74009121, 0)
        """ State 9 """
        assert t400907_x6(text1=90005020, flag1=0)
        """ State 10 """
        Label('L0')
        # goods:375:Sunlight Medal
        assert t400907_x19(z1=2, goods1=375)
    else:
        """ State 4,8 """
        assert t400907_x6(text1=90005010, flag1=0)
        Goto('L0')
    """ State 11 """
    return 0

def t400907_x12():
    """ State 0,9 """
    SetEventState(74009125, 1)
    """ State 14 """
    assert t400907_x2()
    """ State 10 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetEventStatus(1096) == 1 or GetEventStatus(1097) == 1:
        """ State 3 """
        if not GetEventStatus(74009123):
            """ State 6 """
            Label('L0')
            """ State 12 """
            assert t400907_x4(text6=90005100, z4=74009123, flag3=0)
        elif not GetEventStatus(74009124) and GetSelfHP() < 50:
            """ State 7,13 """
            assert t400907_x4(text6=90005110, z4=74009124, flag3=0)
        else:
            """ State 8 """
            pass
    else:
        """ State 2 """
        if not GetEventStatus(74009122):
            """ State 4,11 """
            call = t400907_x4(text6=90005090, z4=74009122, flag3=0)
            if call.Done():
                pass
            elif GetEventStatus(1096) == 1 or GetEventStatus(1097) == 1:
                Goto('L0')
        else:
            """ State 5 """
            pass
    """ State 15 """
    return 0

def t400907_x13():
    """ State 0,1 """
    if GetEventStatus(1098) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,5 """
        call = t400907_x6(text1=90005120, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            assert t400907_x2()
    """ State 6 """
    return 0

def t400907_x14():
    """ State 0,5 """
    call = t400907_x2()
    if call.Done():
        """ State 1,4 """
        call = t400907_x6(text1=90005130, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 3 """
            assert t400907_x2()
    elif call.Done() and (not GetEventStatus(1096) and not GetEventStatus(1097)):
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t400907_x15():
    """ State 0,1 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 2,4 """
        SetEventState(74009121, 1)
        """ State 6 """
        call = t400907_x6(text1=90005080, flag1=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            Label('L0')
            assert t400907_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 7 """
    return 0

def t400907_x16():
    """ State 0,4 """
    assert t400907_x3()
    """ State 2,7 """
    call = t400907_x4(text6=90005140, z4=74009125, flag3=0)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 5 """
        assert t400907_x2()
    """ State 8 """
    return 0

def t400907_x17():
    """ State 0,7 """
    while True:
        call = t400907_x1(z5=6000, flag4=1080, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000,
                          flag10=6000, flag11=6000, flag12=6000, flag13=6000, flag14=6000, flag15=6000,
                          flag16=6000, flag17=6000, flag18=6000)
        if call.Done():
            """ State 4 """
            call = t400907_x11()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400907_x12()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif CheckSelfDeath() == 1:
                    """ State 2 """
                    t400907_x13()
                    Quit()
                elif IsPlayerDead() == 1:
                    break
                elif GetDistanceToPlayer() > 12:
                    """ State 5 """
                    Label('L1')
                    assert t400907_x15() and GetDistanceToPlayer() < 4.9
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                Goto('L1')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif (GetDistanceToPlayer() < 10 and not GetEventStatus(74009125) and (GetEventStatus(1096) ==
              1 or GetEventStatus(1097) == 1)):
            """ State 6 """
            call = t400907_x16()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
    """ State 3 """
    t400907_x14()

def t400907_x18():
    """ State 0,1 """
    assert t400907_x2()
    """ State 2 """
    return 0

def t400907_x19(z1=2, goods1=375):
    """ State 0,1 """
    while True:
        ClearTalkListData()
        if ComparePlayerStatus(11, 0, z1) == 1:
            """ State 5,7 """
            AddTalkListData(2, 15000311, -1)
            # action:15000005:Leave
            AddTalkListData(99, 15000005, -1)
        else:
            """ State 6,2 """
            AddTalkListData(1, 15000200, -1)
            # action:15000005:Leave
            AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 9 """
            assert t400907_x8(z1=z1, text3=90005030, text4=90005040)
        elif not CheckSpecificPersonMenuIsOpen(1, 0):
            """ State 4,8 """
            assert t400907_x6(text1=90005070, flag1=0)
            """ State 11 """
            return 0
        elif GetTalkListEntryResult() == 2:
            """ State 10 """
            assert t400907_x10(goods1=goods1, z2=10020211, action1=15000321, text1=90005050, text2=90005060)

