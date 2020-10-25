#-------------------------------------------
#-- Hawkwood the Deserter (outside)
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400171_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400171_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400171_x11()
        assert not IsClientPlayer()

def t400171_x0(z3=6000, flag4=1115, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t400171_x1():
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

def t400171_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400171_x3(text1=_, z1=_, flag3=0, mode2=1):
    """ State 0,5 """
    assert t400171_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400171_x4(text3=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t400171_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400171_x5():
    """ State 0,1 """
    # talk:17000900:The poor, wretched souls...
    assert t400171_x4(text3=17000900, flag2=0, mode1=1)
    """ State 2 """
    return 0

def t400171_x6():
    """ State 0,16 """
    assert t400171_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1116) and not GetEventStatus(1117):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(74000842):
                """ State 11,19 """
                # talk:17001320:What is it, now!, talk:17002000:What is it, now!
                call = t400171_x14(text1=17001320, z1=74000842, flag1=1116, z2=1117, text2=17002000)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t400171_x15()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t400171_x1()
            else:
                """ State 7,4 """
                SetEventState(74000840, 0)
                SetEventState(74000841, 0)
                SetEventState(74000842, 0)
                """ State 20 """
                # talk:17001330:Enough, you fool!, talk:17002100:Are you mad?
                call = t400171_x14(text1=17001330, z1=74000843, flag1=1116, z2=1117, text2=17002100)
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
            if not GetEventStatus(74000848):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1116) and not GetEventStatus(1117):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t400171_x7():
    """ State 0,1 """
    if GetEventStatus(1118) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400171_x16()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400171_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400171_x8():
    """ State 0,3 """
    if GetEventStatus(1116) == 1 or GetEventStatus(1117) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t400171_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t400171_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400171_x9():
    """ State 0,1,3,4 """
    assert t400171_x1()
    """ State 6 """
    return 0

def t400171_x10():
    """ State 0,1 """
    while True:
        call = t400171_x12()
        assert not GetEventStatus(1100) and not GetEventStatus(1101) and not GetEventStatus(1102)
        """ State 2 """
        call = t400171_x13()
        assert GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1 or GetEventStatus(1102) == 1

def t400171_x11():
    """ State 0,1 """
    assert t400171_x1()
    """ State 2 """
    return 0

def t400171_x12():
    """ State 0,2 """
    call = t400171_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400171_x7()

def t400171_x13():
    """ State 0 """

def t400171_x14(text1=_, z1=_, flag1=1116, z2=1117, text2=_):
    """ State 0,1 """
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """ State 3 """
        call = t400171_x3(text1=text1, z1=z1, flag3=0, mode2=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 2 """
            Label('L0')
            assert t400171_x1()
        elif GetEventStatus(74000830) == 1 or GetEventStatus(flag1) == 1:
            """ State 6 """
            Label('L1')
            return 1
    else:
        """ State 4 """
        call = t400171_x3(text1=text2, z1=z1, flag3=0, mode2=1)
        if call.Done():
            pass
        elif GetEventStatus(74000830) == 1 or GetEventStatus(flag1) == 1:
            Goto('L1')
        elif GetDistanceToPlayer() > 12:
            Goto('L0')
    """ State 5 """
    return 0

def t400171_x15():
    """ State 0,1 """
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """ State 2 """
        # talk:17001400:What in bloody hell is wrong with you!
        assert t400171_x3(text1=17001400, z1=74000848, flag3=0, mode2=1)
    else:
        """ State 3 """
        # talk:17002200:Lost your head, have you?
        assert t400171_x3(text1=17002200, z1=74000848, flag3=0, mode2=1)
    """ State 4 """
    return 0

def t400171_x16():
    """ State 0,1 """
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """ State 2 """
        # talk:17001500: 
        assert t400171_x4(text3=17001500, flag2=0, mode1=1)
    else:
        """ State 3 """
        # talk:17002400:Go on, be as bloody mad as you like.
        assert t400171_x4(text3=17002400, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400171_x17():
    """ State 0,1 """
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """ State 2 """
        # talk:17001600:We'll never amount to anything, not you, not I...
        assert t400171_x4(text3=17001600, flag2=0, mode1=1)
    else:
        """ State 3 """
        # talk:17002500:Who can deny the curse? You poor bastard.
        assert t400171_x4(text3=17002500, flag2=0, mode1=1)
    """ State 4 """
    return 0

def t400171_x18():
    """ State 0,5 """
    while True:
        call = t400171_x0(z3=6000, flag4=1115, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t400171_x5()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400171_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t400171_x6()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif (IsAttackedBySomeone() == 1 or (GetEventStatus(1116) == 1 and not GetEventStatus(74000848)
                  and not GetEventStatus(74000849))):
                Goto('L0')
        elif (IsAttackedBySomeone() == 1 or (GetEventStatus(1116) == 1 and not GetEventStatus(74000848)
              and not GetEventStatus(74000849))):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400171_x8()

