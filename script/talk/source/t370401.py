# -*- coding: utf-8 -*-
def t370401_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370401_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370401_x11()
        assert not IsClientPlayer()

def t370401_x0(z2=6000, flag3=1575, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t370401_x1():
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

def t370401_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370401_x3(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t370401_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
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

def t370401_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t370401_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370401_x5():
    """ State 0,1,2 """
    if not GetEventStatus(50006301):
        """ State 3,7 """
        # talk:40000200:Welcome, our gracious Lord.
        assert t370401_x4(text1=40000200, flag1=0, mode1=1)
        """ State 5 """
        SetEventState(73700330, 1)
    else:
        """ State 4,6 """
        # talk:40000300:Your spouse awaits you, you are very near.
        assert t370401_x4(text1=40000300, flag1=0, mode1=1)
    """ State 8 """
    return 0

def t370401_x6():
    """ State 0,7 """
    assert t370401_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1576) and not GetEventStatus(1577)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,9 """
        call = t370401_x14()
        if call.Done():
            pass
        elif GetEventStatus(1576) == 1 or GetEventStatus(1577) == 1:
            """ State 3 """
            Quit()
        elif GetDistanceToPlayer() > 12:
            """ State 8 """
            assert t370401_x1()
    else:
        """ State 6 """
        pass
    """ State 10 """
    return 0

def t370401_x7():
    """ State 0,1 """
    if GetEventStatus(1578) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:40000800:Ahh, our gracious Lord...
            call = t370401_x4(text1=40000800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t370401_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t370401_x8():
    """ State 0,2,1,3 """
    return 0

def t370401_x9():
    """ State 0,1,2,3 """
    assert t370401_x1()
    """ State 4 """
    return 0

def t370401_x10():
    """ State 0,1 """
    while True:
        call = t370401_x12()
        assert not GetEventStatus(1564)
        """ State 2 """
        call = t370401_x13()
        assert GetEventStatus(1564) == 1

def t370401_x11():
    """ State 0,1 """
    assert t370401_x1()
    """ State 2 """
    return 0

def t370401_x12():
    """ State 0,2 """
    call = t370401_x15()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370401_x7()

def t370401_x13():
    """ State 0 """

def t370401_x14():
    """ State 0,1 """
    if not GetEventStatus(73700321):
        """ State 2,6 """
        # talk:40000400: 
        assert t370401_x3(text2=40000400, z1=73700321, flag2=0, mode2=1)
    elif not GetEventStatus(73700322):
        """ State 3,7 """
        # talk:40000500: 
        assert t370401_x3(text2=40000500, z1=73700322, flag2=0, mode2=1)
    else:
        """ State 4,5 """
        SetEventState(73700321, 0)
        SetEventState(73700322, 0)
        """ State 8 """
        # talk:40000600:Whatever for!
        assert t370401_x4(text1=40000600, flag1=0, mode1=1)
    """ State 9 """
    return 0

def t370401_x15():
    """ State 0,6 """
    while True:
        call = t370401_x0(z2=6000, flag3=1575, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 4 """
            call = t370401_x5()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t370401_x6()
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
                call = t370401_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(73700330) == 1:
            """ State 1 """
            assert not GetEventStatus(73700330)
    """ State 3 """
    t370401_x8()

