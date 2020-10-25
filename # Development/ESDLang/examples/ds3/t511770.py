# -*- coding: utf-8 -*-
def t511770_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t511770_x8()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t511770_x9()
        assert not IsClientPlayer()

def t511770_x0(z9=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
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
        elif CheckActionButtonArea(z9):
            break
    """ State 4 """
    return 0

def t511770_x1():
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

def t511770_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t511770_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t511770_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t511770_x4():
    """ State 0,1 """
    assert t511770_x3(text1=87000910, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t511770_x5(val1=25, val2=35):
    """ State 0,1,3 """
    if GetDistanceToPlayer() < val1:
        """ State 4,7 """
        call = t511770_x13()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val2:
            """ State 6 """
            assert t511770_x1()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0

def t511770_x6():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t511770_x1()
    """ State 5 """
    return 0

def t511770_x7():
    """ State 0,1 """
    SetEventState(75110200, 1)
    """ State 2 """
    assert t511770_x3(text1=87000900, flag1=0, mode1=1)
    """ State 3 """
    return 0

def t511770_x8():
    """ State 0,1 """
    t511770_x10(z1=-1, z2=75110221, z3=75110222, z4=75110223, z5=87000700, z6=87000710, z7=87000720,
                z8=87000730, val1=25, val2=35)

def t511770_x9():
    """ State 0,1 """
    assert t511770_x1()
    """ State 2 """
    return 0

def t511770_x10(z1=-1, z2=75110221, z3=75110222, z4=75110223, z5=87000700, z6=87000710, z7=87000720,
                z8=87000730, val1=25, val2=35):
    """ State 0,2 """
    while True:
        call = t511770_x12(z1=z1, z2=z2, z3=z3, z4=z4, z5=z5, z6=z6, z7=z7, z8=z8, val1=val1, val2=val2)
        assert CheckSelfDeath() == 1
        """ State 1 """
        call = t511770_x5(val1=val1, val2=val2)
        assert not CheckSelfDeath()

def t511770_x11():
    """ State 0,1 """
    assert t511770_x1()
    """ State 2 """
    return 0

def t511770_x12(z1=-1, z2=75110221, z3=75110222, z4=75110223, z5=87000700, z6=87000710, z7=87000720,
                z8=87000730, val1=25, val2=35):
    """ State 0,2 """
    while True:
        call = t511770_x0(z9=6000, flag2=6000, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            """ State 4 """
            call = t511770_x4()
            if call.Done():
                continue
            elif GetDistanceToPlayer() < val1 and not GetEventStatus(75110200):
                """ State 3 """
                Label('L0')
                call = t511770_x7()
                if call.Done():
                    continue
                elif GetDistanceToPlayer() > val2:
                    pass
            elif GetDistanceToPlayer() > 5:
                pass
        elif GetDistanceToPlayer() < val1 and not GetEventStatus(75110200):
            Goto('L0')
        """ State 1 """
        assert t511770_x6()

def t511770_x13():
    """ State 0,1,2 """
    assert t511770_x3(text1=87001000, flag1=0, mode1=1)
    """ State 3 """
    return 0

