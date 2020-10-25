# -*- coding: utf-8 -*-
def t400390_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400390_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400390_x10()
        assert not IsClientPlayer()

def t400390_x0():
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

def t400390_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400390_x2(text2=39000000, z4=74000990, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400390_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:39000000:You, you.
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z4, 1)
    """ State 6 """
    return 0

def t400390_x3(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400390_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400390_x4(z2=24, z3=9025, flag1=6074):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400390_x5(z1=3):
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

def t400390_x6():
    """ State 0,1,2 """
    if not GetEventStatus(74000990):
        """ State 3,18 """
        # talk:39000000:You, you.
        assert t400390_x2(text2=39000000, z4=74000990, flag3=0, mode2=1)
    elif GetEventStatus(2040) == 1 or GetEventStatus(2041) == 1 or GetEventStatus(2042) == 1:
        """ State 4 """
        if GetEventStatus(2040) == 1:
            """ State 5 """
            if GetEventStatus(74000996) == 1:
                """ State 12,8 """
                SetEventState(2040, 0)
                SetEventState(2041, 0)
                SetEventState(2042, 0)
                SetEventState(74000996, 0)
                SetEventState(74000997, 0)
                """ State 17 """
                # talk:39000200:Pickle pee, pickle pee!
                assert t400390_x3(text1=39000200, flag2=0, mode1=1)
                """ State 24 """
                assert t400390_x4(z2=24, z3=9025, flag1=6074)
            else:
                """ State 13,14 """
                SetEventState(2040, 0)
                SetEventState(2041, 0)
                SetEventState(2042, 0)
                SetEventState(74000996, 0)
                SetEventState(74000997, 0)
                """ State 23 """
                # talk:39000300:Pump-a-rum, pump-a-rum!
                assert t400390_x3(text1=39000300, flag2=0, mode1=1)
        elif GetEventStatus(2041) == 1:
            """ State 6,15 """
            SetEventState(2040, 0)
            SetEventState(2041, 0)
            SetEventState(2042, 0)
            SetEventState(74000996, 0)
            SetEventState(74000997, 0)
            """ State 19 """
            # talk:39000500:You, you.
            assert t400390_x3(text1=39000500, flag2=0, mode1=1)
        else:
            """ State 7,16 """
            SetEventState(2040, 0)
            SetEventState(2041, 0)
            SetEventState(2042, 0)
            SetEventState(74000996, 0)
            SetEventState(74000997, 0)
            """ State 20 """
            # talk:39000400:You, you.
            assert t400390_x3(text1=39000400, flag2=0, mode1=1)
    else:
        """ State 9,22 """
        call = t400390_x5(z1=3)
        if call.Done() and CompareRNGValue(0, 2) == 1:
            """ State 11,21 """
            # talk:39000100:You! You!
            assert t400390_x3(text1=39000100, flag2=0, mode1=1)
        elif call.Done():
            """ State 10 """
            pass
    """ State 25 """
    return 0

def t400390_x7():
    """ State 0,1 """
    assert t400390_x0()
    """ State 2 """
    return 0

def t400390_x8():
    """ State 0,2 """
    assert t400390_x0()
    """ State 1 """
    SetEventState(74000990, 0)
    """ State 3 """
    return 0

def t400390_x9():
    """ State 0,1 """
    while True:
        if not GetEventStatus(74000990) and GetEventStatus(74000995) == 1:
            """ State 3 """
            Label('L0')
            call = t400390_x6()
            if call.Done():
                continue
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 12:
                pass
        elif (GetCurrentStateElapsedTime() > 10 and GetEventStatus(74000995) == 1 and not (CheckSpecificPersonMenuIsOpen(-1,
              2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))):
            Goto('L0')
        elif (GetEventStatus(74000995) == 1 and (GetEventStatus(2040) == 1 or GetEventStatus(2041) ==
              1 or GetEventStatus(2042) == 1) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and
              not CheckSpecificPersonGenericDialogIsOpen(2))):
            Goto('L0')
        elif GetDistanceToPlayer() > 12:
            pass
        """ State 4 """
        assert t400390_x8() and GetDistanceToPlayer() < 10
    """ State 2 """
    t400390_x7()

def t400390_x10():
    """ State 0,1 """
    assert t400390_x0()
    """ State 2 """
    return 0

