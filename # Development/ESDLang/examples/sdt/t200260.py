# -*- coding: utf-8 -*-
def t200260_1():
    """ State 0,2 """
    call = t200260_x8(flag9=1459, flag10=1455, flag11=1456, val1=12, val2=10, val3=12, val4=10, val5=12,
                      flag12=6001, val6=7002600, flag13=6000, flag14=6001, flag15=6000, flag16=6000,
                      mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=1, val10=1000000,
                      val11=1000000, mode5=0, flag17=6000, mode6=0)
    assert GetEventStatus(72009004) == 1
    """ State 3 """
    assert t200260_x1()
    """ State 1 """
    SetEventState(72009004, 0)
    """ State 4 """
    # talk:26000900:Uwaaagghh!
    t200260_x5(text5=26000900, flag22=1, mode12=1)

def t200260_1000():
    """ State 0,6 """
    # talk:26900000:(Sickly labored wheezing), talk:26900100:(Sickly labored wheezing), talk:26900150:Guys..., talk:26910050:(SIgh of relief...), talk:26910300:I'm taking a sample of your blood., talk:26910310:... need to bring this to Lady Emma., talk:26910100:........., talk:26910000:Hey..., talk:26900500:Yes!, goods:9503:Rot Essence: Lost Child
    call = t200260_x30(text5=26900000, text6=26900100, text7=26900150, text8=26910050, text9=26910300,
                       text10=26910310, text11=26910100, text12=26910000, text13=26900500, flag5=70002025,
                       flag6=72009029, flag7=72009027, flag8=72009030, z1=72009026, z2=72009025, z3=72009028,
                       z4=72009031, goods1=9503)
    def WhilePaused():
        c1120(2, 9, 0, 9, 9, 9, 9, 9, 9)
        c1117(1110801, -1)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 2 """
        if GetEventStatus(1440) == 1:
            """ State 3 """
            def WhilePaused():
                c1120(2, 9, 0, 9, 9, 9, 9, 9, 9)
                c1117(1110800, -1)
            assert t200260_x32()
        elif GetEventStatus(1442) == 1:
            """ State 4 """
            assert t200260_x35()
        elif GetEventStatus(1446) == 1:
            """ State 5 """
            assert t200260_x36()
        else:
            pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200260_1101():
    """ State 0,5 """
    if not GetEventStatus(72009004):
        """ State 2 """
        if GetEventStatus(1440) == 1:
            """ State 3 """
            if True:
                """ State 6 """
                # talk:26030000:Wah!, talk:26030100:Gyah!, talk:26030200:Stop it, please!, talk:26030300:What are you doing?!
                assert (t200260_x31(text1=26030000, flag1=72009040, text2=26030100, flag2=72009041, text3=26030200,
                        flag3=72009042, text4=26030300, flag4=72009043))
            else:
                """ State 7 """
                # talk:26030000:Wah!, talk:26030100:Gyah!
                assert (t200260_x31(text1=26030000, flag1=72009040, text2=26030100, flag2=72009041, text3=-1,
                        flag3=72009042, text4=-1, flag4=72009043))
        else:
            """ State 4,8 """
            # talk:26030400:Ahh..., talk:26030500:Ohh...
            assert (t200260_x31(text1=26030400, flag1=72009040, text2=26030500, flag2=72009041, text3=-1,
                    flag3=72009042, text4=-1, flag4=72009043))
    else:
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200260_1103():
    """ State 0,2 """
    if not GetEventStatus(72009004):
        """ State 5 """
        if GetEventStatus(1440) == 1:
            """ State 3,6 """
            # talk:26030800:Gyaaah...
            assert t200260_x5(text5=26030800, flag22=1, mode12=1)
        else:
            """ State 7 """
            # talk:26030500:Ohh...
            assert t200260_x5(text5=26030500, flag22=1, mode12=1)
    else:
        """ State 4 """
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t200260_x0(val6=7002600, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
               flag13=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000, val11=1000000):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t200260_x29(val6=val6, flag14=flag14, flag18=flag18, flag19=flag19, flag20=flag20, flag21=flag21,
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

def t200260_x1():
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

def t200260_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t200260_x3(text1=_, flag1=_, flag24=1, mode14=1):
    """ State 0,7 """
    assert t200260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t200260_x4(text14=_, z6=_, flag23=0, mode13=1):
    """ State 0,7 """
    assert t200260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag23:
        """ State 1 """
        TalkToPlayer(text14, -1, -1, flag23, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
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

def t200260_x5(text5=_, flag22=_, mode12=1):
    """ State 0,6 """
    assert t200260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t200260_x6(lot1=_):
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

def t200260_x7(action1=13012200):
    """ State 0,1 """
    # action:13012200:No destinations to introduce
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t200260_x8(flag9=1459, flag10=1455, flag11=1456, val1=12, val2=10, val3=12, val4=10, val5=12, flag12=6001,
               val6=7002600, flag13=6000, flag14=6001, flag15=6000, flag16=6000, mode1=1, val7=1000000,
               val8=1000000, val9=1000000, mode2=0, mode3=1, mode4=1, val10=1000000, val11=1000000, mode5=0,
               flag17=6000, mode6=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t200260_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag12=flag12, val6=val6,
                          flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16, mode1=mode1, val7=val7,
                          val8=val8, val9=val9, mode2=mode2, mode3=mode3, mode4=mode4, val10=val10, val11=val11,
                          mode5=mode5, mode6=mode6)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1) and not GetEventStatus(flag17):
            pass
        elif GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1:
            """ State 3 """
            call = t200260_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag10) and not GetEventStatus(flag11):
                continue
        """ State 2 """
        call = t200260_x10(flag9=flag9, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag9) and not DoesSelfHaveSpEffect(30100)

def t200260_x9(val1=12, val2=10, val3=12, val4=10, val5=12, flag12=6001, val6=7002600, flag13=6000, flag14=6001,
               flag15=6000, flag16=6000, mode1=1, val7=1000000, val8=1000000, val9=1000000, mode2=0,
               mode3=1, mode4=1, val10=1000000, val11=1000000, mode5=0, mode6=0):
    """ State 0,4 """
    while True:
        call = t200260_x26(val6=val6, flag13=flag13, flag14=flag14, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t200260_x11(val1=val1, mode1=mode1, mode2=mode2, mode3=mode3, mode4=mode4, mode5=mode5)
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
            call = t200260_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode6 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t200260_x13(val2=val2, val3=val3)

def t200260_x10(flag9=1459, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t200260_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t200260_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t200260_x11(val1=12, mode1=1, mode2=0, mode3=1, mode4=1, mode5=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t200260_x19(mode2=mode2, mode4=mode4)
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
        assert t200260_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t200260_x15()
    """ State 4 """
    return 0

def t200260_x12(val5=12):
    """ State 0,1 """
    call = t200260_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t200260_x1()
    """ State 3 """
    return 0

def t200260_x13(val2=10, val3=12):
    """ State 0,4 """
    assert t200260_x1() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t200260_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t200260_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t200260_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t200260_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t200260_x1()
    """ State 4 """
    return 0

def t200260_x15():
    """ State 0,1 """
    assert t200260_x1()
    """ State 2 """
    return 0

def t200260_x16():
    """ State 0,2 """
    assert t200260_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t200260_x17(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t200260_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t200260_x1()

def t200260_x18():
    """ State 0,1 """
    assert t200260_x20(z5=1101, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200260_x19(mode2=0, mode4=1):
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
        assert t200260_x20(z5=1000, mode8=0, mode9=0, mode10=0, mode11=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t200260_x20(z5=_, mode8=0, mode9=0, mode10=0, mode11=0):
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

def t200260_x21():
    """ State 0,1 """
    call = t200260_x20(z5=1103, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert t200260_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t200260_x22():
    """ State 0,2 """
    call = t200260_x20(z5=1102, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t200260_x23():
    """ State 0,1 """
    assert t200260_x20(z5=1001, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200260_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t200260_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t200260_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t200260_x14(val2=val2, val3=val3)

def t200260_x25():
    """ State 0,1 """
    assert t200260_x20(z5=1100, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200260_x26(val6=7002600, flag13=6000, flag14=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t200260_x20(z5=2000, mode8=0, mode9=0, mode10=0, mode11=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t200260_x0(val6=val6, flag14=flag14, flag18=6000, flag19=6000, flag20=6000, flag21=6000,
                mode7=0, flag13=flag13, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t200260_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t200260_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t200260_x1()
    """ State 4 """
    return 0

def t200260_x28():
    """ State 0,1 """
    assert t200260_x20(z5=1002, mode8=0, mode9=0, mode10=0, mode11=0)
    """ State 2 """
    return 0

def t200260_x29(val6=7002600, flag14=6001, flag18=6000, flag19=6000, flag20=6000, flag21=6000, mode7=0,
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

def t200260_x30(text5=26900000, text6=26900100, text7=26900150, text8=26910050, text9=26910300, text10=26910310,
                text11=26910100, text12=26910000, text13=26900500, flag5=70002025, flag6=72009029, flag7=72009027,
                flag8=72009030, z1=72009026, z2=72009025, z3=72009028, z4=72009031, goods1=9503):
    """ State 0,43 """
    if GetEventStatus(flag7) == 1:
        """ State 44 """
        if not GetEventStatus(50006990):
            """ State 21 """
            Label('L0')
            """ State 57 """
            assert t200260_x5(text5=text9, flag22=0, mode12=1)
            """ State 48 """
            SetEventState(flag8, 1)
            """ State 58 """
            assert t200260_x6(lot1=69900)
            """ State 25 """
            Label('L1')
            """ State 63 """
            assert t200260_x5(text5=text10, flag22=0, mode12=1)
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
                            assert t200260_x5(text5=text5, flag22=0, mode12=1)
                        else:
                            """ State 4,56 """
                            assert t200260_x5(text5=text6, flag22=0, mode12=1)
                    else:
                        """ State 52,64 """
                        assert t200260_x5(text5=text7, flag22=0, mode12=1)
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

def t200260_x31(text1=_, flag1=72009040, text2=_, flag2=72009041, text3=_, flag3=72009042, text4=_, flag4=72009043):
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
        assert t200260_x3(text1=text1, flag1=flag1, flag24=1, mode14=1)
    elif not text2 == -1 and not GetEventStatus(flag2):
        """ State 5 """
        assert t200260_x3(text1=text2, flag1=flag2, flag24=1, mode14=1)
    elif not text3 == -1 and not GetEventStatus(flag3):
        """ State 6 """
        assert t200260_x3(text1=text3, flag1=flag3, flag24=1, mode14=1)
    else:
        """ State 7 """
        assert t200260_x3(text1=text4, flag1=flag4, flag24=1, mode14=1)
    """ State 8 """
    return 0

def t200260_x32():
    """ State 0,5 """
    if GetEventStatus(72009017) == 1:
        """ State 75,98 """
        call = t200260_x34()
        if call.Get() == 0:
            """ State 70 """
            Label('L0')
            """ State 94 """
            # talk:26010800:There's a peddler named Anayama near Ashina Castle looking for help.
            assert t200260_x4(text14=26010800, z6=72009001, flag23=0, mode13=1)
            """ State 72 """
            SetEventState(72009017, 0)
            SetEventState(72009005, 1)
        elif call.Done():
            """ State 76 """
            SetEventState(72009017, 0)
            """ State 1 """
            Label('L1')
            if GetEventStatus(72009001) == 1:
                """ State 4,96 """
                # talk:26000600:The peddler, Anayama, right?
                assert t200260_x5(text5=26000600, flag22=0, mode12=1)
            elif GetEventStatus(72009002) == 1:
                """ State 3,95 """
                # talk:26000500:I see, the dungeon outside Ashina Castle.
                assert t200260_x5(text5=26000500, flag22=0, mode12=1)
            elif GetEventStatus(72009010) == 1:
                """ State 2 """
                if not GetEventStatus(72009011):
                    """ State 64,89 """
                    # talk:26000700:Please, can you spirit me away?
                    assert t200260_x5(text5=26000700, flag22=0, mode12=1)
                    """ State 50 """
                    Label('L2')
                    ClearTalkListData()
                    """ State 51 """
                    # weapon:77000:Divine Abduction, weapon:77100:Double Divine Abduction, weapon:77200:Golden Vortex, action:14026006:Accept
                    AddTalkListDataIf(ComparePlayerInventoryNumber(0, 77000, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(0, 77100, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(0, 77200, 4, 1, 0) == 1,
                                      1, 14026006, -1)
                    # action:14026007:Refuse
                    AddTalkListData(2, 14026007, -1)
                    """ State 53 """
                    OpenConversationChoicesMenu(0)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 52 """
                    if GetTalkListEntryResult() == 1:
                        """ State 55 """
                        SetEventState(72009015, 0)
                        """ State 57 """
                        SetEventState(72009018, 1)
                        """ State 59 """
                        Label('L3')
                        """ State 87 """
                        # talk:26011000:All right.
                        assert t200260_x4(text14=26011000, z6=72009011, flag23=0, mode13=1)
                        """ State 58 """
                        SetEventState(72009018, 0)
                        Goto('L14')
                    elif GetTalkListEntryResult() == 2:
                        """ State 56 """
                        SetEventState(72009015, 0)
                        """ State 60 """
                        SetEventState(72009019, 1)
                        """ State 61 """
                        Label('L4')
                        """ State 88 """
                        # talk:26011100:I cannot.
                        assert t200260_x5(text5=26011100, flag22=0, mode12=1)
                        """ State 62 """
                        SetEventState(72009019, 0)
                        Goto('L14')
                    else:
                        Goto('L14')
                else:
                    """ State 63,90 """
                    # talk:26000800:Alright then. Okay.
                    assert t200260_x5(text5=26000800, flag22=0, mode12=1)
                    Goto('L14')
                """ State 29 """
                Label('L5')
                while True:
                    ClearTalkListData()
                    """ State 30 """
                    # goods:9081:White Pinwheel, action:14026003:Give White Pinwheel
                    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9081, 4, 1, 0) == 1 and not GetEventStatus(72009010),
                                      1, 14026003, -1)
                    """ State 33 """
                    # action:14026008:Suggest a travel destination
                    AddTalkListData(2, 14026008, -1)
                    """ State 34 """
                    # action:14026009:Do nothing
                    AddTalkListData(3, 14026009, -1)
                    """ State 31 """
                    OpenConversationChoicesMenu(1)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 32 """
                    if GetTalkListEntryResult() == 1:
                        """ State 36 """
                        SetEventState(72009014, 0)
                        """ State 35 """
                        Label('L6')
                        # goods:9081:White Pinwheel
                        PlayerEquipmentQuantityChange(3, 9081, -1)
                        """ State 54 """
                        SetEventState(72009015, 1)
                        """ State 40 """
                        Label('L7')
                        """ State 84 """
                        # talk:26010900:Is this the "pure white flower"?
                        assert t200260_x4(text14=26010900, z6=72009010, flag23=0, mode13=1)
                        """ State 77 """
                        SetEventState(72009005, 1)
                        Goto('L2')
                    elif GetTalkListEntryResult() == 2:
                        """ State 41,42 """
                        ClearTalkListData()
                        SetWorkValue(0, 0)
                        """ State 85 """
                        call = t200260_x33()
                        if call.Get() == 0:
                            """ State 43 """
                            # action:14026004:Lure to Abandoned Dungeon
                            AddTalkListData(1, 14026004, -1)
                            SetWorkValue(0, GetWorkValue(0) + 1)
                        elif call.Done():
                            pass
                        """ State 86 """
                        call = t200260_x34()
                        if call.Get() == 0:
                            """ State 44 """
                            # action:14026005:Tell him about Anayama the Peddler
                            AddTalkListData(2, 14026005, -1)
                            SetWorkValue(0, GetWorkValue(0) + 1)
                        elif call.Done():
                            pass
                        """ State 78 """
                        if GetWorkValue(0) > 1:
                            """ State 45 """
                            # action:14026010:Leave
                            AddTalkListData(3, 14026010, -1)
                            """ State 46 """
                            OpenConversationChoicesMenu(0)
                            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                            """ State 47 """
                            if GetTalkListEntryResult() == 1:
                                """ State 37 """
                                SetEventState(72009014, 0)
                                """ State 48 """
                                SetEventState(72009016, 1)
                                """ State 49 """
                                Label('L8')
                                """ State 93 """
                                # talk:26010700:Make your way to the abandoned dungeon of Ashina castle.
                                assert t200260_x4(text14=26010700, z6=72009002, flag23=0, mode13=1)
                                """ State 69 """
                                SetEventState(72009016, 0)
                                SetEventState(72009005, 1)
                                Goto('L14')
                            elif GetTalkListEntryResult() == 2:
                                break
                            else:
                                pass
                        else:
                            """ State 79,99 """
                            # action:13012200:No destinations to introduce
                            assert t200260_x7(action1=13012200)
                    else:
                        """ State 68 """
                        assert GetCurrentStateElapsedFrames() > 1
                        """ State 39 """
                        SetEventState(72009014, 0)
                        Goto('L14')
                """ State 38 """
                SetEventState(72009014, 0)
                """ State 71 """
                SetEventState(72009017, 1)
                Goto('L0')
            else:
                """ State 6 """
                if not GetEventStatus(72009000):
                    """ State 7,80 """
                    # talk:26000200:They left me here...
                    assert t200260_x5(text5=26000200, flag22=0, mode12=1)
                    """ State 8 """
                    ClearTalkListData()
                    """ State 9 """
                    # action:14026000:Ask why he is crying
                    AddTalkListData(1, 14026000, -1)
                    # action:14026001:Say nothing
                    AddTalkListData(2, 14026001, -1)
                    """ State 10 """
                    OpenConversationChoicesMenu(0)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """ State 13 """
                    if GetTalkListEntryResult() == 1:
                        """ State 11 """
                        SetEventState(72009012, 1)
                        """ State 14 """
                        Label('L9')
                        """ State 82 """
                        # talk:26010400:Why are you crying?
                        assert t200260_x4(text14=26010400, z6=72009000, flag23=0, mode13=1)
                        """ State 17 """
                        Label('L10')
                        ClearTalkListData()
                        """ State 18 """
                        # goods:9080:Red and White Pinwheel, action:14026002:Give Red and White Pinwheel
                        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9080, 4, 1, 0) == 1 and not GetEventStatus(72009009),
                                          1, 14026002, -1)
                        # goods:9081:White Pinwheel, action:14026003:Give White Pinwheel
                        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9081, 4, 1, 0) == 1 and not GetEventStatus(72009010),
                                          2, 14026003, -1)
                        # action:14026009:Do nothing
                        AddTalkListData(3, 14026009, -1)
                        """ State 19 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 20 """
                        if GetTalkListEntryResult() == 1:
                            """ State 23 """
                            SetEventState(72009012, 0)
                            """ State 27 """
                            # goods:9080:Red and White Pinwheel
                            PlayerEquipmentQuantityChange(3, 9080, -1)
                            """ State 22 """
                            SetEventState(72009014, 1)
                            """ State 21 """
                            Label('L11')
                            """ State 83 """
                            # talk:26010600:Is this what you're looking for?
                            assert t200260_x4(text14=26010600, z6=72009009, flag23=0, mode13=1)
                            """ State 28 """
                            Label('L12')
                            c1110()
                            Goto('L5')
                        elif GetTalkListEntryResult() == 2:
                            """ State 24 """
                            SetEventState(72009012, 0)
                            Goto('L6')
                        else:
                            """ State 26 """
                            assert GetCurrentStateElapsedFrames() > 1
                            """ State 25 """
                            SetEventState(72009012, 0)
                    elif GetTalkListEntryResult() == 2:
                        """ State 12 """
                        SetEventState(72009013, 1)
                        """ State 15 """
                        Label('L13')
                        """ State 81 """
                        # talk:26010500:.........
                        assert t200260_x5(text5=26010500, flag22=0, mode12=1)
                        """ State 16 """
                        SetEventState(72009013, 0)
                    else:
                        pass
                else:
                    """ State 65 """
                    if not GetEventStatus(72009009):
                        """ State 66,91 """
                        # talk:26000300:They left me all alone...
                        assert t200260_x5(text5=26000300, flag22=0, mode12=1)
                        Goto('L10')
                    else:
                        """ State 67,92 """
                        # talk:26000400:They left me all alone...
                        assert t200260_x5(text5=26000400, flag22=0, mode12=1)
                        Goto('L12')
    elif GetEventStatus(72009016) == 1:
        """ State 73,97 """
        call = t200260_x33()
        if call.Get() == 0:
            Goto('L8')
        elif call.Done():
            """ State 74 """
            SetEventState(72009016, 0)
            Goto('L1')
    elif GetEventStatus(72009018) == 1:
        Goto('L3')
    elif GetEventStatus(72009019) == 1:
        Goto('L4')
    elif GetEventStatus(72009015) == 1:
        Goto('L7')
    elif GetEventStatus(72009014) == 1:
        Goto('L11')
    elif GetEventStatus(72009012) == 1:
        Goto('L9')
    elif GetEventStatus(72009013) == 1:
        Goto('L13')
    else:
        Goto('L1')
    """ State 100 """
    Label('L14')
    return 0

def t200260_x33():
    """ State 0,1 """
    if GetEventStatus(1479) == 1 or GetEventStatus(1475) == 1 or GetEventStatus(1476) == 1:
        pass
    else:
        """ State 2 """
        if not GetEventStatus(71300050) or not GetEventStatus(1460):
            pass
        else:
            """ State 3 """
            if not GetEventStatus(71500192):
                pass
            else:
                """ State 4 """
                if GetEventStatus(1439) == 1 or GetEventStatus(1435) == 1 or GetEventStatus(1436) == 1:
                    pass
                else:
                    Goto('L0')
            """ State 5 """
            return 0
    """ State 6 """
    Label('L0')
    return 1

def t200260_x34():
    """ State 0,1 """
    if GetEventStatus(1219) == 1 or GetEventStatus(1215) == 1 or GetEventStatus(1216) == 1:
        pass
    else:
        """ State 2 """
        if not GetEventStatus(1200):
            pass
        else:
            """ State 3 """
            if not GetEventStatus(71100258):
                pass
            else:
                """ State 4 """
                return 0
    """ State 5 """
    return 1

def t200260_x35():
    """ State 0,1 """
    if not GetEventStatus(72009003):
        """ State 2 """
        if not GetEventStatus(50006260):
            """ State 6 """
            # talk:26001100:Umm... No, no, that's not true...
            def WhilePaused():
                c5120(GetCurrentStateElapsedTime() > 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
            assert t200260_x5(text5=26001100, flag22=0, mode12=1)
            """ State 7 """
            def WhilePaused():
                c1120(2, 9, 0, 9, 9, 9, 9, 9, 9)
            assert t200260_x6(lot1=62600)
        else:
            pass
        """ State 4 """
        # talk:26001120:Thank you so, soooo much!
        def WhilePaused():
            c1120(2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t200260_x4(text14=26001120, z6=72009003, flag23=0, mode13=1)
    else:
        """ State 3,5 """
        # talk:26001200:Hehehe...
        assert t200260_x5(text5=26001200, flag22=0, mode12=1)
    """ State 8 """
    return 0

def t200260_x36():
    """ State 0,1 """
    # talk:26001000:Ahhh.........
    assert t200260_x5(text5=26001000, flag22=0, mode12=1)
    """ State 2 """
    return 0

