# -*- coding: utf-8 -*-
def t350190_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350190_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350190_x12()
        assert not IsClientPlayer()

def t350190_x0(z3=6000, flag4=1155, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t350190_x1():
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

def t350190_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350190_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t350190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350190_x4(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t350190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350190_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t350190_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350190_x6():
    """ State 0,1 """
    if GetEventStatus(1146) == 1:
        """ State 2 """
        if not GetEventStatus(73500200):
            """ State 3,6 """
            # talk:19000700:Ahh, so you've chosen to serve Rosaria after all.
            assert t350190_x4(text2=19000700, z1=73500200, flag2=0, mode2=1)
        else:
            """ State 4,7 """
            # talk:19000800:Rosaria's Fingers need only fetch tongues for their mistress.
            assert t350190_x5(text1=19000800, flag1=0, mode1=1)
    else:
        """ State 5,8 """
        # talk:19000900:That bastard, who does he think he is?
        assert t350190_x4(text2=19000900, z1=73500201, flag2=0, mode2=1)
    """ State 9 """
    return 0

def t350190_x7():
    """ State 0,9 """
    assert t350190_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1156) and not GetEventStatus(1157):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t350190_x15()
            if call.Done():
                pass
            elif GetEventStatus(1156) == 1 or GetEventStatus(1157) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t350190_x16()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t350190_x1()
                elif not GetEventStatus(1156) and not GetEventStatus(1157):
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

def t350190_x8():
    """ State 0,1 """
    if GetEventStatus(1158) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t350190_x17()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t350190_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t350190_x9():
    """ State 0,3 """
    if GetEventStatus(1156) == 1 or GetEventStatus(1157) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t350190_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t350190_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t350190_x10():
    """ State 0,1,2,3 """
    assert t350190_x1()
    """ State 4 """
    return 0

def t350190_x11():
    """ State 0,1 """
    while True:
        call = t350190_x13()
        assert not GetEventStatus(1146) and not GetEventStatus(1147)
        """ State 2 """
        call = t350190_x14()
        assert GetEventStatus(1146) == 1 or GetEventStatus(1147) == 1

def t350190_x12():
    """ State 0,1 """
    assert t350190_x1()
    """ State 2 """
    return 0

def t350190_x13():
    """ State 0,2 """
    call = t350190_x19()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t350190_x8()

def t350190_x14():
    """ State 0 """

def t350190_x15():
    """ State 0,3,4 """
    if not GetEventStatus(73500223):
        """ State 5,10 """
        # talk:19002230:What's wrong with you?
        assert t350190_x3(text3=19002230, z2=73500223, flag3=0, mode3=1)
    else:
        """ State 6,7 """
        SetEventState(73500221, 0)
        SetEventState(73500222, 0)
        SetEventState(73500223, 0)
        """ State 11 """
        # talk:19002240:Can you even hear me? If you can, cease this at once.
        assert t350190_x5(text1=19002240, flag1=0, mode1=1)
    """ State 12 """
    return 0

def t350190_x16():
    """ State 0,3,4 """
    if not GetEventStatus(73500220):
        """ State 1,5 """
        # talk:19002250:I see, I see, as clear as day.
        assert t350190_x3(text3=19002250, z2=73500220, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t350190_x17():
    """ State 0,1,2,3 """
    # talk:19002260:You rotten beasts, don't you ever forget...
    assert t350190_x5(text1=19002260, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t350190_x18():
    """ State 0,1,2,3 """
    # talk:19002280:You are unbecoming of a Finger.
    assert t350190_x5(text1=19002280, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t350190_x19():
    """ State 0,5 """
    while True:
        call = t350190_x0(z3=6000, flag4=1155, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t350190_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1156) == 1 and not GetEventStatus(73500220)):
                """ State 1 """
                Label('L0')
                call = t350190_x7()
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
                call = t350190_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1156) == 1 and not GetEventStatus(73500220)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t350190_x9()

