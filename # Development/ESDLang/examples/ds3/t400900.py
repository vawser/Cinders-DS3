# -*- coding: utf-8 -*-
def t400900_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400900_x14()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400900_x15()
        assert not IsClientPlayer()

def t400900_x0(z5=6000, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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

def t400900_x1():
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

def t400900_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400900_x3(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t400900_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400900_x4(text2=90001000, z3=74009000, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400900_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400900_x5(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400900_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400900_x6(z1=5, z2=9001, flag1=74009002):
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

def t400900_x7():
    """ State 0,1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15000100:Level Up
        AddTalkListData(1, 15000100, -1)
        AddTalkListData(3, 15000231, -1)
        AddTalkListData(5, 15000232, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,7 """
            assert t400900_x5(text1=90001040, flag2=0, mode1=1)
            """ State 5 """
            OpenSoul()
            assert not (CheckSpecificPersonMenuIsOpen(10, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6,8 """
            assert t400900_x20()
            """ State 9 """
            return 0

def t400900_x8():
    """ State 0,1,2 """
    if not GetEventStatus(74009002):
        """ State 3,11 """
        assert t400900_x5(text1=90001010, flag2=0, mode1=1)
        """ State 10 """
        assert t400900_x6(z1=5, z2=9001, flag1=74009002)
    elif GetEventStatus(74009001) == 1:
        """ State 5,6 """
        SetEventState(74009001, 0)
        """ State 9 """
        assert t400900_x5(text1=90001030, flag2=0, mode1=1)
        """ State 7 """
        Label('L0')
        assert t400900_x7()
    else:
        """ State 4,8 """
        assert t400900_x5(text1=90001020, flag2=0, mode1=1)
        Goto('L0')
    """ State 12 """
    return 0

def t400900_x9():
    """ State 0,4 """
    SetEventState(74009006, 1)
    """ State 10 """
    assert t400900_x1()
    """ State 5 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1016) and not GetEventStatus(1017):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 6,12 """
            call = t400900_x18()
            if call.Done():
                pass
            elif GetEventStatus(1016) == 1 or GetEventStatus(1017) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 8,13 """
                    call = t400900_x19()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 11 """
                        Label('L1')
                        assert t400900_x1()
                elif not GetEventStatus(1016) and not GetEventStatus(1017):
                    """ State 9 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 7 """
            pass
    else:
        Goto('L0')
    """ State 14 """
    return 0

def t400900_x10():
    """ State 0,1 """
    if GetEventStatus(1018) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400900_x5(text1=90001120, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400900_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400900_x11():
    """ State 0,3 """
    if GetEventStatus(1016) == 1 or GetEventStatus(1017) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400900_x5(text1=90001130, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400900_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400900_x12():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,4 """
        SetEventState(74009001, 1)
        """ State 6 """
        call = t400900_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            Label('L0')
            assert t400900_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 7 """
    return 0

def t400900_x13():
    """ State 0,6 """
    if not GetEventStatus(1016) and not GetEventStatus(1017):
        """ State 1,7 """
        assert t400900_x4(text2=90001000, z3=74009000, flag3=0, mode2=1)
    else:
        """ State 2 """
        if not GetEventStatus(74009004):
            """ State 3,5 """
            SetEventState(74009006, 1)
            """ State 8 """
            assert t400900_x3(text3=90001100, z4=74009004, flag4=0, mode3=1)
        else:
            """ State 4,9 """
            assert t400900_x3(text3=90001140, z4=74009006, flag4=0, mode3=1)
    """ State 10 """
    return 0

def t400900_x14():
    """ State 0,1 """
    while True:
        call = t400900_x16()
        assert not GetEventStatus(1000)
        """ State 2 """
        call = t400900_x17()
        assert GetEventStatus(1000) == 1

def t400900_x15():
    """ State 0,1 """
    assert t400900_x1()
    """ State 2 """
    return 0

def t400900_x16():
    """ State 0,2 """
    call = t400900_x21()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400900_x10()

def t400900_x17():
    """ State 0 """

def t400900_x18():
    """ State 0,1 """
    if not GetEventStatus(74009003):
        """ State 2,4 """
        assert t400900_x3(text3=90001090, z4=74009003, flag4=0, mode3=1)
    else:
        """ State 3 """
        pass
    """ State 5 """
    return 0

def t400900_x19():
    """ State 0,4 """
    if not GetEventStatus(74009004):
        """ State 1,5 """
        assert t400900_x3(text3=90001100, z4=74009004, flag4=0, mode3=1)
    elif not GetEventStatus(74009005) and GetSelfHP() < 50:
        """ State 2,6 """
        assert t400900_x3(text3=90001110, z4=74009005, flag4=0, mode3=1)
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t400900_x20():
    """ State 0,1 """
    assert t400900_x5(text1=90001070, flag2=0, mode1=1)
    """ State 2 """
    return 0

def t400900_x21():
    """ State 0,6 """
    while True:
        call = t400900_x0(z5=6000, flag5=6000, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t400900_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1016) == 1 and not GetEventStatus(74009004)):
                """ State 1 """
                Label('L0')
                call = t400900_x9()
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
                Label('L1')
                call = t400900_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1016) == 1 and not GetEventStatus(74009004)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif (GetDistanceToPlayer() < 10 and (GetEventStatus(1016) == 1 or GetEventStatus(1017) == 1)
              and (not GetEventStatus(74009006) or not GetEventStatus(74009004))):
            """ State 5 """
            Label('L2')
            call = t400900_x13()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1016) == 1 and not GetEventStatus(74009004)):
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        elif GetEventStatus(1015) == 1 and GetDistanceToPlayer() < 10 and not GetEventStatus(74009000):
            Goto('L2')
    """ State 2 """
    t400900_x11()

