# -*- coding: utf-8 -*-
def t100100_1():
    """ State 0,2 """
    call = t100100_x4()
    if CheckSelfDeath() == 1:
        """ State 3 """
        t100100_x5()
    elif GetEventStatus(71000100) == 1:
        """ State 1 """
        pass

def t100100_x0(z2=6910, flag2=6001, flag3=6001, flag4=6001, flag5=6001, flag6=6001):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1 or GetEventStatus(flag4) ==
                1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag2) and not GetEventStatus(flag3) and not GetEventStatus(flag4) and
              not GetEventStatus(flag5) and not GetEventStatus(flag6)):
            pass
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t100100_x1():
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

def t100100_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t100100_x3(text1=90050000, z1=71000100, flag1=0, mode1=1):
    """ State 0,5 """
    assert t100100_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:90050000:Conversation text: TBC
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode1:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z1, 1)
    """ State 6 """
    return 0

def t100100_x4():
    """ State 0,1 """
    while True:
        call = t100100_x0(z2=6910, flag2=6001, flag3=6001, flag4=6001, flag5=6001, flag6=6001)
        if call.Done():
            """ State 2 """
            TurnCharacterToFaceEntity(700400, 10000, -1)
            SetEventState(71000101, 1)
            call = t100100_x6()
            def ExitPause():
                TurnCharacterToFaceEntity(700420, 10000, -1)
                SetEventState(71000101, 0)
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 3 """
                Label('L0')
                RemoveMyAggro()
                call = t100100_x7()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                call = t100100_x9()
                if call.Done() and GetDistanceToPlayer() < 5:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 4 """
    t100100_x8()

def t100100_x5():
    """ State 0,1 """
    assert t100100_x1()
    """ State 2 """
    return 0

def t100100_x6():
    """ State 0,1 """
    assert DoesSelfHaveSpEffect(5025) == 1
    """ State 2,3 """
    # talk:90050000:Conversation text: TBC
    assert t100100_x3(text1=90050000, z1=71000100, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t100100_x7():
    """ State 0,1 """
    assert t100100_x1()
    """ State 2 """
    return 0

def t100100_x8():
    """ State 0,1 """
    assert t100100_x1()
    """ State 2 """
    return 0

def t100100_x9():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,4 """
        call = t100100_x10()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 8:
            """ State 5 """
            Label('L0')
            assert t100100_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t100100_x10():
    """ State 0,1 """
    assert t100100_x1()
    """ State 2 """
    return 0

