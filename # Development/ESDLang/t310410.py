# -*- coding: utf-8 -*-
def t310410_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310410_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310410_x13()
        assert not IsClientPlayer()

def t310410_x0(z3=6000, flag4=1595, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t310410_x1():
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

def t310410_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310410_x3(text3=41000600, z2=73100420, flag3=0, mode3=1):
    """ State 0,5 """
    assert t310410_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 1 """
    # talk:41000600:I knew it, I knew you were Hollow!
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

def t310410_x4(text2=_, z1=73100401, flag2=0, mode2=1):
    """ State 0,5 """
    assert t310410_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310410_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t310410_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310410_x6(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t310410_x7():
    """ State 0,1,2 """
    if not GetEventStatus(73100400):
        """ State 3,15 """
        # talk:41000000:Well, what's happened here?
        assert t310410_x5(text1=41000000, flag1=0, mode1=1)
        """ State 6 """
        ClearTalkListData()
        """ State 7 """
        # action:14031000:Indeed
        AddTalkListData(1, 14031000, -1)
        # action:14031001:No
        AddTalkListData(2, 14031001, -1)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 9 """
        if GetTalkListEntryResult() == 1:
            """ State 16 """
            # talk:41000100: 
            assert t310410_x5(text1=41000100, flag1=0, mode1=1)
            """ State 10 """
            Label('L0')
            SetEventState(73100400, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 17 """
            # talk:41000200: 
            assert t310410_x5(text1=41000200, flag1=0, mode1=1)
            Goto('L0')
        else:
            pass
    elif not GetEventStatus(6710):
        """ State 5,14 """
        # talk:41000300:Beware, the shackles of the Gods are fragile.
        assert t310410_x5(text1=41000300, flag1=0, mode1=1)
        """ State 18 """
        # lot:63100:Mound-makers
        assert t310410_x6(lot1=63100)
        """ State 19 """
        # talk:41000350:Come here to pile up your victims, for that will form your anchor.
        assert t310410_x4(text2=41000350, z1=73100401, flag2=0, mode2=1)
    elif not GetEventStatus(73100401):
        """ State 11,22 """
        # talk:41000380:Beware, the shackles of the Gods are fragile.
        assert t310410_x4(text2=41000380, z1=73100401, flag2=0, mode2=1)
    elif not GetEventStatus(50006311):
        """ State 12,20 """
        # talk:41000400:You'll go mad one day, but not today.
        assert t310410_x5(text1=41000400, flag1=0, mode1=1)
        """ State 21 """
        # lot:63110:Homeward Bone
        assert t310410_x6(lot1=63110)
        """ State 13 """
        Label('L1')
        # talk:41000450:This pit is for Hollows, and for the occasional madman fond of piling up victims.
        assert t310410_x5(text1=41000450, flag1=0, mode1=1)
    else:
        """ State 4 """
        Goto('L1')
    """ State 23 """
    return 0

def t310410_x8():
    """ State 0,9 """
    assert t310410_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1596) and not GetEventStatus(1597):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t310410_x16()
            if call.Done():
                pass
            elif GetEventStatus(1596) == 1 or GetEventStatus(1597) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t310410_x17()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t310410_x1()
                elif not GetEventStatus(1596) and not GetEventStatus(1597):
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

def t310410_x9():
    """ State 0,1 """
    if GetEventStatus(1598) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:41000800:Ahh, my family...
            call = t310410_x5(text1=41000800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310410_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310410_x10():
    """ State 0,3 """
    if GetEventStatus(1596) == 1 or GetEventStatus(1597) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:41000700:Right, onto the pile with you. You're family now...
            call = t310410_x5(text1=41000700, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310410_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t310410_x11():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t310410_x1()
    """ State 5 """
    return 0

def t310410_x12():
    """ State 0,1 """
    while True:
        call = t310410_x14()
        assert not GetEventStatus(1580)
        """ State 2 """
        call = t310410_x15()
        assert GetEventStatus(1580) == 1

def t310410_x13():
    """ State 0,1 """
    assert t310410_x1()
    """ State 2 """
    return 0

def t310410_x14():
    """ State 0,2 """
    call = t310410_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310410_x9()

def t310410_x15():
    """ State 0 """

def t310410_x16():
    """ State 0,1,2,3 """
    return 0

def t310410_x17():
    """ State 0,3 """
    if not GetEventStatus(73100420):
        """ State 1,4 """
        # talk:41000600:I knew it, I knew you were Hollow!
        assert t310410_x3(text3=41000600, z2=73100420, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t310410_x18():
    """ State 0,5 """
    while True:
        call = t310410_x0(z3=6000, flag4=1595, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t310410_x7()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1596) == 1 and not GetEventStatus(73100420)):
                """ State 1 """
                Label('L0')
                call = t310410_x8()
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
                call = t310410_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1596) == 1 and not GetEventStatus(73100420)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t310410_x10()

