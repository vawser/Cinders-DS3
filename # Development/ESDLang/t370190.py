# -*- coding: utf-8 -*-
def t370190_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1 and GetEventStatus(13705684) == 1
    """ State 2 """
    while True:
        call = t370190_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370190_x11()
        assert not IsClientPlayer()

def t370190_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t370190_x1():
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

def t370190_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370190_x3(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t370190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370190_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t370190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t370190_x5():
    """ State 0,5 """
    assert t370190_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    assert GetDistanceToPlayer() < 95
    """ State 4,7 """
    call = t370190_x14()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 99:
        """ State 6 """
        assert t370190_x1()
    """ State 8 """
    return 0

def t370190_x6():
    """ State 0,1,2 """
    if GetDistanceToPlayer() < 95:
        """ State 3,6 """
        call = t370190_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 95:
            """ State 5 """
            assert t370190_x1()
    else:
        """ State 4 """
        pass
    """ State 7 """
    return 0

def t370190_x7():
    """ State 0,2,1 """
    if GetDistanceToPlayer() < 95:
        """ State 3,6 """
        call = t370190_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 95:
            """ State 5 """
            assert t370190_x1()
    else:
        """ State 4 """
        pass
    """ State 7 """
    return 0

def t370190_x8():
    """ State 0,1,2,3 """
    assert t370190_x1()
    """ State 4 """
    return 0

def t370190_x9():
    """ State 0,1,2,5 """
    SetEventState(13705680, 1)
    if not GetEventStatus(8242):
        """ State 3,9 """
        # talk:19001500:Well, well, never expected to see you here.
        def ExitPause():
            SetEventState(13705683, 1)
        assert t370190_x3(text2=19001500, z1=8242, flag2=0, mode2=1)
        """ State 6 """
        assert GetCurrentStateElapsedTime() > 1
        """ State 10 """
        # talk:19001550:I sowed the seeds. I'll prune the mess.
        assert t370190_x4(text1=19001550, flag1=0, mode1=1)
    else:
        """ State 4,8 """
        # talk:19001600:Well, well, back for more, are you?
        def ExitPause():
            SetEventState(13705683, 1)
        assert t370190_x4(text1=19001600, flag1=0, mode1=1)
        """ State 7 """
        assert GetCurrentStateElapsedTime() > 1
        """ State 11 """
        # talk:19001650:You are no longer of use. You'll run free no more.
        assert t370190_x4(text1=19001650, flag1=0, mode1=1)
    """ State 12 """
    return 0

def t370190_x10():
    """ State 0,1 """
    assert t370190_x1()
    """ State 2 """
    return 0

def t370190_x11():
    """ State 0,1 """
    t370190_x12()

def t370190_x12():
    """ State 0,2 """
    call = t370190_x17()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370190_x6()

def t370190_x13():
    """ State 0 """

def t370190_x14():
    """ State 0,3,4 """
    if not GetEventStatus(13705682) and GetSelfHP() < 30:
        """ State 5,6 """
        SetEventState(13705681, 1)
        SetEventState(13705680, 1)
        SetEventState(8242, 1)
        """ State 9 """
        # talk:19001800:What do you want with her soul?
        assert t370190_x3(text2=19001800, z1=13705682, flag2=0, mode2=1)
    elif not GetEventStatus(13705681) and GetSelfHP() < 65:
        """ State 1,7 """
        SetEventState(13705680, 1)
        SetEventState(8242, 1)
        """ State 8 """
        # talk:19001700:No one will despoil her soul.
        assert t370190_x3(text2=19001700, z1=13705681, flag2=0, mode2=1)
    else:
        """ State 2 """
        pass
    """ State 10 """
    return 0

def t370190_x15():
    """ State 0,1,2,3 """
    # talk:19001900: 
    assert t370190_x4(text1=19001900, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t370190_x16():
    """ State 0,1,2,3 """
    # talk:19002000:Enough with you, my friend.
    assert t370190_x4(text1=19002000, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t370190_x17():
    """ State 0,5 """
    while True:
        call = t370190_x0(z2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if IsAttackedBySomeone() == 1:
            """ State 1 """
            Label('L0')
            call = t370190_x5()
            def ExitPause():
                RemoveMyAggro()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() < 95 and not GetEventStatus(13705680):
            """ State 4 """
            call = t370190_x9()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 99:
                """ State 3 """
                call = t370190_x8()
                if call.Done() and GetDistanceToPlayer() < 90:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
    """ State 2 """
    t370190_x7()

