# -*- coding: utf-8 -*-
def t310260_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310260_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310260_x13()
        assert not IsClientPlayer()

def t310260_x0(z5=6000, flag5=1295, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t310260_x1():
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

def t310260_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310260_x3(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t310260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t310260_x4(text2=_, z3=_, flag3=0, mode2=1):
    """ State 0,5 """
    assert t310260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag3)
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

def t310260_x5(text1=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t310260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310260_x6(z1=9, z2=9014, flag1=6059):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t310260_x7():
    """ State 0,2 """
    if not GetEventStatus(73100100):
        """ State 3,21 """
        # talk:26000000:Ahh, who's there?
        assert t310260_x5(text1=26000000, flag2=0, mode1=1)
        """ State 4 """
        ClearTalkListData()
        """ State 5 """
        # action:14016000:Touch
        AddTalkListData(1, 14016000, -1)
        # action:14016001:Ignore
        AddTalkListData(2, 14016001, -1)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 7 """
        if GetTalkListEntryResult() == 1:
            """ State 8,26 """
            SetEventState(73100131, 1)
            call = t310260_x17()
            def ExitPause():
                SetEventState(73100131, 0)
            if call.Get() == 1:
                """ State 19 """
                pass
            elif call.Done():
                """ State 18 """
                assert not GetEventStatus(73100132)
                """ State 25 """
                assert t310260_x6(z1=9, z2=9014, flag1=6059)
        else:
            """ State 9 """
            pass
    else:
        """ State 1 """
        if not GetEventStatus(73100101):
            """ State 10,20 """
            # talk:26000200:Oh, forgive me.
            assert t310260_x5(text1=26000200, flag2=0, mode1=1)
        else:
            """ State 11,22 """
            # talk:26000500:Oh, sweet Champion. You still wish to converse?
            assert t310260_x5(text1=26000500, flag2=0, mode1=1)
        """ State 12 """
        ClearTalkListData()
        """ State 13 """
        # action:14016002:Accept her service
        AddTalkListData(1, 14016002, -1)
        # action:14016003:Decline
        AddTalkListData(2, 14016003, -1)
        """ State 14 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 15 """
        if GetTalkListEntryResult() == 1:
            """ State 24 """
            # talk:26000300:Oh, thank you, sweet Champion.
            assert t310260_x4(text2=26000300, z3=73100130, flag3=0, mode2=1)
            """ State 17 """
            SetEventState(73100102, 1)
            """ State 16 """
            Label('L0')
            SetEventState(73100101, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 23 """
            # talk:26000400:Ahh, yes, of course, I understand.
            assert t310260_x5(text1=26000400, flag2=0, mode1=1)
            Goto('L0')
        else:
            pass
    """ State 27 """
    return 0

def t310260_x8():
    """ State 0,6 """
    assert t310260_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t310260_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t310260_x1()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t310260_x9():
    """ State 0,1 """
    if GetEventStatus(1298) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:26001000:Ohh, great gods, forgive me...
            call = t310260_x5(text1=26001000, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310260_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310260_x10():
    """ State 0,2,1,3 """
    return 0

def t310260_x11():
    """ State 0,1,2,3 """
    assert t310260_x1()
    """ State 4 """
    return 0

def t310260_x12():
    """ State 0,1 """
    while True:
        call = t310260_x14()
        assert not GetEventStatus(1280)
        """ State 2 """
        call = t310260_x15()
        assert GetEventStatus(1280) == 1

def t310260_x13():
    """ State 0,1 """
    assert t310260_x1()
    """ State 2 """
    return 0

def t310260_x14():
    """ State 0,2 """
    call = t310260_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310260_x9()

def t310260_x15():
    """ State 0 """

def t310260_x16():
    """ State 0,1 """
    if not GetEventStatus(73100123):
        """ State 5 """
        # talk:26000800:Have mercy!
        assert t310260_x3(text3=26000800, z4=73100123, flag4=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(73100121, 0)
        SetEventState(73100122, 0)
        SetEventState(73100123, 0)
        """ State 6 """
        # talk:26000900:Please, stop this!
        assert t310260_x5(text1=26000900, flag2=0, mode1=1)
    """ State 7 """
    return 0

def t310260_x17():
    """ State 0,1 """
    if GetEventStatus(73100132) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedTime() > 5
        """ State 3 """
        # talk:26000100:Ahh, yes, there you are, so close, indeed.
        assert t310260_x4(text2=26000100, z3=73100100, flag3=0, mode2=1)
        """ State 4 """
        return 0
    elif not GetEventStatus(73100131):
        """ State 5 """
        return 1

def t310260_x18():
    """ State 0,5 """
    while True:
        call = t310260_x0(z5=6000, flag5=1295, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 3 """
            call = t310260_x7()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t310260_x8()
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
                call = t310260_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t310260_x10()

