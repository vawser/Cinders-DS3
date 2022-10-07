# -*- coding: utf-8 -*-
def t300324_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t300324_x7()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t300324_x8()
        assert not IsClientPlayer()

def t300324_x0():
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

def t300324_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t300324_x2(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t300324_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t300324_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t300324_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t300324_x4():
    """ State 0,1 """

def t300324_x5():
    """ State 0,1,3 """
    if GetDistanceToPlayer() < 72:
        """ State 4,7 """
        # talk:34000900:Ignorant slaves, how quickly you forget.
        call = t300324_x3(text1=34000900, flag1=0, mode1=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 72:
            """ State 6 """
            assert t300324_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0

def t300324_x6():
    """ State 0,2,3 """
    if GetDistanceToPlayer() < 72:
        """ State 4,7 """
        # talk:34000100:Ahh, dear little Ocelotte.
        call = t300324_x2(text2=34000100, z1=73000200, flag2=0, mode2=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 72:
            """ State 6 """
            assert t300324_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0

def t300324_x7():
    """ State 0,1 """
    while True:
        call = t300324_x9()
        assert GetEventStatus(13000830) == 1 or not GetEventStatus(13005830)
        """ State 2 """
        call = t300324_x10()
        assert not GetEventStatus(13000830) and GetEventStatus(13005830) == 1

def t300324_x8():
    """ State 0,1 """
    assert t300324_x0()
    """ State 2 """
    return 0

def t300324_x9():
    """ State 0,2 """
    call = t300324_x12()
    assert CheckSelfDeath() == 1
    """ State 1 """
    # talk:34001000: 
    t300324_x3(text1=34001000, flag1=0, mode1=1)

def t300324_x10():
    """ State 0 """

def t300324_x11():
    """ State 0,2,3 """
    if GetDistanceToPlayer() < 72:
        """ State 4,7 """
        # talk:34000200: 
        call = t300324_x2(text2=34000200, z1=73000201, flag2=0, mode2=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 72:
            """ State 6 """
            assert t300324_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0

def t300324_x12():
    """ State 0,3 """
    while True:
        call = t300324_x4()
        if not GetEventStatus(73000200) and GetSelfHP() < 90:
            """ State 2 """
            call = t300324_x6()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif not GetEventStatus(73000201) and GetEventStatus(73000202) == 1:
                """ State 4 """
                Label('L0')
                call = t300324_x11()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
        elif IsPlayerDead() == 1:
            break
        elif not GetEventStatus(73000201) and GetEventStatus(73000202) == 1:
            Goto('L0')
    """ State 1 """
    t300324_x5()

