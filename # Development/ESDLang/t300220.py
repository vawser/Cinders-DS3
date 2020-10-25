# -*- coding: utf-8 -*-
def t300220_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t300220_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t300220_x13()
        assert not IsClientPlayer()

def t300220_x0(z3=6000, flag4=1215, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t300220_x1():
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

def t300220_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t300220_x3(text3=_, z2=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t300220_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t300220_x4(text2=22000100, z1=73000132, flag2=0, mode2=1):
    """ State 0,5 """
    assert t300220_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:22000100:Very well. I humbly place my faith in you.
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

def t300220_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t300220_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t300220_x6(lot1=61200):
    """ State 0,1 """
    # lot:61200:Blue Tearstone Ring
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t300220_x7():
    """ State 0,1 """
    if not GetEventStatus(73000100):
        """ State 2,12 """
        # talk:22000000:Ahh, you're no jailer, are you?
        assert t300220_x5(text1=22000000, flag1=0, mode1=1)
    else:
        """ State 3,11 """
        # talk:22000300:Oh, what have we here? Changed your mind, perhaps?
        assert t300220_x5(text1=22000300, flag1=0, mode1=1)
    """ State 4 """
    ClearTalkListData()
    """ State 5 """
    # action:14012000:Grant request
    AddTalkListData(1, 14012000, -1)
    # action:14012001:Refuse
    AddTalkListData(2, 14012001, -1)
    """ State 10 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 8 """
    if GetTalkListEntryResult() == 1:
        """ State 6,15 """
        # talk:22000100:Very well. I humbly place my faith in you.
        assert t300220_x4(text2=22000100, z1=73000132, flag2=0, mode2=1)
        """ State 14 """
        # lot:61200:Blue Tearstone Ring
        assert t300220_x6(lot1=61200)
        """ State 9 """
        Label('L0')
        SetEventState(73000100, 1)
    elif GetTalkListEntryResult() == 2:
        """ State 7,13 """
        # talk:22000200:Yes, well, why should you?
        assert t300220_x5(text1=22000200, flag1=0, mode1=1)
        Goto('L0')
    else:
        pass
    """ State 16 """
    return 0

def t300220_x8():
    """ State 0,9 """
    assert t300220_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1216) and not GetEventStatus(1217):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t300220_x16()
            if call.Done():
                pass
            elif GetEventStatus(1216) == 1 or GetEventStatus(1217) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t300220_x17()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t300220_x1()
                elif not GetEventStatus(1216) and not GetEventStatus(1217):
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

def t300220_x9():
    """ State 0,1 """
    if GetEventStatus(1218) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:22000800:Forgive me, dear...
            call = t300220_x5(text1=22000800, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t300220_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t300220_x10():
    """ State 0,3 """
    if GetEventStatus(1216) == 1 or GetEventStatus(1217) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:22003500:As they say,
            call = t300220_x5(text1=22003500, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t300220_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t300220_x11():
    """ State 0,1,2,3 """
    assert t300220_x1()
    """ State 4 """
    return 0

def t300220_x12():
    """ State 0,1 """
    while True:
        call = t300220_x14()
        assert not GetEventStatus(1200)
        """ State 2 """
        call = t300220_x15()
        assert GetEventStatus(1200) == 1

def t300220_x13():
    """ State 0,1 """
    assert t300220_x1()
    """ State 2 """
    return 0

def t300220_x14():
    """ State 0,2 """
    call = t300220_x18()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t300220_x9()

def t300220_x15():
    """ State 0 """

def t300220_x16():
    """ State 0,1 """
    if not GetEventStatus(73000121):
        """ State 3 """
        # talk:22000400: 
        assert t300220_x3(text3=22000400, z2=73000121, flag3=0, mode3=1)
    elif not GetEventStatus(73000122):
        """ State 4 """
        # talk:22000500: 
        assert t300220_x3(text3=22000500, z2=73000122, flag3=0, mode3=1)
    elif not GetEventStatus(73000123):
        """ State 5 """
        # talk:22000600:What in buggery!
        assert t300220_x3(text3=22000600, z2=73000123, flag3=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(73000121, 0)
        SetEventState(73000122, 0)
        SetEventState(73000123, 0)
        """ State 6 """
        # talk:22000700:Damn it, you've lost it, haven't you!
        assert t300220_x5(text1=22000700, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t300220_x17():
    """ State 0,1 """
    if not GetEventStatus(73000120):
        """ State 3 """
        # talk:22003400:Cold piss, what the devil is it now!
        assert t300220_x3(text3=22003400, z2=73000120, flag3=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t300220_x18():
    """ State 0,5 """
    while True:
        call = t300220_x0(z3=6000, flag4=1215, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t300220_x7()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t300220_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t300220_x8()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1216) == 1 and not GetEventStatus(73000120)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1216) == 1 and not GetEventStatus(73000120)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t300220_x10()

