# -*- coding: utf-8 -*-
def t370310_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370310_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370310_x14()
        assert not IsClientPlayer()

def t370310_x0(z7=6000, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) ==
                1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag8) and not GetEventStatus(flag9) and not GetEventStatus(flag10)
              and not GetEventStatus(flag11) and not GetEventStatus(flag12)):
            pass
        elif CheckActionButtonArea(z7):
            break
    """ State 4 """
    return 0

def t370310_x1():
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

def t370310_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370310_x3(text4=_, z4=_, flag7=0, mode3=1):
    """ State 0,5 """
    assert t370310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t370310_x4(text1=_, flag1=_, flag6=0, mode2=1):
    """ State 0,5 """
    assert t370310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    return 0

def t370310_x5(text3=_, flag5=0, mode1=1):
    """ State 0,4 """
    assert t370310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t370310_x6(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t370310_x7(z5=_, z6=_, flag4=_):
    """ State 0,1 """
    if GetEventStatus(flag4) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z5)
        OpenItemAcquisitionMenu(3, z6, 1)
        SetEventState(flag4, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t370310_x8():
    """ State 0,2 """
    if not GetEventStatus(73700201):
        """ State 1,3 """
        if DoesSelfHaveSpEffect(152) == 1:
            """ State 8 """
            # talk:31001700: 
            assert t370310_x5(text3=31001700, flag5=0, mode1=1) and GetCurrentStateElapsedTime() > 1
        else:
            pass
        """ State 7 """
        # talk:31001750:Ah, ohh!
        assert t370310_x4(text1=31001750, flag1=73700201, flag6=0, mode2=1)
        """ State 5 """
        # lot:62120:Emit Force
        assert t370310_x6(lot1=62120)
    else:
        """ State 6 """
        assert t370310_x22()
    """ State 9 """
    return 0

def t370310_x9():
    """ State 0,16 """
    assert t370310_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1396) and not GetEventStatus(1397):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73700245):
                """ State 5,17 """
                # talk:31003200: 
                call = t370310_x17(text4=31003200, z4=73700245, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t370310_x18()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t370310_x1()
            elif not GetEventStatus(73700246):
                """ State 6,18 """
                # talk:31003210: 
                call = t370310_x17(text4=31003210, z4=73700246, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif True:
                """ State 7,4 """
                SetEventState(73700245, 0)
                SetEventState(73700246, 0)
                SetEventState(73700247, 0)
                """ State 20 """
                # talk:31003230:What's happened to you!
                call = t370310_x17(text4=31003230, z4=73700248, flag2=1396, flag3=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif not GetEventStatus(73700247):
                """ State 11,19 """
                # talk:31003220:What is the meaning of this!
                call = t370310_x17(text4=31003220, z4=73700247, flag2=1396, flag3=1397)
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
            if not GetEventStatus(73700249):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1396) and not GetEventStatus(1397):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t370310_x10():
    """ State 0,1 """
    if GetEventStatus(1398) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t370310_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t370310_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t370310_x11():
    """ State 0,3 """
    if GetEventStatus(1396) == 1 or GetEventStatus(1397) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t370310_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t370310_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t370310_x12():
    """ State 0,1,3,4 """
    assert t370310_x1()
    """ State 5 """
    return 0

def t370310_x13():
    """ State 0,1 """
    while True:
        call = t370310_x15()
        assert not GetEventStatus(1385)
        """ State 2 """
        call = t370310_x16()
        assert GetEventStatus(1385) == 1

def t370310_x14():
    """ State 0,1 """
    assert t370310_x1()
    """ State 2 """
    return 0

def t370310_x15():
    """ State 0,2 """
    call = t370310_x23()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370310_x10()

def t370310_x16():
    """ State 0 """

def t370310_x17(text4=_, z4=_, flag2=1396, flag3=1397):
    """ State 0,2 """
    call = t370310_x3(text4=text4, z4=z4, flag7=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t370310_x1()
    elif GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t370310_x18():
    """ State 0,1 """
    # talk:31003240:No sense in holding back now.
    assert t370310_x3(text4=31003240, z4=73700249, flag7=0, mode3=1)
    """ State 2 """
    return 0

def t370310_x19():
    """ State 0,1 """
    # talk:31003250:How did I ever let this happen...
    assert t370310_x5(text3=31003250, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t370310_x20():
    """ State 0,1 """
    # talk:31003260:You were a poor match, friend...
    assert t370310_x5(text3=31003260, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t370310_x21(text1=31001800, text2=31001810, text3=31001840, flag1=73700202, z1=73700203, z2=73700204,
                z3=50006211):
    """ State 0,1,2 """
    if not GetEventStatus(flag1):
        """ State 6 """
        assert t370310_x4(text1=text1, flag1=flag1, flag6=0, mode2=1)
        """ State 7 """
        # lot:62103:Siegbräu
        assert t370310_x6(lot1=62103)
    else:
        """ State 3 """
        pass
    """ State 8 """
    assert t370310_x4(text1=text2, flag1=z1, flag6=0, mode2=1) and GetCurrentStateElapsedTime() > 1
    """ State 10 """
    assert t370310_x5(text3=text3, flag5=0, mode1=1)
    """ State 9 """
    assert t370310_x7(z5=33, z6=9034, flag4=6083)
    """ State 5 """
    SetEventState(z2, 1)
    """ State 11 """
    return 0

def t370310_x22():
    """ State 0,3 """
    if not GetEventStatus(73700206):
        """ State 2 """
        if not GetEventStatus(73700205):
            """ State 1 """
            if not GetEventStatus(73700204):
                """ State 4 """
                # talk:31001800:I know. Won't you join me for dinner?, talk:31001810:To your valour, my sword, and our sworn duties!, talk:31001840:Long may the sun shine!
                assert (t370310_x21(text1=31001800, text2=31001810, text3=31001840, flag1=73700202, z1=73700203,
                        z2=73700204, z3=50006211))
            else:
                """ State 5 """
                # talk:31001900:Have you heard?
                assert t370310_x4(text1=31001900, flag1=73700205, flag6=0, mode2=1)
        else:
            """ State 8 """
            # talk:31002000:Oh, sorry, I'm afraid I've cast a cloud over things.
            assert t370310_x4(text1=31002000, flag1=73700206, flag6=0, mode2=1)
    else:
        """ State 6 """
        # talk:31002100: 
        assert t370310_x4(text1=31002100, flag1=73700206, flag6=0, mode2=1)
        """ State 7 """
        assert t370310_x7(z5=32, z6=9033, flag4=6082)
    """ State 9 """
    return 0

def t370310_x23():
    """ State 0,6 """
    while True:
        call = t370310_x0(z7=6000, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
        if call.Done():
            """ State 4 """
            call = t370310_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5 or not GetEventStatus(73700211):
                """ State 5 """
                Label('L0')
                assert t370310_x12() and GetDistanceToPlayer() < 4.9
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and GetEventStatus(73700249) == 1):
                """ State 2 """
                Label('L1')
                call = t370310_x9()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
        elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and GetEventStatus(73700249) == 1):
            Goto('L1')
        elif IsPlayerDead() == 1:
            break
        elif not GetEventStatus(73700200) and GetDistanceToPlayer() < 7:
            """ State 7 """
            call = t370310_x24()
            if call.Done():
                pass
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and GetEventStatus(73700249) == 1):
                Goto('L1')
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 12:
                Goto('L0')
        elif not GetEventStatus(73700211) and GetEventStatus(1395) == 1:
            """ State 1 """
            if GetEventStatus(73700211) == 1 or not GetEventStatus(1395):
                pass
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and GetEventStatus(73700249) == 1):
                Goto('L1')
    """ State 3 """
    t370310_x11()

def t370310_x24():
    """ State 0,1 """
    # talk:31001600: 
    assert t370310_x3(text4=31001600, z4=73700200, flag7=0, mode3=1)
    """ State 2 """
    return 0

