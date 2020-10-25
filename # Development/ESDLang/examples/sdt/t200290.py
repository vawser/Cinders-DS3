# -*- coding: utf-8 -*-
def t200290_1():
    """ State 0,1 """
    t200290_x16(flag5=1379, flag6=1375, flag7=1376, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6000,
                val6=7002901, flag9=6000, flag10=6001, flag11=71110119, flag12=6000, mode1=1, val7=1000000,
                val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000,
                mode5=0, flag13=72000102, mode6=0)

def t200290_1000():
    """ State 0,2 """
    assert t200290_x4()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200290_1100():
    """ State 0,2 """
    assert t200290_x0()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200290_1101():
    """ State 0,2 """
    assert t200290_x1()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200290_1103():
    """ State 0,2 """
    assert t200290_x2()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200290_x0():
    """ State 0,3 """
    assert t200290_x8()
    """ State 1 """
    ClearPlayerDamageInfo()
    call = t200290_x6()
    def WhilePaused():
        c1117(1, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c1128(0.1)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 2 """
        assert t200290_x24()
    """ State 4 """
    return 0

def t200290_x1():
    """ State 0,1 """
    # talk:29030000:    , talk:29030100:   , talk:29030200:Please stop..., talk:29030300:What are you doing?!
    assert (t200290_x35(text10=29030000, flag18=71110140, text11=29030100, flag19=71110141, text12=29030200,
            flag20=71110142, text13=29030300))
    """ State 2 """
    return 0

def t200290_x2():
    """ State 0,1 """
    # talk:29030400:    
    assert t200290_x14(text1=29030400, flag23=1, mode14=1)
    """ State 2 """
    return 0

def t200290_x3():
    """ State 0,1 """
    # talk:29900000:(Wheezing), talk:29900100:(Wheezing), talk:29900150:Argh..., talk:29910003:You'll be better in no time., talk:29900700:I'm taking a blood sample., talk:29900750:... Now to bring this to Lady Emma., talk:29910100:........., talk:29910000:Drink this..., talk:29900200:Thank heavens... Thank heavens..., goods:9516:Rot Essence: Faithful One
    call = t200290_x39(text1=29900000, text2=29900100, text3=29900150, text4=29910003, text5=29900700,
                       text6=29900750, text7=29910100, text8=29910000, text9=29900200, flag1=70002020,
                       flag2=72000119, flag3=72000131, flag4=72000126, z1=72000130, z2=72000129, z3=72000121,
                       z4=72000120, goods1=9516)
    def WhilePaused():
        c1117(1111004, -1)
    if call.Get() == 0:
        """ State 3 """
        return 1
    elif call.Done():
        """ State 2 """
        return 0

def t200290_x4():
    """ State 0,6 """
    call = t200290_x3()
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 12 """
        call = t200290_x7(mode12=1)
        if call.Get() == 1:
            """ State 11 """
            # goods:3080:Rice
            call = t200290_x5(mode13=1, goods2=3080, flag21=72000134, flag22=72000135)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 1 """
                if GetEventStatus(1363) == 1:
                    """ State 3,8 """
                    SetEventState(72000102, 1)
                    # talk:29000700:The fresh and dried fruits -- did she eat them?
                    def ExitPause():
                        c511(not f116(-1) == 1111001, 72000102, 0)
                    assert t200290_x14(text1=29000700, flag23=0, mode14=1)
                else:
                    """ State 2 """
                    if not GetEventStatus(72000100):
                        """ State 4,7 """
                        # talk:29000400:Ah, fruits of the serpent, yes... There are two kinds.
                        assert t200290_x14(text1=29000400, flag23=0, mode14=1)
                        """ State 9 """
                        # goods:3080:Rice
                        assert t200290_x5(mode13=0, goods2=3080, flag21=72000134, flag22=72000135)
                    else:
                        """ State 5,10 """
                        # talk:29010006:Ahhhh.... (murmuring in sleep)
                        assert t200290_x14(text1=29010006, flag23=0, mode14=1)
        elif call.Done():
            pass
    """ State 13 """
    return 0

def t200290_x5(mode13=_, goods2=3080, flag21=72000134, flag22=72000135):
    """ State 0,5 """
    if not mode13:
        """ State 7,1 """
        c1110()
        ClearTalkListData()
        # goods:3080:Rice
        if ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1:
            """ State 2 """
            # action:14029000:Give Rice
            AddTalkListData(1, 14029000, 6001)
            # action:14029001:Keep Rice
            AddTalkListData(2, 14029001, 6001)
        else:
            """ State 13 """
            # action:14029002:Do nothing
            AddTalkListData(2, 14029002, 6001)
        """ State 3 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            """ State 14 """
            # goods:3080:Rice
            PlayerEquipmentQuantityChange(3, goods2, -1)
            """ State 4 """
            Label('L0')
            """ State 10 """
            SetEventState(flag21, 1)
            """ State 15 """
            # talk:29010000:... here's some rice.
            assert t200290_x13(text14=29010000, z6=72000100, flag24=0, mode15=1)
            """ State 12 """
            Label('L1')
            SetEventState(flag21, 0)
            SetEventState(flag22, 0)
            SetEventState(72000101, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            Label('L2')
            """ State 11 """
            SetEventState(flag22, 1)
            """ State 16 """
            # talk:29010100:.........
            assert t200290_x14(text1=29010100, flag23=0, mode14=1)
            Goto('L1')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 9 """
            pass
    else:
        """ State 6 """
        if GetEventStatus(flag21) == 1:
            Goto('L0')
        elif GetEventStatus(flag22) == 1:
            Goto('L2')
        else:
            """ State 18 """
            return 1
    """ State 17 """
    return 0

def t200290_x6():
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
        assert t200290_x7(mode12=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200290_x7(mode12=_):
    """ State 0,11 """
    if mode12 == 1:
        """ State 13 """
        if GetEventStatus(71110136) == 1:
            """ State 14 """
            if not GetEventStatus(50006290):
                """ State 3 """
                Label('L0')
                """ State 21 """
                # talk:29001100:That's right, yes that's the way... That's how one prays.
                assert t200290_x14(text1=29001100, flag23=0, mode14=1)
                """ State 26 """
                assert t200290_x15(lot1=62900)
                """ State 6 """
                if not GetEventStatus(50006291) and GetEventStatus(71110137) == 1:
                    """ State 7 """
                    Label('L1')
                    """ State 27 """
                    # talk:29001201:Such a good, pious temperament. I offer this to you.
                    assert t200290_x14(text1=29001201, flag23=0, mode14=1)
                    """ State 25 """
                    Label('L2')
                    assert t200290_x15(lot1=62910)
                    """ State 9 """
                    if not GetEventStatus(50006292) and GetEventStatus(71110138) == 1:
                        """ State 8 """
                        Label('L3')
                        """ State 28 """
                        # talk:29001301:Lastly, I offer this to you.
                        assert t200290_x14(text1=29001301, flag23=0, mode14=1)
                        """ State 24 """
                        Label('L4')
                        assert t200290_x15(lot1=62920)
                        """ State 20 """
                        Label('L5')
                        # talk:29001350:If only someone like you could stand with the Divine Child...
                        assert t200290_x14(text1=29001350, flag23=0, mode14=1)
                        Goto('L9')
                    else:
                        Goto('L9')
                else:
                    Goto('L9')
            elif GetEventStatus(71110137) == 1 and not GetEventStatus(50006291):
                Goto('L1')
            elif GetEventStatus(71110138) == 1 and not GetEventStatus(50006292):
                Goto('L3')
            elif GetEventStatus(71110138) == 1 and GetEventStatus(50006292) == 1:
                Goto('L5')
            else:
                pass
        elif GetEventStatus(71110137) == 1:
            """ State 15 """
            if not GetEventStatus(50006291):
                """ State 4 """
                Label('L6')
                """ State 22 """
                # talk:29001200:Yes, yes... Pray as much as you please.
                assert t200290_x14(text1=29001200, flag23=0, mode14=1)
                Goto('L2')
            elif GetEventStatus(71110138) == 1 and not GetEventStatus(50006292):
                Goto('L3')
            elif GetEventStatus(71110138) == 1 and GetEventStatus(50006292) == 1:
                Goto('L5')
            else:
                pass
        elif GetEventStatus(71110138) == 1:
            """ State 16 """
            if not GetEventStatus(50006292):
                """ State 5 """
                Label('L7')
                """ State 23 """
                # talk:29001300:Yes, very good... What devotion.
                assert t200290_x14(text1=29001300, flag23=0, mode14=1)
                Goto('L4')
            else:
                Goto('L5')
        elif GetEventStatus(71110139) == 1:
            """ State 17,2 """
            Label('L8')
            """ State 19 """
            # talk:29001400:Yes, very good... What devotion.
            assert t200290_x14(text1=29001400, flag23=0, mode14=1)
            Goto('L9')
        else:
            pass
        """ State 18 """
        SetEventState(71110136, 0)
        SetEventState(71110137, 0)
        SetEventState(71110138, 0)
        SetEventState(71110139, 0)
        """ State 30 """
        return 1
    else:
        """ State 12,1 """
        if not GetEventStatus(50006290) and GetEventStatus(71110136) == 1:
            Goto('L0')
        elif not GetEventStatus(50006291) and GetEventStatus(71110137) == 1:
            Goto('L6')
        elif not GetEventStatus(50006292) and GetEventStatus(71110138) == 1:
            Goto('L7')
        else:
            Goto('L8')
    """ State 10 """
    Label('L9')
    SetEventState(71110136, 0)
    SetEventState(71110137, 0)
    SetEventState(71110138, 0)
    SetEventState(71110139, 0)
    """ State 29 """
    return 0

def t200290_x8():
    """ State 0,1 """
    if not GetEventStatus(50006290) and not GetEventStatus(71110136):
        """ State 2,6 """
        SetEventState(71110136, 1)
    elif not GetEventStatus(50006291) and not GetEventStatus(71110137):
        """ State 3,7 """
        SetEventState(71110137, 1)
    elif not GetEventStatus(50006292) and not GetEventStatus(71110138):
        """ State 4,8 """
        SetEventState(71110138, 1)
    else:
        """ State 5,9 """
        SetEventState(71110139, 1)
    """ State 10 """
    return 0

def t200290_x9(val6=7002901, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
               flag9=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200290_x38(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
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

def t200290_x10():
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

def t200290_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200290_x12(text10=_, flag18=_, flag25=1, mode16=1):
    """ State 0,7 """
    assert t200290_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag18, 1)
    """ State 6 """
    if not flag25:
        """ State 1 """
        TalkToPlayer(text10, -1, -1, flag25, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text10, -1, -1, flag25, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode16:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t200290_x13(text14=29010000, z6=72000100, flag24=0, mode15=1):
    """ State 0,7 """
    assert t200290_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag24:
        """ State 1 """
        # talk:29010000:... here's some rice.
        TalkToPlayer(text14, -1, -1, flag24, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:29010000:... here's some rice.
        TalkToPlayer(text14, -1, -1, flag24, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode15:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z6, 1)
    """ State 8 """
    return 0

def t200290_x14(text1=_, flag23=_, mode14=1):
    """ State 0,6 """
    assert t200290_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag23:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag23, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag23, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode14:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t200290_x15(lot1=_):
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

def t200290_x16(flag5=1379, flag6=1375, flag7=1376, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6000,
                val6=7002901, flag9=6000, flag10=6001, flag11=71110119, flag12=6000, mode1=1, val7=1000000,
                val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000,
                mode5=0, flag13=72000102, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200290_x17(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                           flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode1=mode1, val7=val7,
                           val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10,
                           val11=val11, mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t200290_x32(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t200290_x18(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t200290_x17(val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6000, val6=7002901, flag9=6000, flag10=6001,
                flag11=71110119, flag12=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
                mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t200290_x34(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200290_x19(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t200290_x20(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200290_x21(val2=val2, val3=val3)

def t200290_x18(flag5=1379, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200290_x29()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200290_x10()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200290_x19(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200290_x27(mode2=mode2, mode4=mode4)
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
        assert t200290_x24()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200290_x23()
    """ State 4 """
    return 0

def t200290_x20(val5=12):
    """ State 0,1 """
    call = t200290_x33()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200290_x10()
    """ State 3 """
    return 0

def t200290_x21(val2=10, val3=12):
    """ State 0,4 """
    assert t200290_x10() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200290_x26()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200290_x10()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200290_x22(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200290_x31()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200290_x10()
    """ State 4 """
    return 0

def t200290_x23():
    """ State 0,1 """
    assert t200290_x10()
    """ State 2 """
    return 0

def t200290_x24():
    """ State 0,2 """
    assert t200290_x10()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200290_x25(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200290_x30()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200290_x10()

def t200290_x26():
    """ State 0,1 """
    assert t200290_x28(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200290_x27(mode2=1, mode4=0):
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
        assert t200290_x28(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200290_x28(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
    """ State 0,4 """
    if f118(z5) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z5)
        assert f117() == mode8 or f117() == mode9 or f117() == mode10 or f117() == mode11
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t200290_x29():
    """ State 0,1 """
    call = t200290_x28(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200290_x10()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200290_x30():
    """ State 0,2 """
    call = t200290_x28(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200290_x31():
    """ State 0,1 """
    assert t200290_x28(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200290_x32(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200290_x25(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200290_x36(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200290_x22(val2=val2, val3=val3)

def t200290_x33():
    """ State 0,1 """
    assert t200290_x28(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200290_x34(val6=7002901, flag9=6000, flag10=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200290_x28(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200290_x9(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200290_x35(text10=29030000, flag18=71110140, text11=29030100, flag19=71110141, text12=29030200,
                flag20=71110142, text13=29030300):
    """ State 0,1 """
    if not text10 == -1 and not GetEventStatus(flag18):
        """ State 3 """
        assert t200290_x12(text10=text10, flag18=flag18, flag25=1, mode16=1)
    elif not text11 == -1 and not GetEventStatus(flag19):
        """ State 4 """
        assert t200290_x12(text10=text11, flag18=flag19, flag25=1, mode16=1)
    elif not text12 == -1 and not GetEventStatus(flag20):
        """ State 5 """
        assert t200290_x12(text10=text12, flag18=flag20, flag25=1, mode16=1)
    else:
        """ State 2 """
        SetEventState(flag18, 0)
        SetEventState(flag19, 0)
        SetEventState(flag20, 0)
        """ State 6 """
        assert t200290_x14(text1=text13, flag23=1, mode14=1)
    """ State 7 """
    return 0

def t200290_x36(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200290_x37()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200290_x10()
    """ State 4 """
    return 0

def t200290_x37():
    """ State 0,1 """
    assert t200290_x28(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200290_x38(val6=7002901, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
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

def t200290_x39(text1=29900000, text2=29900100, text3=29900150, text4=29910003, text5=29900700, text6=29900750,
                text7=29910100, text8=29910000, text9=29900200, flag1=70002020, flag2=72000119, flag3=72000131,
                flag4=72000126, z1=72000130, z2=72000129, z3=72000121, z4=72000120, goods1=9516):
    """ State 0,43 """
    if GetEventStatus(flag3) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t200290_x14(text1=text5, flag23=0, mode14=1)
            """ State 48 """
            SetEventState(flag4, 1)
            """ State 58 """
            assert t200290_x15(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t200290_x14(text1=text6, flag23=0, mode14=1)
            """ State 23 """
            SetEventState(flag3, 0)
        else:
            """ State 45,47 """
            if GetEventStatus(flag4) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag3, 0)
                """ State 1 """
                Label('L2')
                if GetEventStatus(flag1) == 1:
                    """ State 2,12 """
                    if not GetEventStatus(flag2):
                        """ State 50 """
                        if not GetEventStatus(70004000):
                            """ State 3,55 """
                            assert t200290_x14(text1=text1, flag23=0, mode14=1)
                        else:
                            """ State 4,56 """
                            assert t200290_x14(text1=text2, flag23=0, mode14=1)
                    else:
                        """ State 52,64 """
                        assert t200290_x14(text1=text3, flag23=0, mode14=1)
                    """ State 51 """
                    if not GetEventStatus(70004001):
                        """ State 53,5 """
                        c1110()
                        """ State 6 """
                        ClearTalkListData()
                        """ State 7 """
                        # action:14000003:Do nothing
                        AddTalkListData(2, 14000003, -1)
                        """ State 8 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 9,10 """
                    else:
                        """ State 11 """
                        if not GetEventStatus(50006990):
                            """ State 14,17 """
                            ClearTalkListData()
                            """ State 18 """
                            # action:14000002:Take coughed up blood sample
                            AddTalkListData(1, 14000002, -1)
                            # action:14000003:Do nothing
                            AddTalkListData(2, 14000003, -1)
                            """ State 19 """
                            OpenConversationChoicesMenu(0)
                            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                            """ State 20 """
                            if GetTalkListEntryResult() == 1:
                                """ State 24 """
                                SetEventState(flag3, 1)
                                Goto('L0')
                            else:
                                """ State 22 """
                                pass
                        else:
                            """ State 15 """
                            """ State 13 """
                            pass
                else:
                    """ State 39,40,66 """
                    return 1
    else:
        Goto('L2')
    """ State 54 """
    SetEventState(flag2, 1)
    """ State 65 """
    return 0

