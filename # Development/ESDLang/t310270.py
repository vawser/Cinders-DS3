# -*- coding: utf-8 -*-
def t310270_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310270_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310270_x12()
        assert not IsClientPlayer()

def t310270_x0(z3=6270, flag4=1315, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t310270_x1():
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

def t310270_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310270_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t310270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310270_x4(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t310270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310270_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t310270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t310270_x6():
    """ State 0,1 """
    if GetEventStatus(73100102) == 1:
        """ State 5 """
        if not GetEventStatus(73100304):
            """ State 8 """
            if not GetEventStatus(73100300):
                """ State 7,20 """
                # talk:27000800:Hmm... Another one of those Unkindled, are you?
                assert t310270_x4(text2=27000800, z1=73100300, flag2=0, mode2=1)
            else:
                """ State 9,21 """
                # talk:27000600:You've gone and rescued her, have you?
                assert t310270_x5(text1=27000600, flag1=0, mode1=1)
            """ State 16 """
            SetEventState(73100304, -1)
            Goto('L1')
        else:
            """ State 10,22 """
            # talk:27000700:What's the matter? My terms are very simple.
            assert t310270_x5(text1=27000700, flag1=0, mode1=1)
            Goto('L1')
        """ State 17 """
        Label('L0')
        SetEventState(73100302, 1)
    elif GetEventStatus(73100301) == 1:
        """ State 6 """
        if not GetEventStatus(73100302):
            """ State 11 """
            if not GetEventStatus(73100300):
                """ State 14,23 """
                # talk:27000500:Hmm... Another one of those Unkindled, are you?
                assert t310270_x4(text2=27000500, z1=73100300, flag2=0, mode2=1)
                Goto('L0')
            else:
                """ State 15,24 """
                # talk:27000200:You like poking around in cells, do you?
                assert t310270_x5(text1=27000200, flag1=0, mode1=1)
                Goto('L0')
        elif not GetEventStatus(73100303):
            """ State 12,26 """
            # talk:27000300:Ah-hah, taken an interest in her, have you?
            assert t310270_x4(text2=27000300, z1=73100303, flag2=0, mode2=1)
        else:
            """ State 13,25 """
            # talk:27000400:The woman's a lost cause.
            assert t310270_x5(text1=27000400, flag1=0, mode1=1)
    else:
        """ State 2 """
        if not GetEventStatus(73100300):
            """ State 3,18 """
            # talk:27000000:Hmm... Another one of those Unkindled, are you?
            assert t310270_x4(text2=27000000, z1=73100300, flag2=0, mode2=1)
        else:
            """ State 4,19 """
            # talk:27000100:If like the others, you're fool enough to play the champion...
            assert t310270_x5(text1=27000100, flag1=0, mode1=1)
    """ State 27 """
    Label('L1')
    return 0

def t310270_x7():
    """ State 0,10 """
    assert t310270_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetEventStatus(1317) == 1:
        """ State 9 """
        SetEventState(73100320, 1)
    elif not GetEventStatus(1316) and not GetEventStatus(1317):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,12 """
            call = t310270_x15()
            if call.Done():
                pass
            elif GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,13 """
                    call = t310270_x16()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 11 """
                        Label('L1')
                        assert t310270_x1()
                elif not GetEventStatus(1316) and not GetEventStatus(1317):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 6 """
            pass
    else:
        Goto('L0')
    """ State 14 """
    return 0

def t310270_x8():
    """ State 0,1 """
    if GetEventStatus(1318) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t310270_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310270_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310270_x9():
    """ State 0,3 """
    if GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t310270_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310270_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t310270_x10():
    """ State 0,1,2,3 """
    assert t310270_x1()
    """ State 4 """
    return 0

def t310270_x11():
    """ State 0,1 """
    while True:
        call = t310270_x13()
        assert not GetEventStatus(1300)
        """ State 2 """
        call = t310270_x14()
        assert GetEventStatus(1300) == 1

def t310270_x12():
    """ State 0,1 """
    assert t310270_x1()
    """ State 2 """
    return 0

def t310270_x13():
    """ State 0,2 """
    call = t310270_x19()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310270_x8()

def t310270_x14():
    """ State 0 """

def t310270_x15():
    """ State 0,1 """
    if not GetEventStatus(73100323):
        """ State 4,9 """
        # talk:27001500:What is it now!
        assert t310270_x3(text3=27001500, z2=73100323, flag3=0, mode3=1)
    else:
        """ State 5,6 """
        SetEventState(73100321, 0)
        SetEventState(73100322, 0)
        SetEventState(73100323, 0)
        """ State 10 """
        # talk:27001600:Curse you, damn fool!
        assert t310270_x5(text1=27001600, flag1=0, mode1=1)
    """ State 11 """
    return 0

def t310270_x16():
    """ State 0,3 """
    if not GetEventStatus(73100320):
        """ State 1,4 """
        # talk:27001700:Lost it, have you?
        assert t310270_x3(text3=27001700, z2=73100320, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t310270_x17():
    """ State 0,1 """
    if GetEventStatus(1317) == 1:
        """ State 3,4 """
        # talk:27002100:Remember. A knight of Carim does not forgive betrayal.
        assert t310270_x5(text1=27002100, flag1=0, mode1=1)
    else:
        """ State 2,5 """
        # talk:27001900:Stay dead this time.
        assert t310270_x5(text1=27001900, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t310270_x18():
    """ State 0,1 """
    if GetEventStatus(1317) == 1:
        """ State 2,4 """
        # talk:27002200: 
        assert t310270_x5(text1=27002200, flag1=0, mode1=1)
    else:
        """ State 3,5 """
        # talk:27002000:Deluded Hollow bastard...
        assert t310270_x5(text1=27002000, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t310270_x19():
    """ State 0,5 """
    while True:
        call = t310270_x0(z3=6270, flag4=1315, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t310270_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t310270_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t310270_x7()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif (IsAttackedBySomeone() == 1 or ((GetEventStatus(1316) == 1 or GetEventStatus(1317) ==
                  1) and not GetEventStatus(73100320))):
                Goto('L0')
        elif (IsAttackedBySomeone() == 1 or ((GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1)
              and not GetEventStatus(73100320))):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t310270_x9()

