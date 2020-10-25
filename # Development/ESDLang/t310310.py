# -*- coding: utf-8 -*-
def t310310_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310310_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310310_x12()
        assert not IsClientPlayer()

def t310310_x0(z2=6000, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) ==
                1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag8) and not GetEventStatus(flag9) and not GetEventStatus(flag10)
              and not GetEventStatus(flag11) and not GetEventStatus(flag12)):
            pass
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t310310_x1():
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

def t310310_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310310_x3(text1=_, z1=_, flag7=0, mode3=1):
    """ State 0,5 """
    assert t310310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t310310_x4(text2=_, flag3=_, flag6=0, mode2=1):
    """ State 0,5 """
    assert t310310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag3, 1)
    """ State 6 """
    return 0

def t310310_x5(text4=_, flag5=0, mode1=1):
    """ State 0,4 """
    assert t310310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t310310_x6():
    """ State 0,1 """
    # talk:31000000:Hmm..., talk:31000100:Hmm... Mmm..., talk:31000200:This lift only goes down, but you know...
    assert t310310_x15(text2=31000000, text3=31000100, text4=31000200, flag3=73100350, flag4=73100351)
    """ State 2 """
    return 0

def t310310_x7():
    """ State 0,16 """
    assert t310310_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1396) and not GetEventStatus(1397):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73100395):
                """ State 5,17 """
                # talk:31003000: 
                call = t310310_x16(text1=31003000, z1=73100395, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t310310_x17()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t310310_x1()
            elif not GetEventStatus(73100396):
                """ State 6,18 """
                # talk:31003010: 
                call = t310310_x16(text1=31003010, z1=73100396, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif True:
                """ State 7,4 """
                SetEventState(73100395, 0)
                SetEventState(73100396, 0)
                SetEventState(73100397, 0)
                """ State 20 """
                # talk:31003030:What's happened to you!
                call = t310310_x16(text1=31003030, z1=73100398, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif not GetEventStatus(73100397):
                """ State 11,19 """
                # talk:31003020:What is the meaning of this!
                call = t310310_x16(text1=31003020, z1=73100397, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
        else:
            """ State 3 """
            pass
    else:
        """ State 12 """
        if GetDistanceToPlayer() < 10:
            """ State 13 """
            if not GetEventStatus(73100399):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1396) and not GetEventStatus(1397):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t310310_x8():
    """ State 0,1 """
    if GetEventStatus(1398) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t310310_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310310_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310310_x9():
    """ State 0,3 """
    if GetEventStatus(1396) == 1 or GetEventStatus(1397) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t310310_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t310310_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t310310_x10():
    """ State 0,1,3,4 """
    assert t310310_x1()
    """ State 5 """
    return 0

def t310310_x11():
    """ State 0,1 """
    while True:
        call = t310310_x13()
        assert not GetEventStatus(1380)
        """ State 2 """
        call = t310310_x14()
        assert GetEventStatus(1380) == 1

def t310310_x12():
    """ State 0,1 """
    assert t310310_x1()
    """ State 2 """
    return 0

def t310310_x13():
    """ State 0,2 """
    call = t310310_x20()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310310_x8()

def t310310_x14():
    """ State 0 """

def t310310_x15(text2=31000000, text3=31000100, text4=31000200, flag3=73100350, flag4=73100351):
    """ State 0,2 """
    if not GetEventStatus(flag4):
        """ State 1 """
        if not GetEventStatus(flag3):
            """ State 3 """
            assert t310310_x4(text2=text2, flag3=flag3, flag6=0, mode2=1)
        else:
            """ State 4 """
            assert t310310_x4(text2=text3, flag3=flag4, flag6=0, mode2=1)
    else:
        """ State 5 """
        assert t310310_x5(text4=text4, flag5=0, mode1=1)
    """ State 6 """
    return 0

def t310310_x16(text1=_, z1=_, flag1=1396, flag2=1397):
    """ State 0,2 """
    call = t310310_x3(text1=text1, z1=z1, flag7=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t310310_x1()
    elif GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t310310_x17():
    """ State 0,1 """
    # talk:31003040:No sense in holding back now.
    assert t310310_x3(text1=31003040, z1=73100399, flag7=0, mode3=1)
    """ State 2 """
    return 0

def t310310_x18():
    """ State 0,1 """
    # talk:31003050:How did I ever let this happen...
    assert t310310_x5(text4=31003050, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t310310_x19():
    """ State 0,1 """
    # talk:31003060:You were a poor match, friend...
    assert t310310_x5(text4=31003060, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t310310_x20():
    """ State 0,5 """
    while True:
        call = t310310_x0(z2=6000, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
        if call.Done():
            """ State 3 """
            call = t310310_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t310310_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t310310_x7()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73100399)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73100399)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t310310_x9()

