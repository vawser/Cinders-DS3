# -*- coding: utf-8 -*-
def t110260_1():
    """ State 0,1 """
    t110260_x7(flag9=1459, flag10=1455, flag11=1456, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001,
               val6=7002610, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=1, val10=1000000, val11=1000000, mode5=0,
               flag17=6000, mode6=0)

def t110260_1000():
    """ State 0,2 """
    if ((GetEventStatus(1219) == 1 or GetEventStatus(1215) == 1 or GetEventStatus(1216) == 1) and GetEventStatus(70002025)
        == 1):
        """ State 3 """
        # talk:26900900:(Wheezing)
        def WhilePaused():
            c1117(1110801, -1)
        assert t110260_x5(text5=26900900, flag22=0, mode12=1)
    else:
        """ State 4 """
        # talk:26900200:(Sickly labored wheezing), talk:26900300:(Sickly labored wheezing), talk:26900350:Anayama..., talk:26910050:(SIgh of relief...), talk:26910300:I'm taking a sample of your blood., talk:26910310:... need to bring this to Lady Emma., talk:26910200:........., talk:26910000:Hey..., talk:26900500:Yes!, goods:9503:Rot Essence: Lost Child
        call = t110260_x29(text5=26900200, text6=26900300, text7=26900350, text8=26910050, text9=26910300,
                           text10=26910310, text11=26910200, text12=26910000, text13=26900500, flag5=70002025,
                           flag6=72009029, flag7=72009027, flag8=72009030, z1=72009026, z2=72009025,
                           z3=72009028, z4=72009031, goods1=9503)
        def WhilePaused():
            c1117(1110801, -1)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 5 """
            assert t110260_x31()
    """ State 1 """
    c1119(0)

def t110260_1101():
    """ State 0,2 """
    if GetEventStatus(70002025) == 1:
        """ State 4 """
        # talk:26030000:Wah!, talk:26030100:Gyah!
        assert (t110260_x30(text1=26030000, flag1=72009040, text2=26030100, flag2=72009041, text3=-1,
                flag3=72009042, text4=-1, flag4=72009043))
    else:
        """ State 3 """
        # talk:26030000:Wah!, talk:26030100:Gyah!, talk:26030200:Stop it, please!, talk:26030300:What are you doing?!
        assert (t110260_x30(text1=26030000, flag1=72009040, text2=26030100, flag2=72009041, text3=26030200,
                flag3=72009042, text4=26030300, flag4=72009043))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110260_1103():
    """ State 0,2 """
    # talk:26030800:Gyaaah...
    assert t110260_x5(text5=26030800, flag22=1, mode12=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110260_x0(val6=7002610, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
               flag13=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110260_x28(val6=val6, flag14=flag14, flag18=flag18, flag19=flag19, flag20=flag20, flag21=flag21,
                           mode7=mode7, flag13=flag13)
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

def t110260_x1():
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

def t110260_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110260_x3(text1=_, flag1=_, flag24=1, mode14=1):
    """ State 0,7 """
    assert t110260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 6 """
    if not flag24:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag24, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag24, 1)
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

def t110260_x4(text14=26001300, z6=71100350, flag23=0, mode13=1):
    """ State 0,7 """
    assert t110260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag23:
        """ State 1 """
        # talk:26001300:Ohh, Mr. Shinobi
        TalkToPlayer(text14, -1, -1, flag23, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:26001300:Ohh, Mr. Shinobi
        TalkToPlayer(text14, -1, -1, flag23, 1)
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

def t110260_x5(text5=_, flag22=_, mode12=1):
    """ State 0,6 """
    assert t110260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag22:
        """ State 1 """
        TalkToPlayer(text5, -1, -1, flag22, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text5, -1, -1, flag22, 1)
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

def t110260_x6(lot1=_):
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

def t110260_x7(flag9=1459, flag10=1455, flag11=1456, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001,
               val6=7002610, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=1, mode3=1, mode4=1, val10=1000000, val11=1000000, mode5=0,
               flag17=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110260_x8(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag12=flag12, val6=val6,
                          flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1) and not GetEventStatus(flag17):
            pass
        elif GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1:
            """ State 3 """
            call = t110260_x23(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag10) and not GetEventStatus(flag11):
                continue
        """ State 2 """
        call = t110260_x9(flag9=flag9, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag9) and not DoesSelfHaveSpEffect(30100)

def t110260_x8(val1=5, val2=10, val3=12, val4=10, val5=12, flag12=6001, val6=7002610, flag13=6000, flag14=6001,
               flag15=6000, flag16=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=1,
               mode3=1, mode4=1, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t110260_x25(val6=val6, flag13=flag13, flag14=flag14, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110260_x10(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag16) == 1:
            Goto('L0')
        elif not GetEventStatus(flag12) and GetEventStatus(flag15) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110260_x11(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110260_x12(val2=val2, val3=val3)

def t110260_x9(flag9=1459, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110260_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110260_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110260_x10(val1=5, mode1=1, mode2=1, mode3=1, mode4=1, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110260_x18(mode2=mode2, mode4=mode4)
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
        assert t110260_x15()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110260_x14()
    """ State 4 """
    return 0

def t110260_x11(val5=12):
    """ State 0,1 """
    call = t110260_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110260_x1()
    """ State 3 """
    return 0

def t110260_x12(val2=10, val3=12):
    """ State 0,4 """
    assert t110260_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110260_x17()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110260_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110260_x13(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110260_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110260_x1()
    """ State 4 """
    return 0

def t110260_x14():
    """ State 0,1 """
    assert t110260_x1()
    """ State 2 """
    return 0

def t110260_x15():
    """ State 0,2 """
    assert t110260_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110260_x16(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110260_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110260_x1()

def t110260_x17():
    """ State 0,1 """
    assert t110260_x19(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t110260_x18(mode2=1, mode4=1):
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
        assert t110260_x19(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110260_x19(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t110260_x20():
    """ State 0,1 """
    call = t110260_x19(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110260_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110260_x21():
    """ State 0,2 """
    call = t110260_x19(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110260_x22():
    """ State 0,1 """
    assert t110260_x19(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t110260_x23(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110260_x16(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110260_x26(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110260_x13(val2=val2, val3=val3)

def t110260_x24():
    """ State 0,1 """
    assert t110260_x19(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t110260_x25(val6=7002610, flag13=6000, flag14=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110260_x19(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110260_x0(val6=val6, flag14=flag14, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                mode7=0, flag13=flag13, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110260_x26(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110260_x27()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110260_x1()
    """ State 4 """
    return 0

def t110260_x27():
    """ State 0,1 """
    assert t110260_x19(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t110260_x28(val6=7002610, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
                flag13=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag14) == 1 or GetEventStatus(flag18) == 1 or GetEventStatus(flag19)
                == 1 or GetEventStatus(flag20) == 1 or GetEventStatus(flag21) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag13)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag14) and not GetEventStatus(flag18) and not GetEventStatus(flag19)
                  and not GetEventStatus(flag20) and not GetEventStatus(flag21)):
                Continue('mainloop')
            elif GetEventStatus(flag13) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode7) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110260_x29(text5=26900200, text6=26900300, text7=26900350, text8=26910050, text9=26910300, text10=26910310,
                text11=26910200, text12=26910000, text13=26900500, flag5=70002025, flag6=72009029, flag7=72009027,
                flag8=72009030, z1=72009026, z2=72009025, z3=72009028, z4=72009031, goods1=9503):
    """ State 0,43 """
    if GetEventStatus(flag7) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t110260_x5(text5=text9, flag22=0, mode12=1)
            """ State 48 """
            SetEventState(flag8, 1)
            """ State 58 """
            assert t110260_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t110260_x5(text5=text10, flag22=0, mode12=1)
            """ State 23 """
            SetEventState(flag7, 0)
        else:
            """ State 45,47 """
            if GetEventStatus(flag8) == 1:
                Goto('L1')
            else:
                """ State 46,49 """
                SetEventState(flag7, 0)
                """ State 1 """
                Label('L2')
                if GetEventStatus(flag5) == 1:
                    """ State 2,12 """
                    if not GetEventStatus(flag6):
                        """ State 50 """
                        if not GetEventStatus(70004000):
                            """ State 3,55 """
                            assert t110260_x5(text5=text5, flag22=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t110260_x5(text5=text6, flag22=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t110260_x5(text5=text7, flag22=0, mode12=1)
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
                                SetEventState(flag7, 1)
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
    SetEventState(flag6, 1)
    """ State 65 """
    return 0

def t110260_x30(text1=26030000, flag1=72009040, text2=26030100, flag2=72009041, text3=_, flag3=72009042,
                text4=_, flag4=72009043):
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
        assert t110260_x3(text1=text1, flag1=flag1, flag24=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t110260_x3(text1=text2, flag1=flag2, flag24=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t110260_x3(text1=text3, flag1=flag3, flag24=1, mode14=1)
    else:
        """ State 7 """
        assert t110260_x3(text1=text4, flag1=flag4, flag24=1, mode14=1)
    """ State 8 """
    return 0

def t110260_x31():
    """ State 0,1 """
    if not GetEventStatus(71100350):
        """ State 2,9 """
        # talk:26001300:Ohh, Mr. Shinobi
        assert t110260_x4(text14=26001300, z6=71100350, flag23=0, mode13=1)
    else:
        """ State 3 """
        if GetEventStatus(70002015) == 1:
            """ State 4,10 """
            # talk:26900600:Mr Shinobi, we have a huge problem...
            assert t110260_x5(text5=26900600, flag22=0, mode12=1)
        else:
            """ State 5,14 """
            # talk:26001400:Anayama is a good man.
            assert t110260_x5(text5=26001400, flag22=0, mode12=1)
    """ State 15 """
    return 0

