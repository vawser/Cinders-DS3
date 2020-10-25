# -*- coding: utf-8 -*-
def t390311_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t390311_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t390311_x14()
        assert not IsClientPlayer()

def t390311_x0(z8=6000, flag7=1395, flag8=6000, flag9=6000, flag10=6000, flag11=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) ==
                1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag7) and not GetEventStatus(flag8) and not GetEventStatus(flag9) and
              not GetEventStatus(flag10) and not GetEventStatus(flag11)):
            pass
        elif CheckActionButtonArea(z8):
            break
    """ State 4 """
    return 0

def t390311_x1():
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

def t390311_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t390311_x3(text4=_, z5=_, flag6=0, mode3=1):
    """ State 0,5 """
    assert t390311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z5, 1)
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t390311_x4(text1=_, z1=_, flag5=0, mode2=1):
    """ State 0,5 """
    assert t390311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag5)
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

def t390311_x5(text3=_, flag4=0, mode1=1):
    """ State 0,4 """
    assert t390311_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t390311_x6(lot1=62105):
    """ State 0,1 """
    # lot:62105:Siegbräu
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t390311_x7(z6=33, z7=9034, flag3=6083):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z6)
        OpenItemAcquisitionMenu(3, z7, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t390311_x8():
    """ State 0,1 """
    if not GetEventStatus(73900163):
        """ State 2 """
        # talk:31002800: , talk:31002850:To your valour, and my old friend Yhorm., talk:31002880:Long may the sun shine!
        assert (t390311_x21(text1=31002800, text2=31002850, text3=31002880, z1=73900161, z2=73900162,
                z3=73900163, z4=50006212))
    else:
        """ State 3 """
        # talk:31002900:Well, I'm going to have myself a little nap.
        assert t390311_x4(text1=31002900, z1=73900164, flag5=0, mode2=1)
    """ State 4 """
    return 0

def t390311_x9():
    """ State 0,16 """
    assert t390311_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1396) and not GetEventStatus(1397):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73900195):
                """ State 5,17 """
                # talk:31003300: 
                call = t390311_x17(text4=31003300, z5=73900195, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t390311_x18()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t390311_x1()
            elif not GetEventStatus(73900196):
                """ State 6,18 """
                # talk:31003310: 
                call = t390311_x17(text4=31003310, z5=73900196, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif True:
                """ State 7,4 """
                SetEventState(73900195, 0)
                SetEventState(73900196, 0)
                SetEventState(73900197, 0)
                """ State 20 """
                # talk:31003330:What's happened to you!
                call = t390311_x17(text4=31003330, z5=73900198, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif not GetEventStatus(73900197):
                """ State 11,19 """
                # talk:31003320:What is the meaning of this!
                call = t390311_x17(text4=31003320, z5=73900197, flag1=1396, flag2=1397)
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
            if not GetEventStatus(73900199):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1396) and not GetEventStatus(1397):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t390311_x10():
    """ State 0,1 """
    if GetEventStatus(1398) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t390311_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t390311_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t390311_x11():
    """ State 0,3 """
    if GetEventStatus(1396) == 1 or GetEventStatus(1397) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t390311_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t390311_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t390311_x12():
    """ State 0,1,3,4 """
    assert t390311_x1()
    """ State 5 """
    return 0

def t390311_x13():
    """ State 0,1 """
    while True:
        call = t390311_x15()
        assert not GetEventStatus(1388) and not GetEventStatus(1389)
        """ State 2 """
        call = t390311_x16()
        assert GetEventStatus(1388) == 1 or GetEventStatus(1389) == 1

def t390311_x14():
    """ State 0,1 """
    assert t390311_x1()
    """ State 2 """
    return 0

def t390311_x15():
    """ State 0,2 """
    call = t390311_x22()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t390311_x10()

def t390311_x16():
    """ State 0 """

def t390311_x17(text4=_, z5=_, flag1=1396, flag2=1397):
    """ State 0,2 """
    call = t390311_x3(text4=text4, z5=z5, flag6=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t390311_x1()
    elif GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t390311_x18():
    """ State 0,1 """
    # talk:31003340:No sense in holding back now.
    assert t390311_x3(text4=31003340, z5=73900199, flag6=0, mode3=1)
    """ State 2 """
    return 0

def t390311_x19():
    """ State 0 """
    if GetEventStatus(9318) == 1:
        pass
    else:
        """ State 1 """
        # talk:31003400:Forgive me, old friend...
        assert t390311_x5(text3=31003400, flag4=0, mode1=1)
    """ State 2 """
    return 0

def t390311_x20():
    """ State 0,1 """
    # talk:31003360:You were a poor match, friend...
    assert t390311_x5(text3=31003360, flag4=0, mode1=1)
    """ State 2 """
    return 0

def t390311_x21(text1=31002800, text2=31002850, text3=31002880, z1=73900161, z2=73900162, z3=73900163,
                z4=50006212):
    """ State 0,1,2 """
    if not GetEventStatus(50006212):
        """ State 6 """
        assert t390311_x4(text1=text1, z1=z1, flag5=0, mode2=1)
        """ State 7 """
        # lot:62105:Siegbräu
        assert t390311_x6(lot1=62105)
    else:
        """ State 3 """
        pass
    """ State 8 """
    assert t390311_x4(text1=text2, z1=z2, flag5=0, mode2=1) and GetCurrentStateElapsedTime() > 1
    """ State 10 """
    assert t390311_x5(text3=text3, flag4=0, mode1=1)
    """ State 9 """
    assert t390311_x7(z6=33, z7=9034, flag3=6083)
    """ State 5 """
    SetEventState(z3, 1)
    """ State 11 """
    return 0

def t390311_x22():
    """ State 0,8 """
    while True:
        call = t390311_x0(z8=6000, flag7=1395, flag8=6000, flag9=6000, flag10=6000, flag11=6000)
        if call.Done():
            """ State 6 """
            call = t390311_x8()
            if (call.Done() and (GetEventStatus(9314) == 1 and GetEventStatus(73900164) == 1 and not
                GetEventStatus(711))):
                break
            elif call.Done():
                pass
            elif GetDistanceToPlayer() > 5 or not GetEventStatus(73900180):
                """ State 7 """
                Label('L0')
                assert t390311_x12() and GetDistanceToPlayer() < 4.9
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73900199)):
                """ State 4 """
                Label('L1')
                call = t390311_x9()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif GetDistanceToPlayer() > 5:
                    Goto('L0')
        elif GetEventStatus(9314) == 1 and GetEventStatus(73900164) == 1 and not GetEventStatus(711):
            break
        elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73900199)):
            Goto('L1')
        elif not GetEventStatus(9318) and GetEventStatus(13905810) == 1:
            """ State 9 """
            # talk:31002703: 
            assert t390311_x5(text3=31002703, flag4=0, mode1=1)
            """ State 1 """
            assert GetEventStatus(9318) == 1
        elif GetEventStatus(9318) == 1 and not GetEventStatus(73900180):
            """ State 2 """
            if not GetEventStatus(9318) or GetEventStatus(73900180) == 1:
                pass
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73900199)):
                Goto('L1')
            elif GetEventStatus(9314) == 1 and GetEventStatus(73900164) == 1 and not GetEventStatus(711):
                break
    """ State 3 """

