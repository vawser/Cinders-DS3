# -*- coding: utf-8 -*-
def t400500_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400500_x8()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400500_x9()
        assert not IsClientPlayer()

def t400500_x0():
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

def t400500_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400500_x2(text2=39000000, z2=74000990, flag2=0):
    """ State 0,4 """
    assert t400500_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:39000000:You, you.
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 5 """
    return 0

def t400500_x3(text1=_, flag1=0):
    """ State 0,3 """
    assert t400500_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    ReportConversationEndToHavokBehavior()
    """ State 4 """
    return 0

def t400500_x4(z1=3):
    """ State 0,2 """
    if not CompareRNGValue(0, 0) != -1:
        """ State 1,4 """
        ShuffleRNGSeed(3)
    else:
        """ State 3 """
        pass
    """ State 5 """
    SetRNGSeed()
    """ State 6 """
    return 0

def t400500_x5():
    """ State 0,1,2 """
    if not GetEventStatus(74000990):
        """ State 3,15 """
        # talk:39000000:You, you.
        assert t400500_x2(text2=39000000, z2=74000990, flag2=0)
    elif GetEventStatus(2040) == 1 or GetEventStatus(2041) == 1 or GetEventStatus(2042) == 1:
        """ State 4 """
        if GetEventStatus(2040) == 1:
            """ State 5 """
            if GetEventStatus(74000996) == 1:
                """ State 12,14 """
                # talk:39000200:Pickle pee, pickle pee!
                assert t400500_x3(text1=39000200, flag1=0)
            else:
                """ State 13,20 """
                # talk:39000300:Pump-a-rum, pump-a-rum!
                assert t400500_x3(text1=39000300, flag1=0)
        elif GetEventStatus(2041) == 1:
            """ State 6,16 """
            # talk:39000500:You, you.
            assert t400500_x3(text1=39000500, flag1=0)
        else:
            """ State 7,17 """
            # talk:39000400:You, you.
            assert t400500_x3(text1=39000400, flag1=0)
        """ State 8 """
        SetEventState(2040, 0)
        SetEventState(2041, 0)
        SetEventState(2042, 0)
        SetEventState(74000996, 0)
        SetEventState(74000997, 0)
    else:
        """ State 9,19 """
        call = t400500_x4(z1=3)
        if call.Done() and CompareRNGValue(0, 2) == 1:
            """ State 11,18 """
            # talk:39000100:You! You!
            assert t400500_x3(text1=39000100, flag1=0)
        elif call.Done():
            """ State 10 """
            pass
    """ State 21 """
    return 0

def t400500_x6():
    """ State 0,1 """
    assert t400500_x0()
    """ State 2 """
    return 0

def t400500_x7():
    """ State 0,2 """
    assert t400500_x0()
    """ State 1 """
    SetEventState(74000990, 0)
    """ State 3 """
    return 0

def t400500_x8():
    """ State 0,1 """
    while True:
        if not GetEventStatus(74000990) and GetEventStatus(74000995) == 1:
            """ State 3 """
            Label('L0')
            call = t400500_x5()
            if call.Done():
                continue
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 12:
                pass
        elif (GetCurrentStateElapsedTime() > 10 and GetEventStatus(74000995) == 1 and not CheckSpecificPersonMenuIsOpen(-1,
              2)):
            Goto('L0')
        elif (GetEventStatus(74000995) == 1 and (GetEventStatus(2040) == 1 or GetEventStatus(2041) ==
              1 or GetEventStatus(2042) == 1) and not CheckSpecificPersonMenuIsOpen(-1, 2)):
            Goto('L0')
        elif GetDistanceToPlayer() > 12:
            pass
        """ State 4 """
        assert t400500_x7() and GetDistanceToPlayer() < 4.9
    """ State 2 """
    t400500_x6()

def t400500_x9():
    """ State 0,1 """
    assert t400500_x0()
    """ State 2 """
    return 0

