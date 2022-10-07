# -*- coding: utf-8 -*-
def t330170_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t330170_x9()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t330170_x10()
        assert not IsClientPlayer()

def t330170_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) ==
                1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag3) and not GetEventStatus(flag4) and not GetEventStatus(flag5) and
              not GetEventStatus(flag6) and not GetEventStatus(flag7)):
            pass
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t330170_x1():
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

def t330170_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t330170_x3(text2=_, z1=73300201, flag2=0, mode2=1):
    """ State 0,5 """
    assert t330170_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t330170_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t330170_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t330170_x5(lot1=60710):
    """ State 0,1 """
    # lot:60710:Twinkling Dragon Torso Stone
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t330170_x6():
    """ State 0,1 """
    if GetEventStatus(1118) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,8 """
            # talk:17002600:You are a dragon, more dragon than I.
            call = t330170_x4(text1=17002600, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t330170_x1()
        else:
            """ State 5 """
            pass
        """ State 7 """
        # lot:60710:Twinkling Dragon Torso Stone
        assert t330170_x5(lot1=60710)
    """ State 9 """
    return 0

def t330170_x7():
    """ State 0,6 """
    assert t330170_x1()
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,4 """
        call = t330170_x13()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            t330170_x1()
            Quit()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t330170_x8():
    """ State 0,1,2,3 """
    assert t330170_x1()
    """ State 4 """
    return 0

def t330170_x9():
    """ State 0,1 """
    while True:
        call = t330170_x11()
        assert not GetEventStatus(1104)
        """ State 2 """
        call = t330170_x12()
        assert GetEventStatus(1104) == 1

def t330170_x10():
    """ State 0,1 """
    assert t330170_x1()
    """ State 2 """
    return 0

def t330170_x11():
    """ State 0,2 """
    call = t330170_x15()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t330170_x6()

def t330170_x12():
    """ State 0 """

def t330170_x13():
    """ State 0,2 """
    assert t330170_x1()
    """ State 1 """
    # talk:17002700:Loathe me all you like, but I am the true dragon...
    assert t330170_x4(text1=17002700, flag1=0, mode1=1)
    """ State 3 """
    return 0

def t330170_x14():
    """ State 0,1 """
    SetEventState(73300200, 1)
    """ State 2 """
    if not GetEventStatus(73300201):
        """ State 3 """
        if GetEventStatus(73300202) == 1:
            """ State 5 """
            # talk:17001100:Ahh, I should've known.
            assert t330170_x3(text2=17001100, z1=73300201, flag2=0, mode2=1)
        else:
            """ State 6 """
            # talk:17001200:Ahh, this is unexpected.
            assert t330170_x3(text2=17001200, z1=73300201, flag2=0, mode2=1)
    else:
        """ State 4 """
        # talk:17002800:Ahh, there you are.
        assert t330170_x4(text1=17002800, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t330170_x15():
    """ State 0,3 """
    while True:
        call = t330170_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if IsPlayerDead() == 1:
            break
        elif not GetEventStatus(73300200) and GetDistanceToPlayer() < 18:
            """ State 4 """
            call = t330170_x14()
            def ExitPause():
                SetEventState(73300207, 1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 23:
                """ State 2 """
                assert t330170_x8() and GetDistanceToPlayer() < 4.9
            elif IsPlayerDead() == 1:
                break
    """ State 1 """
    t330170_x7()

