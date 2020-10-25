# -*- coding: utf-8 -*-
def t380296_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t380296_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t380296_x18()
        assert not IsClientPlayer()

def t380296_x0():
    """ State 0,1 """
    if GetEventStatus(1344) == 1:
        """ State 2 """
        if not GetEventStatus(73800100):
            """ State 3,20 """
            # talk:29000500:Oh, hello, how very fortunate.
            assert t380296_x15(text1=29000500, flag1=0, mode1=1)
            """ State 4 """
            ClearTalkListData()
            """ State 5 """
            # action:14019000:No
            AddTalkListData(1, 14019000, -1)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 7 """
            if GetTalkListEntryResult() == 1:
                """ State 21 """
                # talk:29000600:Yes, I see.
                assert t380296_x14(text2=29000600, z1=73800100, flag2=0, mode2=1)
            else:
                pass
        else:
            """ State 8,22 """
            # talk:29000700:If you happen upon Horace, please tell him.
            assert t380296_x15(text1=29000700, flag1=0, mode1=1)
    else:
        """ State 9 """
        if GetEventStatus(50006190) == 1:
            """ State 17,25 """
            # talk:29001000:I will soon head to the lake.
            assert t380296_x15(text1=29001000, flag1=0, mode1=1)
        else:
            """ State 18 """
            if not GetEventStatus(73800101):
                """ State 10,23 """
                # talk:29000800:Ah, hello, we meet again.
                assert t380296_x15(text1=29000800, flag1=0, mode1=1)
            else:
                """ State 26 """
                # talk:29001200:Oh, Horace. Where have you run off to?
                assert t380296_x15(text1=29001200, flag1=0, mode1=1)
            """ State 11 """
            ClearTalkListData()
            """ State 12 """
            # action:14019002:Tell of the Smouldering Lake
            AddTalkListDataIf(GetEventStatus(73800134) == 1, 1, 14019002, -1)
            # action:14019003:Say nothing
            AddTalkListDataIf(GetEventStatus(73800101) == 1 or GetEventStatus(73800134) == 1, 2, 14019003,
                              -1)
            # action:14019001:No
            AddTalkListDataIf(not GetEventStatus(73800101) and not GetEventStatus(73800134), 3, 14019001,
                              -1)
            """ State 13 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 14 """
            if GetTalkListEntryResult() == 1:
                """ State 16,24 """
                # talk:29000900:Goodness me.
                assert t380296_x14(text2=29000900, z1=73800102, flag2=0, mode2=1)
                """ State 19 """
                SetEventState(73800101, 1)
                """ State 27 """
                # lot:61900:Ring of the Evil Eye
                assert t380296_x16(lot1=61900)
            elif GetTalkListEntryResult() == 2 or GetTalkListEntryResult() == 3:
                """ State 15 """
                if GetEventStatus(73800101) == 1:
                    pass
                else:
                    """ State 28 """
                    # talk:29001100:Oh, yes, I see...
                    assert t380296_x14(text2=29001100, z1=73800101, flag2=0, mode2=1)
            else:
                pass
    """ State 29 """
    return 0

def t380296_x1():
    """ State 0,9 """
    assert t380296_x11()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1356) and not GetEventStatus(1357):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t380296_x7()
            if call.Done():
                pass
            elif GetEventStatus(1356) == 1 or GetEventStatus(1357) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t380296_x8()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t380296_x11()
                elif not GetEventStatus(1356) and not GetEventStatus(1357):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 6 """
            pass
    else:
        Goto('L0')
    """ State 13 """
    return 0

def t380296_x2():
    """ State 0,1 """
    if GetEventStatus(1358) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:29002320: 
            call = t380296_x15(text1=29002320, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t380296_x11()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t380296_x3():
    """ State 0,3 """
    if GetEventStatus(1356) == 1 or GetEventStatus(1357) == 1:
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

def t380296_x4():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t380296_x11()
    """ State 5 """
    return 0

def t380296_x5():
    """ State 0,2 """
    call = t380296_x9()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t380296_x2()

def t380296_x6():
    """ State 0 """

def t380296_x7():
    """ State 0,1 """
    if not GetEventStatus(73800123):
        """ State 4,9 """
        # talk:29001820:What's happened to you?
        assert t380296_x13(text3=29001820, z2=73800123, flag3=0, mode3=1)
    else:
        """ State 6,5 """
        SetEventState(73800121, 0)
        SetEventState(73800122, 0)
        SetEventState(73800123, 0)
        """ State 10 """
        # talk:29001920:Please, stop this!
        assert t380296_x15(text1=29001920, flag1=0, mode1=1)
    """ State 11 """
    return 0

def t380296_x8():
    """ State 0,3 """
    if not GetEventStatus(73800120):
        """ State 1,4 """
        # talk:29002020:You've gone Hollow, have you?
        assert t380296_x13(text3=29002020, z2=73800120, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t380296_x9():
    """ State 0,5 """
    while True:
        call = t380296_x10(z3=6000, flag4=1355, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t380296_x0()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1356) == 1 and not GetEventStatus(73800120)):
                """ State 1 """
                Label('L0')
                call = t380296_x1()
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
                call = t380296_x4()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1356) == 1 and not GetEventStatus(73800120)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t380296_x3()

def t380296_x10(z3=6000, flag4=1355, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t380296_x11():
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

def t380296_x12():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t380296_x13(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t380296_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
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

def t380296_x14(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t380296_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t380296_x15(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t380296_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t380296_x16(lot1=61900):
    """ State 0,1 """
    # lot:61900:Ring of the Evil Eye
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t380296_x17():
    """ State 0,1 """
    while True:
        call = t380296_x5()
        assert not GetEventStatus(1345) or GetEventStatus(9013) == 1
        """ State 2 """
        call = t380296_x6()
        assert GetEventStatus(1345) == 1 and not GetEventStatus(9013)

def t380296_x18():
    """ State 0,1 """
    assert t380296_x11()
    """ State 2 """
    return 0

