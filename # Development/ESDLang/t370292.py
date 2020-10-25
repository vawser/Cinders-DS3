# -*- coding: utf-8 -*-
def t370292_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370292_x7()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370292_x8()
        assert not IsClientPlayer()

def t370292_x0():
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

def t370292_x1(lot1=61920):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t370292_x2():
    """ State 0,1,2 """
    SetEventState(73700151, 1)
    """ State 3 """
    assert t370292_x1(lot1=61920)
    """ State 4 """
    return 0

def t370292_x3():
    """ State 0,1 """
    return 0

def t370292_x4():
    """ State 0,1 """
    return 0

def t370292_x5():
    """ State 0,2,1,3 """
    return 0

def t370292_x6():
    """ State 0,1,2,3 """
    assert t370292_x0()
    """ State 4 """
    return 0

def t370292_x7():
    """ State 0,1 """
    while True:
        call = t370292_x9()
        assert not GetEventStatus(1903)
        """ State 2 """
        call = t370292_x10()
        assert GetEventStatus(1903) == 1

def t370292_x8():
    """ State 0,1 """
    assert t370292_x0()
    """ State 2 """
    return 0

def t370292_x9():
    """ State 0,6 """
    while True:
        call = t370292_x11(z1=6000)
        if call.Done():
            """ State 4 """
            call = t370292_x2()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t370292_x3()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif CheckSelfDeath() == 1:
                    """ State 2 """
                    t370292_x4()
                    Quit()
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                call = t370292_x6()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
    """ State 3 """
    t370292_x5()

def t370292_x10():
    """ State 0 """

def t370292_x11(z1=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert GetEventStatus(1915) == 1 and not GetEventStatus(73700151)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(1915) or GetEventStatus(73700151) == 1:
            pass
        elif CheckActionButtonArea(z1):
            break
    """ State 4 """
    return 0

