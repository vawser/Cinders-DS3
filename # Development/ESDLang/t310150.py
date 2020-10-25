# -*- coding: utf-8 -*-
def t310150_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310150_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310150_x13()
        assert not IsClientPlayer()

def t310150_x0(z3=6150, flag4=1075, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t310150_x1():
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

def t310150_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310150_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t310150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310150_x4(text2=15000200, z1=73100152, flag2=0, mode2=1):
    """ State 0,5 """
    assert t310150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:15000200:Ohh, I am honoured, truly.
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

def t310150_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t310150_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310150_x6():
    """ State 0,1,2 """
    if not GetEventStatus(73100151):
        """ State 3,11 """
        SetEventState(73100181, 1)
        """ State 12 """
        # talk:15000100:Ohh...
        assert t310150_x5(text1=15000100, flag1=0, mode1=1)
    else:
        """ State 4,13 """
        # talk:15000400:Ahh, Champion of Ash. Have you had a change of heart?
        assert t310150_x5(text1=15000400, flag1=0, mode1=1)
    """ State 5 """
    ClearTalkListData()
    """ State 6 """
    # action:14005000:Accept his service
    AddTalkListData(1, 14005000, -1)
    # action:14005001:Decline
    AddTalkListData(2, 14005001, -1)
    """ State 7 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 8 """
    if GetTalkListEntryResult() == 1:
        """ State 15 """
        # talk:15000200:Ohh, I am honoured, truly.
        assert t310150_x4(text2=15000200, z1=73100152, flag2=0, mode2=1)
        """ State 10 """
        SetEventState(73100180, 1)
        """ State 9 """
        Label('L0')
        SetEventState(73100151, 1)
    elif GetTalkListEntryResult() == 2:
        """ State 14 """
        # talk:15000300:Ahh, mm, yes, of course.
        assert t310150_x5(text1=15000300, flag1=0, mode1=1)
        Goto('L0')
    else:
        pass
    """ State 16 """
    return 0

def t310150_x7():
    """ State 0,8 """
    assert t310150_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4 """
        if not GetEventStatus(73100171):
            """ State 7 """
            # talk:15000500: 
            call = t310150_x3(text3=15000500, z2=73100171, flag3=0, mode3=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        elif not GetEventStatus(73100172):
            """ State 10 """
            # talk:15000600: 
            call = t310150_x3(text3=15000600, z2=73100172, flag3=0, mode3=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        else:
            """ State 6 """
            SetEventState(73100171, 0)
            SetEventState(73100172, 0)
            """ State 11 """
            # talk:15000700:What's come over you!
            call = t310150_x5(text1=15000700, flag1=0, mode1=1)
            if call.Done():
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                pass
        """ State 9 """
        assert t310150_x1()
    else:
        """ State 5 """
        pass
    """ State 12 """
    Label('L0')
    return 0

def t310150_x8():
    """ State 0,1 """
    if GetEventStatus(1078) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:15000800:Killing Undead for sport, accursed champion?
            call = t310150_x5(text1=15000800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310150_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310150_x9():
    """ State 0,2,1,3 """
    return 0

def t310150_x10():
    """ State 0,1,2,3 """
    assert t310150_x1()
    """ State 4 """
    return 0

def t310150_x11():
    """ State 0,2,1,3 """
    # talk:15000000: 
    assert t310150_x3(text3=15000000, z2=73100150, flag3=0, mode3=1)
    """ State 4 """
    return 0

def t310150_x12():
    """ State 0,1 """
    while True:
        call = t310150_x14()
        assert not GetEventStatus(1060)
        """ State 2 """
        call = t310150_x15()
        assert GetEventStatus(1060) == 1

def t310150_x13():
    """ State 0,1 """
    assert t310150_x1()
    """ State 2 """
    return 0

def t310150_x14():
    """ State 0,1 """
    call = t310150_x16()
    assert CheckSelfDeath() == 1
    """ State 2 """
    t310150_x8()

def t310150_x15():
    """ State 0 """

def t310150_x16():
    """ State 0,7 """
    while True:
        call = t310150_x0(z3=6150, flag4=1075, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 4 """
            call = t310150_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t310150_x7()
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
                call = t310150_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(1075) == 1 and GetDistanceToPlayer() < 10 and not GetEventStatus(73100150):
            """ State 6 """
            call = t310150_x11()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        elif GetEventStatus(73100180) == 1:
            """ State 1 """
            if not GetEventStatus(73100180):
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
    """ State 3 """
    t310150_x9()

