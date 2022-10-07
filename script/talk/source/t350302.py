# -*- coding: utf-8 -*-
def t350302_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350302_x4()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350302_x5()
        assert not IsClientPlayer()

def t350302_x0(z2=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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

def t350302_x1():
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

def t350302_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350302_x3(text1=_, z1=73500251, flag1=0, mode1=1):
    """ State 0,5 """
    assert t350302_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
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

def t350302_x4():
    """ State 0,1 """
    while True:
        call = t350302_x6()
        assert not GetEventStatus(1361)
        """ State 2 """
        call = t350302_x7()
        assert GetEventStatus(1361) == 1

def t350302_x5():
    """ State 0,1 """
    assert t350302_x1()
    """ State 2 """
    return 0

def t350302_x6():
    """ State 0,2 """
    call = t350302_x0(z2=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
    assert GetEventStatus(73500271) == 1
    """ State 1 """
    if GetCurrentStateElapsedTime() > 1:
        """ State 3 """
        call = t350302_x8()
        assert GetDistanceToPlayer() > 45
    elif GetDistanceToPlayer() > 45:
        pass
    """ State 4 """
    t350302_x1()

def t350302_x7():
    """ State 0 """

def t350302_x8():
    """ State 0,1 """
    if not GetEventStatus(73500255):
        """ State 2 """
        pass
    else:
        """ State 5 """
        # talk:30000400:Huh? Where's the old giant?
        assert t350302_x3(text1=30000400, z1=73500251, flag1=0, mode1=1)
        """ State 6 """
        return 0

