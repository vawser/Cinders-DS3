# -*- coding: utf-8 -*-
def t390310_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t390310_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t390310_x13()
        assert not IsClientPlayer()

def t390310_x0(z2=_, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
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
        elif CheckActionButtonArea(z2):
            break
    """ State 4 """
    return 0

def t390310_x1():
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

def t390310_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t390310_x3(text1=_, z1=_, flag7=0, mode3=1):
    """ State 0,5 """
    assert t390310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t390310_x4(text2=_, flag3=_, flag6=0, mode2=1):
    """ State 0,5 """
    assert t390310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag3, 1)
    """ State 6 """
    return 0

def t390310_x5(text4=_, flag5=0, mode1=1):
    """ State 0,4 """
    assert t390310_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t390310_x6(lot1=62130):
    """ State 0,1 """
    # lot:62130:Titanite Slab
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t390310_x7():
    """ State 0,1 """
    if not GetEventStatus(63900425):
        """ State 2 """
        assert t390310_x21()
    else:
        """ State 3 """
        assert t390310_x22()
    """ State 4 """
    return 0

def t390310_x8():
    """ State 0,16 """
    assert t390310_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1396) and not GetEventStatus(1397):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73900195):
                """ State 5,17 """
                # talk:31003300: 
                call = t390310_x17(text1=31003300, z1=73900195, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t390310_x18()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t390310_x1()
            elif not GetEventStatus(73900196):
                """ State 6,18 """
                # talk:31003310: 
                call = t390310_x17(text1=31003310, z1=73900196, flag1=1396, flag2=1397)
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
                call = t390310_x17(text1=31003330, z1=73900198, flag1=1396, flag2=1397)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif not GetEventStatus(73900197):
                """ State 11,19 """
                # talk:31003320:What is the meaning of this!
                call = t390310_x17(text1=31003320, z1=73900197, flag1=1396, flag2=1397)
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

def t390310_x9():
    """ State 0,1 """
    if GetEventStatus(1398) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t390310_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t390310_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t390310_x10():
    """ State 0,3 """
    if GetEventStatus(1396) == 1 or GetEventStatus(1397) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t390310_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t390310_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t390310_x11():
    """ State 0,1,3,4 """
    assert t390310_x1()
    """ State 5 """
    return 0

def t390310_x12():
    """ State 0,1 """
    while True:
        call = t390310_x14()
        assert not GetEventStatus(1386)
        """ State 2 """
        call = t390310_x15()
        assert GetEventStatus(1386) == 1

def t390310_x13():
    """ State 0,1 """
    assert t390310_x1()
    """ State 2 """
    return 0

def t390310_x14():
    """ State 0,2 """
    call = t390310_x23()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t390310_x9()

def t390310_x15():
    """ State 0 """

def t390310_x16(text2=31002200, text3=31002300, text4=31002400, flag3=73900150, flag4=73900151):
    """ State 0,2 """
    if not GetEventStatus(flag4):
        """ State 1 """
        if not GetEventStatus(flag3):
            """ State 3 """
            assert t390310_x4(text2=text2, flag3=flag3, flag6=0, mode2=1)
        else:
            """ State 4 """
            assert t390310_x4(text2=text3, flag3=flag4, flag6=0, mode2=1)
    else:
        """ State 5 """
        assert t390310_x5(text4=text4, flag5=0, mode1=1)
    """ State 6 """
    return 0

def t390310_x17(text1=_, z1=_, flag1=1396, flag2=1397):
    """ State 0,2 """
    call = t390310_x3(text1=text1, z1=z1, flag7=0, mode3=1)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t390310_x1()
    elif GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t390310_x18():
    """ State 0,1 """
    # talk:31003340:No sense in holding back now.
    assert t390310_x3(text1=31003340, z1=73900199, flag7=0, mode3=1)
    """ State 2 """
    return 0

def t390310_x19():
    """ State 0,1 """
    # talk:31003350:How did I ever let this happen...
    assert t390310_x5(text4=31003350, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t390310_x20():
    """ State 0,1 """
    # talk:31003360:You were a poor match, friend...
    assert t390310_x5(text4=31003360, flag5=0, mode1=1)
    """ State 2 """
    return 0

def t390310_x21():
    """ State 0,1 """
    # talk:31002200:Hmm..., talk:31002300:Hmm... Mmm..., talk:31002400:My liberation requires a key.
    assert t390310_x16(text2=31002200, text3=31002300, text4=31002400, flag3=73900150, flag4=73900151)
    """ State 2 """
    return 0

def t390310_x22():
    """ State 0,1 """
    if not GetEventStatus(73900152):
        """ State 2 """
        # talk:31002500:Ah! You are a saint!
        assert t390310_x4(text2=31002500, flag3=73900152, flag6=0, mode2=1)
        """ State 3 """
        # lot:62130:Titanite Slab
        assert t390310_x6(lot1=62130)
    else:
        """ State 4 """
        # talk:31002600:Ah, no, please, go on ahead.
        assert t390310_x5(text4=31002600, flag5=0, mode1=1)
    """ State 5 """
    return 0

def t390310_x23():
    """ State 0,1 """
    while Loop('mainloop'):
        if not GetEventStatus(63900425):
            """ State 7 """
            while True:
                call = t390310_x0(z2=6311, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
                if call.Done():
                    """ State 5 """
                    Label('L0')
                    call = t390310_x7()
                    if call.Done():
                        Continue('mainloop')
                    elif IsAttackedBySomeone() == 1:
                        """ State 3 """
                        Label('L1')
                        call = t390310_x8()
                        def ExitPause():
                            RemoveMyAggro()
                        if call.Done():
                            Continue('mainloop')
                        elif IsPlayerDead() == 1:
                            Break('mainloop')
                    elif IsPlayerDead() == 1:
                        Break('mainloop')
                    elif GetDistanceToPlayer() > 12:
                        """ State 6 """
                        call = t390310_x11()
                        if call.Done():
                            Continue('mainloop')
                        elif IsPlayerAttacking() == 1:
                            Goto('L1')
                elif IsPlayerDead() == 1:
                    Break('mainloop')
                elif GetEventStatus(63900425) == 1:
                    break
                elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73900199)):
                    Goto('L1')
                elif not GetEventStatus(73900155):
                    """ State 2 """
                    assert GetEventStatus(73900155) == 1
            """ State 8 """
            Label('L2')
            call = t390310_x0(z2=6000, flag8=1395, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
            if call.Done():
                Goto('L0')
            elif IsPlayerAttacking() == 1 or (GetEventStatus(1396) == 1 and not GetEventStatus(73900199)):
                Goto('L1')
            elif IsPlayerDead() == 1:
                break
        else:
            Goto('L2')
    """ State 4 """
    t390310_x10()

