# -*- coding: utf-8 -*-
def t330230_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t330230_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t330230_x12()
        assert not IsClientPlayer()

def t330230_x0(z5=6000, flag4=1235, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t330230_x1():
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

def t330230_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t330230_x3(text3=_, z4=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t330230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
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

def t330230_x4(text2=_, z3=_, flag2=0, mode2=_):
    """ State 0,5 """
    assert t330230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z3, 1)
    """ State 6 """
    return 0

def t330230_x5(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t330230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t330230_x6(z2=10):
    """ State 0,1 """
    if GetEventStatus(73300102) == 1:
        """ State 3,27 """
        # Have you changed your mind?
        assert t330230_x5(text1=23000500, flag1=0, mode1=0)
        """ State 11 """
        Label('L0')
        ClearTalkListData()
        """ State 12 """
        
        # :Make a promise
        AddTalkListData(1, 14013002, -1)
        # Make no promise
        AddTalkListData(2, 14013003, -1)
        """ State 13 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 14 """
        if GetTalkListEntryResult() == 1:
            """ State 24 """
            # Very well.
            assert t330230_x4(text2=23000300, z3=73300131, flag2=0, mode2=0)
            """ State 17 """
            SetEventState(74000591, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 23 """
            # I can respect an honest man.
            assert t330230_x4(text2=23000400, z3=73300102, flag2=0, mode2=1)
        else:
            pass
    elif GetEventStatus(73300101) == 1:
        """ State 8 """
        if ComparePlayerStatus(5, 1, z2) == 1:
            """ State 25 """
            # Oh, I thought you'd already given up.
            assert t330230_x5(text1=23000700, flag1=0, mode1=1)
        else:
            """ State 26 """
            # Well, well... There's something different about you, isn't there?
            assert t330230_x4(text2=23000800, z3=73300132, flag2=0, mode2=0)
            """ State 16 """
            def WhilePaused():
                SetTalkTime(0.1)
            assert GetCurrentStateElapsedTime() > 1
            """ State 22 """
            Label('L1')
            # Very well.
            assert t330230_x5(text1=23000200, flag1=0, mode1=0)
            Goto('L0')
    elif GetEventStatus(73300100) == 1:
        """ State 9,19 """
        # Oh, enough of you, already.
        assert t330230_x5(text1=23001000, flag1=0, mode1=1)
        """ State 4 """
        Label('L2')
        ClearTalkListData()
        """ State 5 """
        # :Ask to learn sorceries
        AddTalkListData(1, 14013000, -1)
        # Nothing
        AddTalkListData(2, 14013001, -1)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 7 """
        if GetTalkListEntryResult() == 1:
            """ State 28 """
            # How intriguing.
            assert t330230_x5(text1=23000100, flag1=0, mode1=0)
            """ State 15 """
            def WhilePaused():
                SetTalkTime(0.1)
            assert GetCurrentStateElapsedTime() > 1
            """ State 10 """
            if ComparePlayerStatus(5, 1, z2) == 1:
                """ State 21 """
                # You'd better not. Sorcery is not for everyone.
                assert t330230_x4(text2=23000600, z3=73300101, flag2=0, mode2=1)
            else:
                Goto('L1')
        elif GetTalkListEntryResult() == 2:
            """ State 20 """
            # Yes, I see.
            assert t330230_x4(text2=23000900, z3=73300100, flag2=0, mode2=1)
        else:
            pass
    else:
        """ State 2,18 """
        # Well, this is unexpected. I don't often have visitors.
        assert t330230_x5(text1=23000000, flag1=0, mode1=1)
        Goto('L2')
    """ State 29 """
    return 0

def t330230_x7():
    """ State 0,9 """
    assert t330230_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1236) and not GetEventStatus(1237):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 4,12 """
            call = t330230_x15()
            if call.Done():
                pass
            elif GetEventStatus(1236) == 1 or GetEventStatus(1237) == 1:
                """ State 6 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,13 """
                    call = t330230_x16()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 11 """
                        t330230_x1()
                        Quit()
                elif not GetEventStatus(1236) and not GetEventStatus(1237):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                """ State 10 """
                assert t330230_x1()
        else:
            """ State 5 """
            pass
    else:
        Goto('L0')
    """ State 14 """
    return 0

def t330230_x8():
    """ State 0,1 """
    if GetEventStatus(1238) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:23001800: 
            call = t330230_x5(text1=23001800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t330230_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t330230_x9():
    """ State 0,2 """
    if GetEventStatus(1236) == 1 or GetEventStatus(1237) == 1:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t330230_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t330230_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 1 """
        pass
    """ State 8 """
    return 0

def t330230_x10():
    """ State 0,1,2,3 """
    assert t330230_x1()
    """ State 4 """
    return 0

def t330230_x11():
    """ State 0,1 """
    while True:
        call = t330230_x13(z1=3)
        assert not GetEventStatus(1220)
        """ State 2 """
        call = t330230_x14()
        assert GetEventStatus(1220) == 1

def t330230_x12():
    """ State 0,1 """
    assert t330230_x1()
    """ State 2 """
    return 0

def t330230_x13(z1=3):
    """ State 0,2 """
    call = t330230_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t330230_x8()

def t330230_x14():
    """ State 0 """

def t330230_x15():
    """ State 0,2 """
    if not GetEventStatus(73300123):
        """ State 5 """
        # What's the meaning of this?
        assert t330230_x3(text3=23001400, z4=73300123, flag3=0, mode3=1)
    else:
        """ State 1 """
        SetEventState(73300121, 0)
        SetEventState(73300122, 0)
        SetEventState(73300123, 0)
        """ State 6 """
        # Stop while you're still ahead.
        assert t330230_x5(text1=23001500, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t330230_x16():
    """ State 0,1 """
    if not GetEventStatus(73300120):
        """ State 3 """
        # Is that how it is?
        assert t330230_x3(text3=23001600, z4=73300120, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t330230_x17():
    """ State 0,1,2 """
    # Gods, this business never did agree with me...
    assert t330230_x5(text1=23001700, flag1=0, mode1=1)
    """ State 3 """
    return 0

def t330230_x18():
    """ State 0,5 """
    while True:
        call = t330230_x0(z5=6000, flag4=1235, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t330230_x6(z2=10)
            def ExitPause():
                ReportConversationEndToHavokBehavior()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1236) == 1 and not GetEventStatus(73300120)):
                """ State 1 """
                Label('L0')
                call = t330230_x7()
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
                call = t330230_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1236) == 1 and not GetEventStatus(73300120)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t330230_x9()

