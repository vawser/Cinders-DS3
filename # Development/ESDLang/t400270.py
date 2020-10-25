#-------------------------------------------
#-- Eygon of Carim
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400270_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400270_x10()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400270_x11()
        assert not IsClientPlayer()

def t400270_x0(z2=6000, flag3=1315, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t400270_x1():
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

def t400270_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400270_x3(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400270_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400270_x5():
    """ State 0,1,2 """
    if not GetEventStatus(74000650):
        """ State 4 """
        if GetEventStatus(74000669) == 1:
            """ State 3,10 """
            # talk:27000900:Ahh, I know you. Been some time, since we met in person.
            assert t400270_x4(text1=27000900, flag1=0, mode1=1)
        else:
            """ State 5,8 """
            # talk:27000950:Ahh, I know you. Been some time.
            assert t400270_x4(text1=27000950, flag1=0, mode1=1)
        """ State 7 """
        SetEventState(74000650, -1)
    else:
        """ State 6,9 """
        # talk:27001000:This place is a cesspool of doddering oldfolk and degenerates.
        assert t400270_x4(text1=27001000, flag1=0, mode1=1)
    """ State 11 """
    return 0

def t400270_x6():
    """ State 0,10 """
    assert t400270_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetEventStatus(1317) == 1:
        """ State 9 """
        SetEventState(74000670, 1)
    elif not GetEventStatus(1316) and not GetEventStatus(1317):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,12 """
            call = t400270_x14()
            if call.Done():
                pass
            elif GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,13 """
                    call = t400270_x15()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 11 """
                        Label('L1')
                        assert t400270_x1()
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

def t400270_x7():
    """ State 0,1 """
    if GetEventStatus(1318) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400270_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400270_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400270_x8():
    """ State 0,3 """
    if GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400270_x16()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400270_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400270_x9():
    """ State 0,1,2,3 """
    assert t400270_x1()
    """ State 4 """
    return 0

def t400270_x10():
    """ State 0,1 """
    while True:
        call = t400270_x12()
        assert not GetEventStatus(1302)
        """ State 2 """
        call = t400270_x13()
        assert GetEventStatus(1302) == 1

def t400270_x11():
    """ State 0,1 """
    assert t400270_x1()
    """ State 2 """
    return 0

def t400270_x12():
    """ State 0,2 """
    call = t400270_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400270_x7()

def t400270_x13():
    """ State 0 """

def t400270_x14():
    """ State 0,1 """
    if not GetEventStatus(74000673):
        """ State 4,9 """
        # talk:27001510:What is it now!
        assert t400270_x3(text2=27001510, z1=74000673, flag2=0, mode2=1)
    else:
        """ State 5,6 """
        SetEventState(74000671, 0)
        SetEventState(74000672, 0)
        SetEventState(74000673, 0)
        """ State 10 """
        # talk:27001610:Curse you, damn fool!
        assert t400270_x4(text1=27001610, flag1=0, mode1=1)
    """ State 11 """
    return 0

def t400270_x15():
    """ State 0,3 """
    if not GetEventStatus(74000670):
        """ State 1,4 """
        # talk:27001710:Lost it, have you?
        assert t400270_x3(text2=27001710, z1=74000670, flag2=0, mode2=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t400270_x16():
    """ State 0,1 """
    if GetEventStatus(1317) == 1:
        """ State 3,4 """
        # talk:27002110:Remember. A knight of Carim does not forgive betrayal.
        assert t400270_x4(text1=27002110, flag1=0, mode1=1)
    else:
        """ State 2,5 """
        # talk:27001910:Stay dead this time.
        assert t400270_x4(text1=27001910, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t400270_x17():
    """ State 0,1 """
    if GetEventStatus(1317) == 1:
        """ State 2,4 """
        # talk:27002210: 
        assert t400270_x4(text1=27002210, flag1=0, mode1=1)
    else:
        """ State 3,5 """
        # talk:27002010:Deluded Hollow bastard...
        assert t400270_x4(text1=27002010, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t400270_x18():
    """ State 0,5 """
    while True:
        call = t400270_x0(z2=6000, flag3=1315, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 3 """
            call = t400270_x5()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400270_x9()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t400270_x6()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif (IsAttackedBySomeone() == 1 or ((GetEventStatus(1316) == 1 or GetEventStatus(1317) ==
                  1) and not GetEventStatus(74000670))):
                Goto('L0')
        elif (IsAttackedBySomeone() == 1 or ((GetEventStatus(1316) == 1 or GetEventStatus(1317) == 1)
              and not GetEventStatus(74000670))):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400270_x8()

