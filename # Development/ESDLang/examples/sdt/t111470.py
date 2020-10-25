# -*- coding: utf-8 -*-
def t111470_1():
    """ State 0,1 """
    t111470_x7(flag5=1939, flag6=1935, flag7=1936, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7004700, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0)

def t111470_1000():
    """ State 0,2 """
    assert t111470_x30()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111470_1101():
    """ State 0,2 """
    # talk:47030000:Ouch!, talk:47030100:S-Stop it, friend!, talk:47030200:Cut it out!, talk:47030300:That hurt, you bastard!
    assert (t111470_x29(text1=47030000, flag1=71100895, text2=47030100, flag2=71100896, text3=47030200,
            flag3=71100897, text4=47030300, flag4=71100898))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111470_1103():
    """ State 0,2 """
    # talk:47030400:I'm such an idiot...
    assert t111470_x5(text5=47030400, flag18=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t111470_x0(val6=7004700, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
               flag9=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111470_x28(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
                           mode7=mode7, flag9=flag9)
        if call.Done():
            break
        elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
              and not val7 == -1 and not f116(-1) == val10 and not f116(-1) == val11):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val7 or f116(-1) == val8 or f116(-1) == val9 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val10 and f116(-1) == val11))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val10 and not f116(-1) == val11):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t111470_x1():
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

def t111470_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111470_x3(text1=_, flag1=_, flag20=1, mode14=1):
    """ State 0,7 """
    assert t111470_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag20:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag20, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag20, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode14:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t111470_x4(text6=_, z2=_, flag19=0, mode13=1):
    """ State 0,7 """
    assert t111470_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag19:
        """ State 1 """
        TalkToPlayer(text6, -1, -1, flag19, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text6, -1, -1, flag19, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode13:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 8 """
    return 0

def t111470_x5(text5=_, flag18=_, mode12=1):
    """ State 0,6 """
    assert t111470_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag18:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag18, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag18, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode12:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111470_x6(lot1=64700):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    """ State 2 """
    while True:
        assert not IsMenuOpen(63) and GetCurrentStateElapsedTime() > 0.01
        """ State 3 """
        assert GetCurrentStateElapsedTime() > 0.01
        """ State 4 """
        if not IsMenuOpen(63):
            break
        else:
            pass
    """ State 5 """
    return 0

def t111470_x7(flag5=1939, flag6=1935, flag7=1936, val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7004700, flag9=6000, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t111470_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t111470_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t111470_x9(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t111470_x8(val1=12, val2=10, val3=12, val4=10, val5=12, flag8=6001, val6=7004700, flag9=6000, flag10=6001,
               flag11=6000, flag12=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t111470_x25(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t111470_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag12) == 1:
            Goto('L0')
        elif not GetEventStatus(flag8) and GetEventStatus(flag11) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t111470_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t111470_x12(val2=val2, val3=val3)

def t111470_x9(flag5=1939, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t111470_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t111470_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t111470_x10(val1=12, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t111470_x18(mode2=mode2, mode4=mode4)
    def WhilePaused():
        c1117(mode1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode3 == 1, 0.1)
        c5120(val1 == 1 and not mode1 and mode5 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t111470_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t111470_x14()
    """ State 4 """
    return 0

def t111470_x11(val5=12):
    """ State 0,1 """
    call = t111470_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t111470_x1()
    """ State 3 """
    return 0

def t111470_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t111470_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t111470_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t111470_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t111470_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t111470_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t111470_x1()
    """ State 4 """
    return 0

def t111470_x14():
    """ State 0,1 """
    assert t111470_x1()
    """ State 2 """
    return 0

def t111470_x15():
    """ State 0,2 """
    assert t111470_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111470_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t111470_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t111470_x1()

def t111470_x17():
    """ State 0,1 """
    assert t111470_x19(z1=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t111470_x18(mode2=1, mode4=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode2 == 1 and not mode4, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode2 == 1 and mode4 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t111470_x19(z1=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t111470_x19(z1=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z1) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z1)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t111470_x20():
    """ State 0,1 """
    call = t111470_x19(z1=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t111470_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t111470_x21():
    """ State 0,2 """
    call = t111470_x19(z1=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t111470_x22():
    """ State 0,1 """
    assert t111470_x19(z1=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t111470_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t111470_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t111470_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t111470_x13(val2=val2, val3=val3)

def t111470_x24():
    """ State 0,1 """
    assert t111470_x19(z1=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t111470_x25(val6=7004700, flag9=6000, flag10=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t111470_x19(z1=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t111470_x0(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t111470_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t111470_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t111470_x1()
    """ State 4 """
    return 0

def t111470_x27():
    """ State 0,1 """
    assert t111470_x19(z1=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t111470_x28(val6=7004700, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
                flag9=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag10) == 1 or GetEventStatus(flag14) == 1 or GetEventStatus(flag15)
                == 1 or GetEventStatus(flag16) == 1 or GetEventStatus(flag17) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag9)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag10) and not GetEventStatus(flag14) and not GetEventStatus(flag15)
                  and not GetEventStatus(flag16) and not GetEventStatus(flag17)):
                Continue('mainloop')
            elif GetEventStatus(flag9) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t111470_x29(text1=47030000, flag1=71100895, text2=47030100, flag2=71100896, text3=47030200, flag3=71100897,
                text4=47030300, flag4=71100898):
    """ State 0,3 """
    if ((text1 == -1 or GetEventStatus(flag1) == 1) and (text2 == -1 or GetEventStatus(flag2) == 1) and
        (text3 == -1 or GetEventStatus(flag3) == 1) and (text4 == -1 or GetEventStatus(flag4) == 1)):
        """ State 2 """
        SetEventState(flag1, 0)
        SetEventState(flag2, 0)
        SetEventState(flag3, 0)
        SetEventState(flag4, 0)
    else:
        pass
    """ State 1 """
    if not text1 == -1 and not GetEventStatus(flag1):
        """ State 4 """
        assert t111470_x3(text1=text1, flag1=flag1, flag20=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t111470_x3(text1=text2, flag1=flag2, flag20=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t111470_x3(text1=text3, flag1=flag3, flag20=1, mode14=1)
    else:
        """ State 7 """
        assert t111470_x3(text1=text4, flag1=flag4, flag20=1, mode14=1)
    """ State 8 """
    return 0

def t111470_x30():
    """ State 0,19 """
    if GetEventStatus(71100857) == 1:
        """ State 35 """
        if True:
            """ State 28 """
            Label('L0')
            """ State 55 """
            # talk:47010200:That's right.
            assert t111470_x5(text5=47010200, flag18=0, mode12=1)
            """ State 50 """
            assert t111470_x6(lot1=64700)
            """ State 37 """
            Label('L1')
            """ State 56 """
            # talk:47010210:See, I deal in information. It's how I make my living.
            assert t111470_x4(text6=47010210, z2=71100853, flag19=0, mode13=1)
            """ State 32 """
            SetEventState(71100857, 0)
            """ State 33 """
            Label('L2')
            SetEventState(71100850, 1)
            """ State 39 """
            Label('L3')
            SetEventState(71100859, 1)
        elif GetEventStatus(50006470) == 1:
            Goto('L1')
    elif GetEventStatus(71100858) == 1:
        """ State 34 """
        if GetEventStatus(50006470) == 1:
            """ State 36 """
            Label('L4')
            """ State 57 """
            # talk:47010310:See, I deal in information. It's how I make my living.
            assert t111470_x4(text6=47010310, z2=71100854, flag19=0, mode13=1)
            """ State 31 """
            SetEventState(71100858, 0)
            Goto('L2')
        else:
            """ State 27 """
            Label('L5')
            """ State 54 """
            # talk:47010300:...
            assert t111470_x5(text5=47010300, flag18=0, mode12=1)
            """ State 49 """
            assert t111470_x6(lot1=64700)
            Goto('L4')
    elif GetEventStatus(71100855) == 1:
        """ State 10 """
        Label('L6')
        """ State 45 """
        # talk:47010000:That's right.
        assert t111470_x4(text6=47010000, z2=71100853, flag19=0, mode13=1)
        """ State 14 """
        SetEventState(71100855, 0)
        """ State 15 """
        Label('L7')
        SetEventState(71100850, 1)
    elif GetEventStatus(71100856) == 1:
        """ State 9 """
        Label('L8')
        """ State 44 """
        # talk:47010100:...
        assert t111470_x4(text6=47010100, z2=71100854, flag19=0, mode13=1)
        """ State 13 """
        SetEventState(71100856, 0)
        Goto('L7')
    else:
        """ State 1 """
        if not GetEventStatus(71100899):
            """ State 2 """
            if not GetEventStatus(71100850):
                """ State 3,43 """
                # talk:47000000:You're not one of the samurai of this castle, are you, friend?
                assert t111470_x5(text5=47000000, flag18=0, mode12=1)
                """ State 5 """
                ClearTalkListData()
                """ State 6 """
                # action:14047000:Yes
                AddTalkListData(1, 14047000, -1)
                # action:14047001:Say nothing
                AddTalkListData(2, 14047001, -1)
                """ State 7 """
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 8 """
                if GetTalkListEntryResult() == 1:
                    """ State 12 """
                    SetEventState(71100855, 1)
                    Goto('L6')
                elif GetTalkListEntryResult() == 2:
                    """ State 11 """
                    SetEventState(71100856, 1)
                    Goto('L8')
                else:
                    pass
            else:
                """ State 16 """
                if GetEventStatus(71100854) == 1:
                    """ State 17,46 """
                    # talk:47000200:Oh, of course, I'll make it worth your while. We're making a deal, after all.
                    assert t111470_x5(text5=47000200, flag18=0, mode12=1)
                elif GetEventStatus(71100853) == 1:
                    """ State 18,47 """
                    # talk:47000100:Of course, I'll make it worth your while.
                    assert t111470_x5(text5=47000100, flag18=0, mode12=1)
                else:
                    pass
        else:
            """ State 4 """
            if not GetEventStatus(71100859):
                """ State 20 """
                if not GetEventStatus(71100850):
                    """ State 21,48 """
                    # talk:47000600:You're not one of the samurai of this castle, are you, friend?
                    assert t111470_x5(text5=47000600, flag18=0, mode12=1)
                    """ State 23 """
                    ClearTalkListData()
                    """ State 24 """
                    # action:14047000:Yes
                    AddTalkListData(1, 14047000, -1)
                    # action:14047001:Say nothing
                    AddTalkListData(2, 14047001, -1)
                    """ State 25 """
                    OpenConversationChoicesMenu(0)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 26 """
                    if GetTalkListEntryResult() == 1:
                        """ State 30 """
                        SetEventState(71100857, 1)
                        Goto('L0')
                    elif GetTalkListEntryResult() == 2:
                        """ State 29 """
                        SetEventState(71100858, 1)
                        Goto('L5')
                    else:
                        pass
                else:
                    """ State 22,38 """
                    if GetEventStatus(50006470) == 1:
                        pass
                    else:
                        """ State 52 """
                        # talk:47000300:You're a real friend, friend. I owe you.
                        assert t111470_x5(text5=47000300, flag18=0, mode12=1)
                        """ State 51 """
                        assert t111470_x6(lot1=64700)
                    """ State 53 """
                    # talk:47000310:See ya, pal.\nMaybe we'll cross paths again someday.
                    assert t111470_x5(text5=47000310, flag18=0, mode12=1)
                    Goto('L3')
            else:
                """ State 40 """
                if not GetEventStatus(71100860):
                    """ State 41,58 """
                    # talk:47000400:Yeah? You still need something?
                    assert t111470_x4(text6=47000400, z2=71100860, flag19=0, mode13=1)
                else:
                    """ State 42,59 """
                    # talk:47000500:Look friend, you're not gonna convince me.\nI don't do business in dangerous places.
                    assert t111470_x5(text5=47000500, flag18=0, mode12=1)
    """ State 60 """
    return 0

