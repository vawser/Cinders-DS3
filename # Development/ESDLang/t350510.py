# -*- coding: utf-8 -*-
def t350510_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350510_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350510_x12()
        assert not IsClientPlayer()

def t350510_x0(z3=6000, flag3=1635, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) ==
                1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag3) and not GetEventStatus(flag4) and not GetEventStatus(flag5) and
              not GetEventStatus(flag6) and not GetEventStatus(flag7)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t350510_x1():
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

def t350510_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350510_x3(text2=_, z2=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t350510_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t350510_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t350510_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350510_x5():
    """ State 0,2 """
    if not GetEventStatus(73500302):
        """ State 12 """
        if GetEventStatus(73500305) == 1:
            """ State 20 """
            assert t350510_x4(text1=61001200, flag1=0, mode1=1)
        else:
            """ State 19 """
            assert t350510_x4(text1=61000100, flag1=0, mode1=1)
        """ State 18 """
        SetEventState(73500331, 1)
        assert GetCurrentStateElapsedTime() > 0.5
        """ State 26 """
        assert t350510_x4(text1=61000110, flag1=0, mode1=1)
        """ State 14 """
        SetEventState(73500302, 1)
        """ State 13 """
        Label('L0')
        SetEventState(73500305, 0)
    else:
        """ State 3 """
        if not GetEventStatus(73500303):
            """ State 15 """
            if GetEventStatus(73500305) == 1:
                """ State 22 """
                assert t350510_x4(text1=61001300, flag1=0, mode1=1)
            else:
                """ State 21 """
                assert t350510_x4(text1=61000200, flag1=0, mode1=1)
        else:
            """ State 16 """
            if GetEventStatus(73500305) == 1:
                """ State 24 """
                assert t350510_x4(text1=61001400, flag1=0, mode1=1)
            else:
                """ State 23 """
                assert t350510_x4(text1=61000500, flag1=0, mode1=1)
        """ State 5 """
        ClearTalkListData()
        """ State 6 """
        AddTalkListData(1, 14051000, -1)
        AddTalkListData(2, 14051001, -1)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 7 """
        if GetTalkListEntryResult() == 1:
            """ State 8,1 """
            SetEventState(73500339, 1)
            """ State 17 """
            Quit()
        elif GetTalkListEntryResult() == 2:
            """ State 9,25 """
            assert t350510_x4(text1=61000400, flag1=0, mode1=1)
            """ State 11 """
            SetEventState(73500303, 1)
            Goto('L0')
        else:
            """ State 10 """
            pass
    """ State 27 """
    return 0

def t350510_x6():
    """ State 0,6 """
    assert t350510_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t350510_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t350510_x1()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t350510_x7():
    """ State 0,1 """
    if GetEventStatus(1638) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t350510_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t350510_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t350510_x8():
    """ State 0,3 """
    if GetEventStatus(1636) == 1 or GetEventStatus(1637) == 1:
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
    """ State 7 """
    return 0

def t350510_x9():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t350510_x1()
    """ State 5 """
    return 0

def t350510_x10():
    """ State 0,1 """
    SetEventState(73500301, 1)
    if GetEventStatus(73500305) == 1:
        """ State 3 """
        assert t350510_x4(text1=61001500, flag1=0, mode1=1)
    else:
        """ State 2 """
        assert t350510_x4(text1=61000000, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t350510_x11():
    """ State 0,1 """
    while True:
        call = t350510_x13()
        assert not GetEventStatus(1621)
        """ State 2 """
        call = t350510_x14()
        assert GetEventStatus(1621) == 1

def t350510_x12():
    """ State 0,1 """
    assert t350510_x1()
    """ State 2 """
    return 0

def t350510_x13():
    """ State 0,2 """
    call = t350510_x16(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t350510_x7()

def t350510_x14():
    """ State 0,1 """
    assert t350510_x1()
    """ State 2 """
    return 0

def t350510_x15():
    """ State 0,3 """
    if not GetEventStatus(73500302):
        """ State 1 """
        if not GetEventStatus(73500321):
            """ State 2,8 """
            assert t350510_x3(text2=61000700, z2=73500321, flag2=0, mode2=1)
        else:
            """ State 4 """
            SetEventState(73500321, 0)
            """ State 9 """
            assert t350510_x4(text1=61000710, flag1=0, mode1=1)
    else:
        """ State 5 """
        if not GetEventStatus(73500324):
            """ State 6,10 """
            assert t350510_x3(text2=61000800, z2=73500324, flag2=0, mode2=1)
        else:
            """ State 7 """
            SetEventState(73500324, 0)
            """ State 11 """
            assert t350510_x4(text1=61000820, flag1=0, mode1=1)
    """ State 12 """
    return 0

def t350510_x16(z1=-1):
    """ State 0,6 """
    while True:
        call = t350510_x0(z3=6000, flag3=1635, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 4 """
            call = t350510_x5()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t350510_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                Label('L1')
                call = t350510_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(1635) == 1 and not GetEventStatus(73500301) and GetDistanceToPlayer() < 10:
            """ State 7 """
            call = t350510_x10()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        elif GetEventStatus(73500339) == 1:
            """ State 1 """
            if not GetEventStatus(73500339):
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
    """ State 3 """
    t350510_x8()

def t350510_x17():
    """ State 0,1 """
    if not GetEventStatus(73500302):
        """ State 2 """
        assert t350510_x4(text1=61001000, flag1=0, mode1=1)
    else:
        """ State 3 """
        assert t350510_x4(text1=61001100, flag1=0, mode1=1)
    """ State 4 """
    return 0

