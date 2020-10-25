# -*- coding: utf-8 -*-
def t450550_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450550_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450550_x12()
        assert not IsClientPlayer()

def t450550_x0(z3=6650, flag3=1715, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t450550_x1():
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

def t450550_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450550_x3(text2=65000300, z2=74500252, flag2=0, mode2=1):
    """ State 0,5 """
    assert t450550_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450550_x4(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t450550_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450550_x5(lot1=65500):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t450550_x6(lot1=65500):
    """ State 0,1 """
    if not GetEventStatus(74500250):
        """ State 2 """
        if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) == 1 or
            GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
            """ State 17 """
            assert t450550_x4(text1=65000700, flag1=0, mode1=1)
        else:
            """ State 16 """
            assert t450550_x4(text1=65000000, flag1=0, mode1=1)
        """ State 3 """
        SetEventState(74500250, 1)
    else:
        """ State 4 """
        if not GetEventStatus(50006550):
            """ State 5 """
            if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042) ==
                1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                """ State 19 """
                assert t450550_x4(text1=65000800, flag1=0, mode1=0)
                """ State 21 """
                assert t450550_x5(lot1=lot1)
                """ State 23 """
                Label('L0')
                assert t450550_x4(text1=65000850, flag1=0, mode1=1)
            else:
                """ State 18 """
                assert t450550_x4(text1=65000100, flag1=0, mode1=0)
                """ State 20 """
                assert t450550_x5(lot1=lot1)
                """ State 22 """
                Label('L1')
                assert t450550_x4(text1=65000150, flag1=0, mode1=1)
        else:
            """ State 7 """
            if not GetEventStatus(74500251):
                """ State 8 """
                if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042)
                    == 1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                    Goto('L0')
                else:
                    Goto('L1')
            else:
                """ State 11 """
                if GetEventStatus(74500282) == 1:
                    """ State 12 """
                    if not GetEventStatus(74500253):
                        """ State 13 """
                        if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042)
                            == 1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                            """ State 28 """
                            assert t450550_x4(text1=65000900, flag1=0, mode1=1)
                        else:
                            """ State 27 """
                            assert t450550_x4(text1=65000500, flag1=0, mode1=1)
                        """ State 14 """
                        SetEventState(74500253, 1)
                        Goto('L2')
                    else:
                        """ State 15 """
                        if (((GetEventStatus(1041) == 1 and GetEventStatus(1055) == 1) or GetEventStatus(1042)
                            == 1 or GetEventStatus(1045) == 1) and not GetEventStatus(74000124)):
                            """ State 30 """
                            assert t450550_x4(text1=65001000, flag1=0, mode1=1)
                            Goto('L2')
                        else:
                            """ State 29 """
                            assert t450550_x4(text1=65000600, flag1=0, mode1=1)
                            Goto('L2')
                else:
                    """ State 9 """
                    if GetEventStatus(74500281) == 1:
                        """ State 10 """
                        if not GetEventStatus(74500252):
                            """ State 25 """
                            assert t450550_x3(text2=65000300, z2=74500252, flag2=0, mode2=1)
                            Goto('L2')
                        else:
                            """ State 26 """
                            assert t450550_x4(text1=65000400, flag1=0, mode1=1)
                            Goto('L2')
                    else:
                        """ State 24 """
                        assert t450550_x4(text1=65000200, flag1=0, mode1=1)
                        Goto('L2')
        """ State 6 """
        SetEventState(74500251, 1)
    """ State 31 """
    Label('L2')
    return 0

def t450550_x7():
    """ State 0,6 """
    assert t450550_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4 """
        pass
    else:
        """ State 5 """
        pass

def t450550_x8():
    """ State 0,1,2 """
    assert t450550_x1()
    """ State 3 """
    return 0

def t450550_x9():
    """ State 0,3 """
    if GetEventStatus(1716) == 1 or GetEventStatus(1717) == 1:
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

def t450550_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450550_x1()
    """ State 5 """
    return 0

def t450550_x11():
    """ State 0,1 """
    while True:
        call = t450550_x13()
        assert not GetEventStatus(1700)
        """ State 2 """
        call = t450550_x14()
        assert GetEventStatus(1700) == 1

def t450550_x12():
    """ State 0,1 """
    assert t450550_x1()
    """ State 2 """
    return 0

def t450550_x13():
    """ State 0,1 """
    call = t450550_x15(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 2 """
    t450550_x8()

def t450550_x14():
    """ State 0,1 """
    assert t450550_x1()
    """ State 2 """
    return 0

def t450550_x15(z1=-1):
    """ State 0,5 """
    while True:
        call = t450550_x0(z3=6650, flag3=1715, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 3 """
            call = t450550_x6(lot1=65500)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t450550_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t450550_x7()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or DoesSelfHaveSpEffect(150) == 1:
                Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1 or DoesSelfHaveSpEffect(150) == 1:
            Goto('L0')
    """ State 2 """
    t450550_x9()

