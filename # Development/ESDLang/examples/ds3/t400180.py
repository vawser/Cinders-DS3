# -*- coding: utf-8 -*-
def t400180_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400180_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400180_x14()
        assert not IsClientPlayer()

def t400180_x0(z4=6180, flag10=1135, flag11=6000, flag12=6000, flag13=6000, flag14=6000):
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
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

def t400180_x1():
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

def t400180_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400180_x3(text5=_, z3=_, flag9=0, mode3=1):
    """ State 0,5 """
    assert t400180_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag9)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400180_x4(text1=_, flag1=_, flag8=0, mode2=1):
    """ State 0,5 """
    assert t400180_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(flag1, 1)
    """ State 6 """
    return 0

def t400180_x5(text2=_, flag7=0, mode1=1):
    """ State 0,4 """
    assert t400180_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400180_x6(lot1=60805):
    """ State 0,1 """
    # lot:60805:Blessed Mail Breaker
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400180_x7(z1=31, z2=9032, flag2=6081):
    """ State 0,1 """
    if GetEventStatus(flag2) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag2, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400180_x8():
    """ State 0 """
    if GetEventStatus(1121) == 1:
        """ State 5 """
        # talk:18000000:Mm, you're an Unkindled, aren't you., talk:18000100:I doubt we've much to gain from fraternisation.
        assert t400180_x17(text7=18000000, text8=18000100, flag6=74000750)
    elif GetEventStatus(1123) == 1:
        """ State 4 """
        # talk:18000200:Hello again., talk:18000300:If you should require assistance, use my sign.
        assert t400180_x24(text1=18000200, text2=18000300, flag1=74000751, z1=31, z2=9032, flag2=6081)
    elif GetEventStatus(1125) == 1:
        """ State 3 """
        # talk:18002500:Mm, I have not thanked you, for your generous rescue., talk:18002550:If you require help on your travels, I offer you my sign.
        assert t400180_x23(text3=18002500, text4=18002550, flag3=74000752)
    elif GetEventStatus(1127) == 1:
        """ State 1 """
        assert t400180_x22()
    elif GetEventStatus(1133) == 1:
        """ State 2 """
        # talk:18002600:Mm, I see that you are now a Finger of Rosaria., talk:18002700:Gentle Unkindled, I bid you farewell.
        assert t400180_x17(text7=18002600, text8=18002700, flag6=74000753)
    """ State 6 """
    return 0

def t400180_x9():
    """ State 0,16 """
    assert t400180_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1136) and not GetEventStatus(1137):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(74000795):
                """ State 5,17 """
                # talk:18001100: , talk:18001900: 
                call = t400180_x18(text5=18001100, z3=74000795, flag4=1136, flag5=1137, text6=18001900)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t400180_x19()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t400180_x1()
            elif not GetEventStatus(74000796):
                """ State 6,18 """
                # talk:18001210: , talk:18002000: 
                call = t400180_x18(text5=18001210, z3=74000796, flag4=1136, flag5=1137, text6=18002000)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            elif not GetEventStatus(74000797):
                """ State 11,19 """
                # talk:18001400:What are you doing?, talk:18002200:What's come over you!
                call = t400180_x18(text5=18001400, z3=74000797, flag4=1136, flag5=1137, text6=18002200)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
            else:
                """ State 7,4 """
                SetEventState(74000795, 0)
                SetEventState(74000796, 0)
                SetEventState(74000797, 0)
                """ State 20 """
                # talk:18001510:Cease this, at once!, talk:18002300:Please, stop this!
                call = t400180_x18(text5=18001510, z3=74000798, flag4=1136, flag5=1137, text6=18002300)
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
            if not GetEventStatus(74000799):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1136) and not GetEventStatus(1137):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t400180_x10():
    """ State 0,1 """
    if GetEventStatus(1138) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400180_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400180_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400180_x11():
    """ State 0,3 """
    if GetEventStatus(1136) == 1 or GetEventStatus(1137) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t400180_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t400180_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400180_x12():
    """ State 0,1,3,4 """
    assert t400180_x1()
    """ State 6 """
    return 0

def t400180_x13():
    """ State 0,1 """
    while True:
        call = t400180_x15()
        assert (not GetEventStatus(1121) and not GetEventStatus(1123) and not GetEventStatus(1125) and
                not GetEventStatus(1127) and not GetEventStatus(1133))
        """ State 2 """
        call = t400180_x16()
        assert (GetEventStatus(1121) == 1 or GetEventStatus(1123) == 1 or GetEventStatus(1125) == 1 or
                GetEventStatus(1127) == 1 or GetEventStatus(1133) == 1)

def t400180_x14():
    """ State 0,1 """
    assert t400180_x1()
    """ State 2 """
    return 0

def t400180_x15():
    """ State 0,2 """
    call = t400180_x25()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400180_x10()

def t400180_x16():
    """ State 0 """

def t400180_x17(text7=_, text8=_, flag6=_):
    """ State 0,1 """
    if not GetEventStatus(flag6):
        """ State 2 """
        assert t400180_x4(text1=text7, flag1=flag6, flag8=0, mode2=1)
    else:
        """ State 3 """
        assert t400180_x5(text2=text8, flag7=0, mode1=1)
    """ State 4 """
    return 0

def t400180_x18(text5=_, z3=_, flag4=1136, flag5=1137, text6=_):
    """ State 0,1 """
    if not GetEventStatus(1127):
        """ State 3 """
        call = t400180_x3(text5=text5, z3=z3, flag9=0, mode3=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 2 """
            Label('L0')
            assert t400180_x1()
        elif GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1:
            """ State 6 """
            Label('L1')
            return 1
    else:
        """ State 4 """
        call = t400180_x3(text5=text6, z3=z3, flag9=0, mode3=1)
        if call.Done():
            pass
        elif GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1:
            Goto('L1')
        elif GetDistanceToPlayer() > 12:
            Goto('L0')
    """ State 5 """
    return 0

def t400180_x19():
    """ State 0,1 """
    if not GetEventStatus(73500150):
        """ State 2 """
        # talk:18001600:You've been clean Hollowed, have you?
        assert t400180_x3(text5=18001600, z3=74000799, flag9=0, mode3=1)
    else:
        """ State 3 """
        # talk:18002800:Yes, I see, an arrant Finger you've become.
        assert t400180_x3(text5=18002800, z3=74000799, flag9=0, mode3=1)
    """ State 4 """
    return 0

def t400180_x20():
    """ State 0,1 """
    if not GetEventStatus(1127):
        """ State 2 """
        # talk:18001710: 
        assert t400180_x5(text2=18001710, flag7=0, mode1=1)
    else:
        """ State 3 """
        # talk:18002400: 
        assert t400180_x5(text2=18002400, flag7=0, mode1=1)
    """ State 4 """
    return 0

def t400180_x21():
    """ State 0,1 """
    if not GetEventStatus(73500150):
        """ State 2 """
        # talk:18001810:Wretched Hollow. Your long sleep begins...
        assert t400180_x5(text2=18001810, flag7=0, mode1=1)
    else:
        """ State 3 """
        # talk:18002900:You poor bastard. May you rest soundly.
        assert t400180_x5(text2=18002900, flag7=0, mode1=1)
    """ State 4 """
    return 0

def t400180_x22():
    """ State 0,1 """
    if not GetEventStatus(74000755):
        """ State 2 """
        if not GetEventStatus(74000754):
            """ State 8 """
            # talk:18000600:Oh, there you are.
            assert t400180_x5(text2=18000600, flag7=0, mode1=1)
        else:
            """ State 9 """
            # talk:18001000:Oh, hello again. May I avow myself to you?
            assert t400180_x5(text2=18001000, flag7=0, mode1=1)
        """ State 4 """
        ClearTalkListData()
        """ State 3 """
        # action:14008000:Accept her knightly vow
        AddTalkListData(1, 14008000, -1)
        # action:14008001:Refuse
        AddTalkListData(2, 14008001, -1)
        """ State 5 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 10 """
            # talk:18000700:Oh, I am most grateful.
            assert t400180_x4(text1=18000700, flag1=74000755, flag8=0, mode2=1)
            """ State 6 """
            SetEventState(74000756, 0)
        elif GetTalkListEntryResult() == 2:
            """ State 11 """
            # talk:18000900:Yes, of course.
            assert t400180_x4(text1=18000900, flag1=74000754, flag8=0, mode2=1)
            """ State 7 """
            SetEventState(74000756, 1)
        elif not GetTalkListEntryResult():
            pass
    else:
        """ State 12 """
        # talk:18000800:If I may ever be of assistance, call upon me.
        assert t400180_x5(text2=18000800, flag7=0, mode1=1)
    """ State 13 """
    return 0

def t400180_x23(text3=18002500, text4=18002550, flag3=74000752):
    """ State 0,1 """
    if not GetEventStatus(flag3):
        """ State 2 """
        assert t400180_x4(text1=text3, flag1=flag3, flag8=0, mode2=1)
        """ State 4 """
        # lot:60805:Blessed Mail Breaker
        assert t400180_x6(lot1=60805)
        """ State 5 """
        assert t400180_x5(text2=text4, flag7=0, mode1=1)
    else:
        """ State 3 """
        assert t400180_x5(text2=text4, flag7=0, mode1=1)
    """ State 6 """
    return 0

def t400180_x24(text1=18000200, text2=18000300, flag1=74000751, z1=31, z2=9032, flag2=6081):
    """ State 0,1 """
    if not GetEventStatus(flag1):
        """ State 2 """
        assert t400180_x4(text1=text1, flag1=flag1, flag8=0, mode2=1)
    else:
        """ State 3 """
        assert t400180_x5(text2=text2, flag7=0, mode1=1)
    """ State 4 """
    assert t400180_x7(z1=z1, z2=z2, flag2=flag2)
    """ State 5 """
    return 0

def t400180_x25():
    """ State 0,5 """
    while True:
        call = t400180_x0(z4=6180, flag10=1135, flag11=6000, flag12=6000, flag13=6000, flag14=6000)
        if call.Done():
            """ State 3 """
            call = t400180_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400180_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t400180_x9()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1136) == 1 and not GetEventStatus(74000799)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1136) == 1 and not GetEventStatus(74000799)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400180_x11()

