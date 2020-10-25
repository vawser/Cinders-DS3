# -*- coding: utf-8 -*-
def t511740_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t511740_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t511740_x10()
        assert not IsClientPlayer()

def t511740_x0(z3=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t511740_x1():
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

def t511740_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t511740_x3(text2=84002000, z2=75110150, flag2=0, mode2=1):
    """ State 0,5 """
    assert t511740_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t511740_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t511740_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t511740_x5():
    """ State 0,1 """
    if GetEventStatus(1838) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 32 and not GetEventStatus(75110180):
            """ State 4,7 """
            call = t511740_x14()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 35 or GetEventStatus(75110180) == 1:
                """ State 6 """
                assert t511740_x1()
        else:
            """ State 5,8 """
            assert t511740_x1()
    """ State 9 """
    return 0

def t511740_x6():
    """ State 0,2,1 """
    if GetDistanceToPlayer() < 32:
        """ State 3,6 """
        call = t511740_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 35:
            """ State 5 """
            assert t511740_x1()
    else:
        """ State 4 """
        pass
    """ State 7 """
    return 0

def t511740_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t511740_x1()
    """ State 5 """
    return 0

def t511740_x8():
    """ State 0,1 """
    assert t511740_x3(text2=84002000, z2=75110150, flag2=0, mode2=1)
    """ State 2 """
    return 0

def t511740_x9():
    """ State 0,1 """
    t511740_x11()

def t511740_x10():
    """ State 0,1 """
    assert t511740_x1()
    """ State 2 """
    return 0

def t511740_x11():
    """ State 0,2 """
    call = t511740_x13(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t511740_x5()

def t511740_x12():
    """ State 0,1 """
    assert t511740_x1()
    """ State 2 """
    return 0

def t511740_x13(z1=-1):
    """ State 0,3 """
    while True:
        call = t511740_x0(z3=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if IsPlayerDead() == 1:
            break
        elif not GetEventStatus(75110150) and GetDistanceToPlayer() < 32 and GetEventStatus(15115860) == 1:
            """ State 4 """
            call = t511740_x8()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 35:
                """ State 2 """
                assert t511740_x7() and GetDistanceToPlayer() < 4.9
            elif IsPlayerDead() == 1:
                break
    """ State 1 """
    t511740_x6()

def t511740_x14():
    """ State 0,1 """
    assert t511740_x4(text1=84002600, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t511740_x15():
    """ State 0,1 """
    if GetEventStatus(15100723) == 1:
        """ State 3 """
        assert t511740_x4(text1=84002200, flag1=0, mode1=1)
    else:
        """ State 2 """
        assert t511740_x4(text1=84002100, flag1=0, mode1=1)
    """ State 4 """
    return 0

