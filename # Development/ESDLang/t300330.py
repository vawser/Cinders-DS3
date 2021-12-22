# -*- coding: utf-8 -*-
def t300330_1():
    """ State 0,1 """
    SetEventState(73000182, 0)
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t300330_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t300330_x12()
        assert not IsClientPlayer()

def t300330_x0(z2=6330, flag3=1435, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
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

def t300330_x1():
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

def t300330_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t300330_x3(text2=33000900, z1=73000170, flag2=0, mode2=1):
    """ State 0,5 """
    assert t300330_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    # talk:33000900:What on earth?
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

def t300330_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t300330_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t300330_x5(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t300330_x6():
    """ State 0,1 """
    if GetEventStatus(1420) == 1:
        pass
    else:
        Goto('L0')
    """ State 2 """
    if not GetEventStatus(50006232):
        """ State 3,15 """
        # talk:33000000:Ahh, the wait has been long, Unkindled One.
        assert t300330_x4(text1=33000000, flag1=0, mode1=1)
        """ State 14 """
        # lot:62300:Small Lothric Banner
        assert t300330_x5(lot1=62300)
    elif not GetEventStatus(6770):
        """ State 8,16 """
        # talk:33000500:This farewell gift is for you.
        assert t300330_x4(text1=33000500, flag1=0, mode1=1)
        """ State 17 """
        # lot:62310:Way of Blue
        assert t300330_x5(lot1=62310)
        SetEventState(25009720, 1) # Priestess Emilia appears
    else:
        """ State 4 """
        if GetEventStatus(9301) == 1:
            """ State 5,13 """
            # talk:33000200:What is wrong, Unkindled One?
            assert t300330_x4(text1=33000200, flag1=0, mode1=1)
        else:
            """ State 7,12 """
            # talk:33000100:Unkindled One. Head to the High Wall's base.
            assert t300330_x4(text1=33000100, flag1=0, mode1=1)
    """ State 19 """
    return 0
    """ State 6 """
    Label('L0')
    if not GetEventStatus(50006230):
        """ State 11 """
        pass
    else:
        """ State 10 """
        pass
    """ State 18 """
    t300330_x16()
    def ExitPause():
        SetEventState(73000180, 1)

def t300330_x7():
    """ State 0,4 """
    assert t300330_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t300330_x15()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t300330_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t300330_x8():
    """ State 0,1 """
    if GetEventStatus(1438) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            if not GetEventStatus(73000180):
                """ State 6,9 """
                # talk:33000400: 
                call = t300330_x4(text1=33000400, flag1=0, mode1=1)
                if call.Done():
                    pass
                elif GetDistanceToPlayer() > 12:
                    """ State 8 """
                    assert t300330_x1()
            else:
                """ State 7 """
                pass
        else:
            """ State 5 """
            pass
    """ State 10 """
    return 0

def t300330_x9():
    """ State 0,6 """
    assert t300330_x1()
    """ State 3 """
    if GetEventStatus(1436) == 1 or GetEventStatus(1437) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t300330_x10():
    """ State 0,1,2 """
    assert t300330_x1()
    """ State 3 """
    return 0

def t300330_x11():
    """ State 0,1 """
    while True:
        call = t300330_x13()
        assert not GetEventStatus(1420) and not GetEventStatus(1421)
        """ State 2 """
        call = t300330_x14()
        assert GetEventStatus(1420) == 1 or GetEventStatus(1421) == 1

def t300330_x12():
    """ State 0,1 """
    assert t300330_x1()
    """ State 2 """
    return 0

def t300330_x13():
    """ State 0,2 """
    call = t300330_x17()
    assert CheckSelfDeath() == 1 or GetEventStatus(73000182) == 1
    """ State 1 """
    t300330_x8()

def t300330_x14():
    """ State 0 """

def t300330_x15():
    """ State 0,1 """
    if not GetEventStatus(73000170):
        """ State 2,5 """
        # talk:33000900:What on earth?
        assert t300330_x3(text2=33000900, z1=73000170, flag2=0, mode2=1)
    else:
        """ State 3,6 """
        # talk:33001000:Whatever is this about?
        assert t300330_x4(text1=33001000, flag1=0, mode1=1)
        """ State 4 """
        SetEventState(73000170, 0)
    """ State 7 """
    return 0

def t300330_x16():
    """ State 0,3 """
    # talk:33000310:Prince Lothric is in your hands...
    TalkToPlayer(33000310, -1, -1, 1)
    def WhilePaused():
        SetTalkTime(0.1)
    if GetCurrentStateElapsedTime() > 6.8:
        pass
    elif CheckSpecificPersonTalkHasEnded(0) == 1:
        pass
    """ State 1 """
    SetEventState(73000180, 1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(73000181, 1)
    """ State 4 """
    return 0

def t300330_x17():
    """ State 0,6 """
    while True:
        call = t300330_x0(z2=6330, flag3=1435, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 4 """
            call = t300330_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t300330_x7()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 5 """
                call = t300330_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(73000180) == 1:
            """ State 1 """
            assert not GetEventStatus(73000180)
    """ State 3 """
    t300330_x9()

