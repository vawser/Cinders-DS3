# -*- coding: utf-8 -*-
def t400290_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400290_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400290_x13()
        assert not IsClientPlayer()

def t400290_x0(z3=6000, flag4=1355, flag5=1357, flag6=6000, flag7=6000, flag8=6000):
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

def t400290_x1():
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

def t400290_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400290_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t400290_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400290_x4(text2=29000300, z1=74000700, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400290_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:29000300:Oh, and we meet again.
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

def t400290_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400290_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400290_x6():
    """ State 0,1 """
    if GetEventStatus(1357) == 1:
        """ State 7 """
        # talk:29002260:Oh, Horace, why...
        assert t400290_x5(text1=29002260, flag1=0, mode1=1)
    else:
        """ State 2 """
        if not GetEventStatus(74000700):
            """ State 3,5 """
            # talk:29000300:Oh, and we meet again.
            assert t400290_x4(text2=29000300, z1=74000700, flag2=0, mode2=1)
        else:
            """ State 4,6 """
            # talk:29000400:Aldrich's honest home is Irithyll in the Boreal Valley, an ancient fabled city...
            assert t400290_x5(text1=29000400, flag1=0, mode1=1)
    """ State 8 """
    return 0

def t400290_x7():
    """ State 0,9 """
    assert t400290_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1356) and not GetEventStatus(1357):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t400290_x16()
            if call.Done():
                pass
            elif GetEventStatus(1356) == 1 or GetEventStatus(1357) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t400290_x17()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t400290_x1()
                elif not GetEventStatus(1356) and not GetEventStatus(1357):
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

def t400290_x8():
    """ State 0,1 """
    if GetEventStatus(1358) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400290_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400290_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400290_x9():
    """ State 0,3 """
    if GetEventStatus(1356) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            if True:
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400290_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t400290_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        if True:
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400290_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 5 """
    return 0

def t400290_x11():
    """ State 0,1,2 """
    SetEventState(74000720, 1)
    """ State 3 """
    # talk:29002210:Oh, Horace, why...
    assert t400290_x3(text3=29002210, z2=74000724, flag3=0, mode3=1)
    """ State 4 """
    return 0

def t400290_x12():
    """ State 0,1 """
    while True:
        call = t400290_x14()
        assert not GetEventStatus(1342) or not GetEventStatus(9013)
        """ State 2 """
        call = t400290_x15()
        assert GetEventStatus(1342) == 1 and GetEventStatus(9013) == 1

def t400290_x13():
    """ State 0,1 """
    assert t400290_x1()
    """ State 2 """
    return 0

def t400290_x14():
    """ State 0,2 """
    call = t400290_x19()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400290_x8()

def t400290_x15():
    """ State 0 """

def t400290_x16():
    """ State 0,1 """
    if not GetEventStatus(74000723):
        """ State 4,9 """
        # talk:29001810:What's happened to you?
        assert t400290_x3(text3=29001810, z2=74000723, flag3=0, mode3=1)
    else:
        """ State 5,6 """
        SetEventState(74000721, 0)
        SetEventState(74000722, 0)
        SetEventState(74000723, 0)
        """ State 10 """
        # talk:29001910:Please, stop this!
        assert t400290_x5(text1=29001910, flag1=0, mode1=1)
    """ State 11 """
    return 0

def t400290_x17():
    """ State 0,3 """
    if not GetEventStatus(74000720):
        """ State 1,4 """
        # talk:29002010:You've gone Hollow, have you?
        assert t400290_x3(text3=29002010, z2=74000720, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t400290_x18():
    """ State 0,1 """
    if GetEventStatus(1357) == 1:
        """ State 2,4 """
        # talk:29002410:Oh, Horace, everyone, forgive me...
        assert t400290_x5(text1=29002410, flag1=0, mode1=1)
    else:
        """ State 3,5 """
        # talk:29002310: 
        assert t400290_x5(text1=29002310, flag1=0, mode1=1)
    """ State 6 """
    return 0

def t400290_x19():
    """ State 0,6 """
    Label('L0')
    while True:
        call = t400290_x0(z3=6000, flag4=1355, flag5=1357, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t400290_x6()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                break
            elif IsPlayerDead() == 1:
                pass
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                Label('L1')
                call = t400290_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    continue
                elif IsAttackedBySomeone() == 1:
                    break
            elif (GetDistanceToPlayer() < 10 and GetEventStatus(1357) == 1 and not GetEventStatus(74000724)
                  and (DoesSelfHaveSpEffect(150) == 1 or DoesSelfHaveSpEffect(151) == 1)):
                """ State 5 """
                Label('L2')
                call = t400290_x11()
                if call.Done():
                    continue
                elif IsPlayerDead() == 1:
                    pass
                elif GetDistanceToPlayer() > 12:
                    Goto('L1')
            elif GetEventStatus(1356) == 1 and not GetEventStatus(74000720):
                break
        elif IsAttackedBySomeone() == 1:
            break
        elif IsPlayerDead() == 1:
            pass
        elif (GetDistanceToPlayer() < 10 and GetEventStatus(1357) == 1 and not GetEventStatus(74000724)
              and (DoesSelfHaveSpEffect(150) == 1 or DoesSelfHaveSpEffect(151) == 1)):
            Goto('L2')
        elif GetEventStatus(1356) == 1 and not GetEventStatus(74000720):
            break
        """ State 2 """
        Label('L3')
        t400290_x9()
        Quit()
    """ State 1 """
    call = t400290_x7()
    def ExitPause():
        RemoveMyAggro()
    if call.Done():
        Goto('L0')
    elif IsPlayerDead() == 1:
        Goto('L3')
    elif (GetDistanceToPlayer() < 10 and GetEventStatus(1357) == 1 and not GetEventStatus(74000724) and
          (DoesSelfHaveSpEffect(150) == 1 or DoesSelfHaveSpEffect(151) == 1)):
        Goto('L2')

