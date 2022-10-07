# -*- coding: utf-8 -*-
def t350300_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350300_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350300_x12()
        assert not IsClientPlayer()

def t350300_x0(z2=6000, flag7=1375, flag8=6000, flag9=6000, flag10=6000, flag11=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) ==
                1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag7) and not GetEventStatus(flag8) and not GetEventStatus(flag9) and
              not GetEventStatus(flag10) and not GetEventStatus(flag11)):
            pass
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t350300_x1():
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

def t350300_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350300_x3(text3=_, z1=_, flag6=0, mode3=1):
    """ State 0,5 """
    assert t350300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t350300_x4(text1=_, flag1=_, flag5=0, mode2=1):
    """ State 0,5 """
    assert t350300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    return 0

def t350300_x5(text2=_, flag4=0, mode1=1):
    """ State 0,4 """
    assert t350300_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t350300_x6():
    """ State 0,1 """
    # talk:30000000:Well, you look reasonably sane., talk:30000100:Just hold your horses a moment.
    assert t350300_x19(text1=30000000, text2=30000100, flag1=73500250)
    """ State 2 """
    return 0

def t350300_x7():
    """ State 0,16 """
    assert t350300_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1376) and not GetEventStatus(1377):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73500297):
                """ State 11,19 """
                # talk:30004600:What's happened, friend?
                call = t350300_x15(text3=30004600, z1=73500297, flag2=1376, flag3=1377)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t350300_x16()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t350300_x1()
            else:
                """ State 7,4 """
                SetEventState(73500295, 0)
                SetEventState(73500296, 0)
                SetEventState(73500297, 0)
                """ State 20 """
                # talk:30004700:Stop this! Stop this at once!
                call = t350300_x15(text3=30004700, z1=73500298, flag2=1376, flag3=1377)
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
            if not GetEventStatus(73500299):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1376) and not GetEventStatus(1377):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t350300_x8():
    """ State 0,1 """
    if GetEventStatus(1378) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t350300_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t350300_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t350300_x9():
    """ State 0,3 """
    if GetEventStatus(1376) == 1 or GetEventStatus(1377) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t350300_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t350300_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t350300_x10():
    """ State 0,1,3,4 """
    assert t350300_x1()
    """ State 5 """
    return 0

def t350300_x11():
    """ State 0,1 """
    while True:
        call = t350300_x13()
        assert not GetEventStatus(1361)
        """ State 2 """
        call = t350300_x14()
        assert GetEventStatus(1361) == 1

def t350300_x12():
    """ State 0,1 """
    assert t350300_x1()
    """ State 2 """
    return 0

def t350300_x13():
    """ State 0,2 """
    call = t350300_x21()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t350300_x8()

def t350300_x14():
    """ State 0 """

def t350300_x15(text3=_, z1=_, flag2=1376, flag3=1377):
    """ State 0,2 """
    call = t350300_x3(text3=text3, z1=z1, flag6=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t350300_x1()
    elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t350300_x16():
    """ State 0,1 """
    # talk:30004800:Gods' spit, I knew something was wrong!
    assert t350300_x3(text3=30004800, z1=73500299, flag6=0, mode3=1)
    """ State 2 """
    return 0

def t350300_x17():
    """ State 0,1 """
    # talk:30004900: 
    assert t350300_x5(text2=30004900, flag4=0, mode1=1)
    """ State 2 """
    return 0

def t350300_x18():
    """ State 0,1 """
    # talk:30005000:Close call, blimey...
    assert t350300_x5(text2=30005000, flag4=0, mode1=1)
    """ State 2 """
    return 0

def t350300_x19(text1=30000000, text2=30000100, flag1=73500250):
    """ State 0,1 """
    if not GetEventStatus(flag1):
        """ State 2 """
        assert t350300_x4(text1=text1, flag1=flag1, flag5=0, mode2=1)
    else:
        """ State 3 """
        assert t350300_x5(text2=text2, flag4=0, mode1=1)
    """ State 4 """
    return 0

def t350300_x20():
    """ State 0,1 """
    if not GetEventStatus(73500255):
        """ State 2 """
        if True:
            """ State 3 """
            # talk:30000200:Shame on you, you greedy guts. 
            assert t350300_x4(text1=30000200, flag1=73500251, flag5=0, mode2=1)
        else:
            """ State 4 """
            # talk:30000300:Shame on you, you rotten cleric.
            assert t350300_x4(text1=30000300, flag1=73500251, flag5=0, mode2=1)
    else:
        """ State 5 """
        # talk:30000400:Huh? Where's the old giant?
        assert t350300_x4(text1=30000400, flag1=73500251, flag5=0, mode2=1)
    """ State 6 """
    return 0

def t350300_x21():
    """ State 0,6 """
    while True:
        call = t350300_x0(z2=6000, flag7=1375, flag8=6000, flag9=6000, flag10=6000, flag11=6000)
        if call.Done():
            """ State 4 """
            call = t350300_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                call = t350300_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 2 """
                    Label('L0')
                    call = t350300_x7()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1376) == 1 and not GetEventStatus(73500299)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1376) == 1 and not GetEventStatus(73500299)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 3 """
    t350300_x9()

