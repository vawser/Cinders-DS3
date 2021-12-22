# -*- coding: utf-8 -*-
def t310311_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t310311_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t310311_x14()
        assert not IsClientPlayer()

def t310311_x0(z7=6000, flag10=1395, flag11=6000, flag12=6000, flag13=6000, flag14=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12)
                == 1 or GetEventStatus(flag13) == 1 or GetEventStatus(flag14) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag10) and not GetEventStatus(flag11) and not GetEventStatus(flag12)
              and not GetEventStatus(flag13) and not GetEventStatus(flag14)):
            pass
        elif CheckActionButtonArea(z7):
            break
    """ State 4 """
    return 0

def t310311_x1():
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

def t310311_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t310311_x3(text4=_, z4=_, flag9=0, mode3=1):
    """ State 0,5 """
    assert t310311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag9)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t310311_x4(text1=_, z1=_, flag8=0, mode2=1):
    """ State 0,5 """
    assert t310311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag8)
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

def t310311_x5(text3=_, flag7=0, mode1=1):
    """ State 0,4 """
    assert t310311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t310311_x6(lot1=62100):
    """ State 0,1 """
    # lot:62100:Siegbräu
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t310311_x7(z5=_, z6=_, flag6=_):
    """ State 0,1 """
    if GetEventStatus(flag6) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z5)
        OpenItemAcquisitionMenu(3, z6, 1)
        SetEventState(flag6, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t310311_x8():
    """ State 0,1 """
	# QDEBUG: WAS 13100500
    if not GetEventStatus(13100831):
        """ State 2 """
        # talk:31000300:Hmm... Mmm..., talk:31000400:On some days, I begin to doubt myself., talk:31000500:I could try talking some sense into him...
        assert t310311_x17(text5=31000300, text6=31000400, text7=31000500, flag4=73100360, flag5=73100361)
    else:
        """ State 3 """
        assert t310311_x23()
    """ State 4 """
    return 0

def t310311_x9():
    """ State 0,16 """
    assert t310311_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1396) and not GetEventStatus(1397):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            
            # Hit 1
            if not GetEventStatus(73100395):
                """ State 5,17 """
                # talk:31003000: 
                call = t310311_x18(text4=31003000, z4=73100395, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t310311_x19()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t310311_x1()
            # Hit 2
            elif not GetEventStatus(73100396):
                """ State 6,18 """
                # talk:31003010: 
                call = t310311_x18(text4=31003010, z4=73100396, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            # Hit 4
            elif True:
                """ State 7,4 """
                SetEventState(73100395, 0)
                SetEventState(73100396, 0)
                SetEventState(73100397, 0)
                """ State 20 """
                # talk:31003030:What's happened to you!
                call = t310311_x18(text4=31003030, z4=73100398, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            # Hit 3
            elif not GetEventStatus(73100397):
                """ State 11,19 """
                # talk:31003020:What is the meaning of this!
                call = t310311_x18(text4=31003020, z4=73100397, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
        else:
            """ State 3 """
            pass
    else:
        """ State 12 """
        if GetDistanceToPlayer() < 10:
            """ State 13 """
            if not GetEventStatus(73100399):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1396) and not GetEventStatus(1397):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t310311_x10():
    """ State 0,1 """
    if GetEventStatus(1398) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t310311_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t310311_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t310311_x11():
    """ State 0,3 """
    if GetEventStatus(1396) == 1 or GetEventStatus(1397) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t310311_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t310311_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t310311_x12():
    """ State 0,1,3,4 """
    assert t310311_x1()
    """ State 5 """
    return 0

def t310311_x13():
    """ State 0,1 """
    while True:
        call = t310311_x15()
        assert not GetEventStatus(1382)
        """ State 2 """
        call = t310311_x16()
        assert GetEventStatus(1382) == 1

def t310311_x14():
    """ State 0,1 """
    assert t310311_x1()
    """ State 2 """
    return 0

def t310311_x15():
    """ State 0,2 """
    call = t310311_x25()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t310311_x10()

def t310311_x16():
    """ State 0 """

def t310311_x17(text5=31000300, text6=31000400, text7=31000500, flag4=73100360, flag5=73100361):
    """ State 0,2 """
    if not GetEventStatus(flag5):
        """ State 1 """
        if not GetEventStatus(flag4):
            """ State 3 """
            assert t310311_x4(text1=text5, z1=flag4, flag8=0, mode2=1)
        else:
            """ State 4 """
            assert t310311_x4(text1=text6, z1=flag5, flag8=0, mode2=1)
    else:
        """ State 5 """
        assert t310311_x5(text3=text7, flag7=0, mode1=1)
    """ State 6 """
    return 0

def t310311_x18(text4=_, z4=_, flag2=1396, flag3=1397):
    """ State 0,2 """
    call = t310311_x3(text4=text4, z4=z4, flag9=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t310311_x1()
    elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t310311_x19():
    """ State 0,1 """
    # talk:31003040:No sense in holding back now.
    assert t310311_x3(text4=31003040, z4=73100399, flag9=0, mode3=1)
    """ State 2 """
    return 0

def t310311_x20():
    """ State 0,1 """
    # talk:31003050:How did I ever let this happen...
    assert t310311_x5(text3=31003050, flag7=0, mode1=1)
    """ State 2 """
    return 0

def t310311_x21():
    """ State 0,1 """
    # talk:31003060:You were a poor match, friend...
    assert t310311_x5(text3=31003060, flag7=0, mode1=1)
    """ State 2 """
    return 0

def t310311_x22(text1=31000700, text2=31000710, text3=31000740, z1=73100363, z2=73100364, z3=73100365, flag1=50006210):
    """ State 0,1,2 """
    if not GetEventStatus(flag1):
        """ State 6 """
        assert t310311_x4(text1=text1, z1=z1, flag8=0, mode2=1)
        """ State 7 """
        # lot:62100:Siegbräu
        assert t310311_x6(lot1=62100)
    else:
        """ State 3 """
        pass
    """ State 8 """
    assert t310311_x4(text1=text2, z1=z2, flag8=0, mode2=1) and GetCurrentStateElapsedTime() > 1
    """ State 10 """
    assert t310311_x5(text3=text3, flag7=0, mode1=1)
    """ State 9 """
    assert t310311_x7(z5=33, z6=9034, flag6=6083)
    """ State 5 """
    SetEventState(z3, 1)
    """ State 11 """
    return 0

def t310311_x23():
    """ State 0,2 """
    if not GetEventStatus(73100366):
        """ State 1 """
        if not GetEventStatus(73100365):
            """ State 3 """
            # talk:31000700: , talk:31000710:To your valour, my sword, and our victory together., talk:31000740:Long may the sun shine!
            assert (t310311_x22(text1=31000700, text2=31000710, text3=31000740, z1=73100363, z2=73100364,
                    z3=73100365, flag1=50006210))
        else:
            """ State 4 """
            # talk:31000800:Well, I'm going to have myself a little nap.
            assert t310311_x4(text1=31000800, z1=73100366, flag8=0, mode2=1)
    else:
        """ State 5 """
        # talk:31000900: 
        assert t310311_x4(text1=31000900, z1=73100367, flag8=0, mode2=1)
        """ State 6 """
        assert t310311_x7(z5=32, z6=9033, flag6=6082)
    """ State 7 """
    return 0

def t310311_x24():
    """ State 0,2 """
    assert GetDistanceToPlayer() < 35
    """ State 3 """
    SetEventState(73100369, 1)
    # talk:31000600:No! You should have waited!
    call = t310311_x3(text4=31000600, z4=73100362, flag9=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 45 or GetEventStatus(73100370) == 1:
        """ State 4 """
        assert t310311_x1()
    """ State 1 """
    assert GetEventStatus(13100500) == 1
    """ State 5 """
    return 0

def t310311_x25():
    """ State 0,6 """
    while True:
        call = t310311_x0(z7=6000, flag10=1395, flag11=6000, flag12=6000, flag13=6000, flag14=6000)
        if call.Done():
            """ State 4 """
            call = t310311_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5 or not GetEventStatus(73100374):
                """ State 5 """
                Label('L0')
                assert t310311_x12() and GetDistanceToPlayer() < 4.9
            elif ((IsPlayerAttacking() == 1 and GetEventStatus(73100370) == 1) or (GetEventStatus(1396)
                  == 1 and not GetEventStatus(73100399))):
                """ State 2 """
                Label('L1')
                call = t310311_x9()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
                elif GetDistanceToPlayer() > 5:
                    Goto('L0')
        elif ((IsPlayerAttacking() == 1 and GetEventStatus(73100370) == 1) or (GetEventStatus(1396) ==
              1 and not GetEventStatus(73100399))):
            Goto('L1')
        elif IsPlayerDead() == 1 and GetEventStatus(73100370) == 1:
            break
        elif not GetEventStatus(73100370) and not GetEventStatus(73100369):
            """ State 7 """
            def ExitPause():
                RemoveMyAggro()
            assert t310311_x24()
        elif GetEventStatus(73100368) == 1 and GetDistanceToPlayer() < 24.5:
            """ State 8 """
            assert t310311_x26()
        elif not GetEventStatus(73100374) and GetEventStatus(1395) == 1:
            """ State 1 """
            if GetEventStatus(73100374) == 1 or not GetEventStatus(1395):
                pass
            elif ((IsPlayerAttacking() == 1 and GetEventStatus(73100370) == 1) or (GetEventStatus(1396)
                  == 1 and not GetEventStatus(73100399))):
                Goto('L1')
    """ State 3 """
    t310311_x11()

def t310311_x26():
    """ State 0,2 """
    # talk:31000010:Hmm...
    call = t310311_x5(text3=31000010, flag7=0, mode1=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 25:
        """ State 1 """
        assert t310311_x1()
    """ State 3 """
    return 0

