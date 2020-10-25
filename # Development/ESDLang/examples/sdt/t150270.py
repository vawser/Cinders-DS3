# -*- coding: utf-8 -*-
def t150270_1():
    """ State 0,1 """
    t150270_x7(flag5=1599, flag6=71500042, flag7=1596, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7002700, flag9=1581, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=1)

def t150270_1000():
    """ State 0,2 """
    # talk:27900000:(Wheezing), talk:27900100:(Wheezing), talk:27900150:(Wheezing), talk:27910050:(Wheezing), talk:27900600:I'm taking a blood sample., talk:27900610:... Now to bring this to Lady Emma., talk:27910100:........., talk:27910000:Drink..., talk:27900500:I dunno how it worked, but..., goods:9511:Rot Essence: Thirsty One
    call = t150270_x29(text1=27900000, text2=27900100, text3=27900150, text4=27910050, text5=27900600,
                       text6=27900610, text7=27910100, text8=27910000, text9=27900500, flag1=70002040,
                       flag2=71500034, flag3=71500032, flag4=71500035, z1=71500031, z2=71500030, z3=71500033,
                       z4=71500036, goods1=9511)
    def WhilePaused():
        c1117(1150001, -1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        call = t150270_x30()
        def WhilePaused():
            c1117(1150000, -1)
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 4 """
            def WhilePaused():
                c1117(1150000, -1)
            assert t150270_x31()
            """ State 5 """
            def WhilePaused():
                c1117(1150000, -1)
            assert t150270_x32()
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150270_1001():
    """ State 0,2 """
    # talk:27030400:...but I don't ... have a choice..
    assert t150270_x5(text1=27030400, flag18=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150270_1102():
    """ State 0,2 """
    if not GetEventStatus(71500045):
        """ State 3,7 """
        # talk:27130000:I couldn't... resist...
        assert t150270_x5(text1=27130000, flag18=1, mode12=1)
        """ State 5 """
        SetEventState(71500047, 1)
        """ State 6 """
        # talk:27130050:I drank it all...!
        assert t150270_x3(text11=27130050, z7=71500045, flag20=1, mode14=1)
        """ State 1 """
        def WhilePaused():
            c1119(0)
    else:
        """ State 4 """
        pass

def t150270_1103():
    """ State 0,2 """
    if GetEventStatus(1595) == 1 or GetEventStatus(1596) == 1:
        """ State 4,6 """
        # talk:27030550:You... monster...
        assert t150270_x5(text1=27030550, flag18=1, mode12=1)
    else:
        """ State 3,5 """
        # talk:27030500:Gotta... get outta... the basket...
        assert t150270_x5(text1=27030500, flag18=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t150270_x0(val6=7002700, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
               flag9=1581, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t150270_x28(val6=val6, flag10=flag10, flag14=flag14, flag15=flag15, flag16=flag16, flag17=flag17,
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

def t150270_x1():
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

def t150270_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t150270_x3(text11=27130050, z7=71500045, flag20=1, mode14=1):
    """ State 0,7 """
    assert t150270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z7, 1)
    """ State 6 """
    if not flag20:
        """ State 1 """
        # talk:27130050:I drank it all...!
        TalkToPlayer(text11, -1, -1, flag20, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:27130050:I drank it all...!
        TalkToPlayer(text11, -1, -1, flag20, 1)
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

def t150270_x4(text10=27010200, z6=71500007, flag19=0, mode13=1):
    """ State 0,7 """
    assert t150270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag19:
        """ State 1 """
        # talk:27010200:What is wrong with this village?
        TalkToPlayer(text10, -1, -1, flag19, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:27010200:What is wrong with this village?
        TalkToPlayer(text10, -1, -1, flag19, 1)
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
    SetEventState(z6, 1)
    """ State 8 """
    return 0

def t150270_x5(text1=_, flag18=_, mode12=1):
    """ State 0,6 """
    assert t150270_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag18:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag18, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag18, 1)
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

def t150270_x6(lot1=69900):
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

def t150270_x7(flag5=1599, flag6=71500042, flag7=1596, val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001,
               val6=7002700, flag9=1581, flag10=6001, flag11=6000, flag12=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0,
               flag13=6000, mode6=1):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t150270_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag8=flag8, val6=val6,
                          flag9=flag9, flag10=flag10, flag11=flag11, flag12=flag12, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1) and not GetEventStatus(flag13):
            pass
        elif GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1:
            """ State 3 """
            call = t150270_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag5) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag6) and not GetEventStatus(flag7):
                continue
        """ State 2 """
        call = t150270_x9(flag5=flag5, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag5) and not DoesSelfHaveSpEffect(30100)

def t150270_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag8=6001, val6=7002700, flag9=1581, flag10=6001,
               flag11=6000, flag12=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=0, val10=1000000, val11=1000000, mode5=0, mode6=1):
    """ State 0,4 """
    while True:
        call = t150270_x25(val6=val6, flag9=flag9, flag10=flag10, val7=val7, val8=val8, val9=val9, val10=val10,
                           val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t150270_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t150270_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t150270_x12(val2=val2, val3=val3)

def t150270_x9(flag5=1599, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t150270_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t150270_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t150270_x10(val1=5, mode1=1, mode2=1, mode3=1, mode4=0, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t150270_x18(mode2=mode2, mode4=mode4)
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
        assert t150270_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t150270_x14()
    """ State 4 """
    return 0

def t150270_x11(val5=12):
    """ State 0,1 """
    call = t150270_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t150270_x1()
    """ State 3 """
    return 0

def t150270_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t150270_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t150270_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t150270_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t150270_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t150270_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t150270_x1()
    """ State 4 """
    return 0

def t150270_x14():
    """ State 0,1 """
    assert t150270_x1()
    """ State 2 """
    return 0

def t150270_x15():
    """ State 0,2 """
    assert t150270_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t150270_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t150270_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t150270_x1()

def t150270_x17():
    """ State 0,1 """
    assert t150270_x19(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150270_x18(mode2=1, mode4=0):
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
        assert t150270_x19(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t150270_x19(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t150270_x20():
    """ State 0,1 """
    call = t150270_x19(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t150270_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t150270_x21():
    """ State 0,2 """
    call = t150270_x19(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t150270_x22():
    """ State 0,1 """
    assert t150270_x19(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150270_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t150270_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t150270_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t150270_x13(val2=val2, val3=val3)

def t150270_x24():
    """ State 0,1 """
    assert t150270_x19(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150270_x25(val6=7002700, flag9=1581, flag10=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t150270_x19(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t150270_x0(val6=val6, flag10=flag10, flag14=6000, flag15=6000, flag16=6000, flag17=6000,
                mode7=0, flag9=flag9, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t150270_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t150270_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t150270_x1()
    """ State 4 """
    return 0

def t150270_x27():
    """ State 0,1 """
    assert t150270_x19(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t150270_x28(val6=7002700, flag10=6001, flag14=6000, flag15=6000, flag16=6000, flag17=6000, mode7=0,
                flag9=1581):
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

def t150270_x29(text1=27900000, text2=27900100, text3=27900150, text4=27910050, text5=27900600, text6=27900610,
                text7=27910100, text8=27910000, text9=27900500, flag1=70002040, flag2=71500034, flag3=71500032,
                flag4=71500035, z1=71500031, z2=71500030, z3=71500033, z4=71500036, goods1=9511):
    """ State 0,43 """
    if GetEventStatus(flag3) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t150270_x5(text1=text5, flag18=0, mode12=1)
            """ State 48 """
            SetEventState(flag4, 1)
            """ State 58 """
            assert t150270_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t150270_x5(text1=text6, flag18=0, mode12=1)
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
                            assert t150270_x5(text1=text1, flag18=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t150270_x5(text1=text2, flag18=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t150270_x5(text1=text3, flag18=0, mode12=1)
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

def t150270_x30():
    """ State 0,1 """
    if not GetEventStatus(71500000):
        """ State 2 """
        if GetEventStatus(71500002) == 1:
            """ State 8 """
            Label('L0')
            """ State 15 """
            # talk:27010000:Hey.
            assert t150270_x5(text1=27010000, flag18=0, mode12=1)
        elif GetEventStatus(71500003) == 1:
            """ State 9 """
            Label('L1')
            """ State 16 """
            # talk:27010100:.........
            assert t150270_x5(text1=27010100, flag18=0, mode12=1)
        else:
            """ State 14 """
            # talk:27000000:Basket, basket, basket, basket, basket...
            assert t150270_x5(text1=27000000, flag18=0, mode12=1)
            """ State 4 """
            ClearTalkListData()
            """ State 5 """
            # action:14027000:Greet him
            AddTalkListData(1, 14027000, -1)
            # action:14027001:Ignore him
            AddTalkListData(2, 14027001, -1)
            """ State 6 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 7 """
            if GetTalkListEntryResult() == 1:
                """ State 12 """
                SetEventState(71500002, -1)
                Goto('L0')
            elif GetTalkListEntryResult() == 2:
                """ State 11 """
                SetEventState(71500003, -1)
                Goto('L1')
            else:
                """ State 10,19 """
                return 1
        """ State 13 """
        SetEventState(71500000, 1)
    else:
        """ State 3,17 """
        # talk:27000100:Is there...something you want to ask?
        assert t150270_x5(text1=27000100, flag18=0, mode12=1)
    """ State 18 """
    return 0

def t150270_x31():
    """ State 0,1 """
    c1110()
    """ State 2 """
    while True:
        ClearTalkListData()
        """ State 3 """
        # action:15027000:Ask about the village
        AddTalkListData(1, 15027000, -1)
        # action:15027001:Ask about the villagers
        AddTalkListData(2, 15027001, -1)
        # action:15027002:Ask about the village priest
        AddTalkListDataIf(GetEventStatus(71500007) == 1, 3, 15027002, -1)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 9 """
        if GetTalkListEntryResult() == 1:
            """ State 5,10 """
            # talk:27010200:What is wrong with this village?
            assert t150270_x4(text10=27010200, z6=71500007, flag19=0, mode13=1)
        elif GetTalkListEntryResult() == 2:
            """ State 6,11 """
            # talk:27010300:What is wrong with the villagers?
            assert t150270_x5(text1=27010300, flag18=0, mode12=1)
        elif GetTalkListEntryResult() == 3:
            """ State 7,12 """
            # talk:27010400:Tell me about the priest.
            assert t150270_x5(text1=27010400, flag18=0, mode12=1)
        else:
            """ State 8,13 """
            return 0

def t150270_x32():
    """ State 0,1 """
    # talk:27020000:Got to go, huh?
    assert t150270_x5(text1=27020000, flag18=0, mode12=1)
    """ State 2 """
    return 0

