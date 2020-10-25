# -*- coding: utf-8 -*-
def t400300_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400300_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400300_x10()
        assert not IsClientPlayer()

def t400300_x0(z3=6300, flag4=1375, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t400300_x1():
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

def t400300_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400300_x3(text3=30001300, z2=74000900, flag3=0, mode3=1):
    """ State 0,5 """
    assert t400300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    # talk:30001300:Sorry, friend.
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

def t400300_x4(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z1, 1)
    """ State 6 """
    return 0

def t400300_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400300_x6():
    """ State 0,2 """
    if not GetEventStatus(74000901):
        """ State 1,3 """
        if ComparePlayerStatus(12, 0, 1) == 1 and GetEventStatus(9017) == 1:
            """ State 7 """
            # talk:30001500:Have no fear, there's beauty in death.
            assert t400300_x4(text2=30001500, z1=74000901, flag2=0, mode2=1)
        else:
            """ State 5 """
            # talk:30001400:Have no fear, there's beauty in death.
            assert t400300_x4(text2=30001400, z1=74000901, flag2=0, mode2=1)
    else:
        """ State 6 """
        # talk:30001600:Oh, no matter, I'll look after things.
        assert t400300_x5(text1=30001600, flag1=0, mode1=1)
    """ State 8 """
    return 0

def t400300_x7():
    """ State 0,3 """
    if GetEventStatus(1376) == 1 or GetEventStatus(1377) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t400300_x13()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t400300_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400300_x8():
    """ State 0,1,3,4 """
    assert t400300_x1()
    """ State 6 """
    return 0

def t400300_x9():
    """ State 0,1 """
    while True:
        call = t400300_x11()
        assert not GetEventStatus(1364)
        """ State 2 """
        call = t400300_x12()
        assert GetEventStatus(1364) == 1

def t400300_x10():
    """ State 0,1 """
    assert t400300_x1()
    """ State 2 """
    return 0

def t400300_x11():
    """ State 0,1 """
    SetUpdateDistance(50)
    """ State 5 """
    while True:
        call = t400300_x0(z3=6300, flag4=1375, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t400300_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 12:
                """ State 4 """
                Label('L0')
                assert t400300_x8() and GetDistanceToPlayer() < 4.9
        elif not GetEventStatus(74000900) and GetEventStatus(1364) == 1:
            """ State 6 """
            call = t400300_x15()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 30 or GetPlayerYDistance() > 13:
                Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400300_x7()

def t400300_x12():
    """ State 0 """

def t400300_x13():
    """ State 0,1 """
    # talk:30005050:Close call, blimey...
    assert t400300_x5(text1=30005050, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t400300_x14():
    """ State 0,1 """
    if DidYouDoSomethingInTheMenu(11) == 1:
        """ State 2 """
        # talk:30001300:Sorry, friend.
        assert t400300_x5(text1=30001300, flag1=0, mode1=1)
    else:
        """ State 3 """
        # talk:30001300:Sorry, friend.
        assert t400300_x5(text1=30001300, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t400300_x15():
    """ State 0,1 """
    # talk:30001300:Sorry, friend.
    assert t400300_x3(text3=30001300, z2=74000900, flag3=0, mode3=1)
    """ State 2 """
    return 0

