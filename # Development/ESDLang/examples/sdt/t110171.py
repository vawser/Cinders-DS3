# -*- coding: utf-8 -*-
def t110171_1():
    """ State 0,1 """
    t110171_x9(flag12=1219, flag13=1215, flag14=1216, val1=5, val2=10, val3=12, val4=10, val5=12, flag15=6001,
               val6=7001700, flag16=6000, flag17=6001, flag18=6000, flag19=6000, mode4=1, val7=1000000,
               val8=1000000, val9=1000000, mode5=0, mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0,
               flag20=71100255, mode9=0)

def t110171_1000():
    """ State 0,2 """
    if GetEventStatus(1201) == 1:
        """ State 4 """
        def WhilePaused():
            c1120(1, 9, 9, 9, 9, 9, 9, 9, 9)
        assert t110171_x39()
    elif GetEventStatus(1200) == 1:
        """ State 3 """
        def WhilePaused():
            c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            c1117(1155000, -1)
        assert t110171_x38()
    else:
        pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110171_1001():
    """ State 0,2,3 """
    # talk:17031300:Good sir...
    assert t110171_x6(text1=17031300, flag25=1, mode16=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110171_1101():
    """ State 0,2 """
    if GetEventStatus(1201) == 1:
        """ State 4,6 """
        # talk:17031500:   , talk:17031600:   
        assert (t110171_x37(text6=17031500, flag2=71100295, text7=17031600, flag3=71100296, text8=-1,
                flag4=71100297, text9=-1, flag5=71100298))
    else:
        """ State 3 """
        if GetEventStatus(70002015) == 1:
            """ State 7 """
            # talk:17030800:   , talk:17030900:   
            assert (t110171_x37(text6=17030800, flag2=71100295, text7=17030900, flag3=71100296, text8=-1,
                    flag4=71100297, text9=-1, flag5=71100298))
        else:
            """ State 5 """
            # talk:17030800:   , talk:17030900:   , talk:17031000:Please stop!, talk:17031100:What are you doing, good sir?!
            assert (t110171_x37(text6=17030800, flag2=71100295, text7=17030900, flag3=71100296, text8=17031000,
                    flag4=71100297, text9=17031100, flag5=71100298))
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110171_1102():
    """ State 0,2 """
    if not GetEventStatus(71100279):
        """ State 6 """
        if GetEventStatus(71100283) == 1:
            """ State 5 """
            if GetEventStatus(71100278) == 1:
                """ State 7 """
                if True:
                    pass
                else:
                    """ State 9 """
                    call = t110171_x4(text6=17031700, flag2=71100279, flag27=1, mode18=1)
                    if call.Done():
                        Goto('L0')
                    elif GetEventStatus(1459) == 1:
                        """ State 10 """
                        assert t110171_x2()
                        Goto('L0')
            else:
                Goto('L0')
        else:
            """ State 3 """
            pass
        """ State 8 """
        # talk:17031200:Good sirrr!
        assert t110171_x4(text6=17031200, flag2=71100279, flag27=1, mode18=1)
    else:
        pass
    """ State 4 """
    Label('L0')

def t110171_1103():
    """ State 0,2 """
    if GetEventStatus(71100255) == 1:
        """ State 3 """
        pass
    else:
        """ State 4 """
        assert GetCurrentStateElapsedTime() > 0.5
        """ State 5 """
        # talk:17031400:Good sir...
        assert t110171_x6(text1=17031400, flag25=1, mode16=1)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110171_2000():
    """ State 0,2 """
    while True:
        call = t110171_x1(val6=7001700, flag17=6001, flag21=6000, flag22=6000, flag23=6000, flag24=6000,
                          mode10=0, flag16=6000, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                          val11=1000000)
        if call.Done():
            break
        elif (GetEventStatus(1201) == 1 and f116(-1) == 1155001 and ((not GetEventStatus(9006) and not
              GetEventStatus(71101800)) or (GetEventStatus(9006) == 1 and not GetEventStatus(50006172)))):
            """ State 3 """
            call = t110171_x1(val6=7001702, flag17=6001, flag21=6000, flag22=6000, flag23=6000, flag24=6000,
                              mode10=0, flag16=6000, val7=-1, val8=-1, val9=-1, val10=-1, val11=-1)
            if call.Done():
                break
            elif (not GetEventStatus(1201) and ((not GetEventStatus(9006) and GetEventStatus(71101800)
                  == 1) or (GetEventStatus(9006) == 1 and GetEventStatus(50006172) == 1))):
                pass
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110171_x0(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t110171_x1(val6=_, flag17=6001, flag21=6000, flag22=6000, flag23=6000, flag24=6000, mode10=0, flag16=6000,
               val7=_, val8=_, val9=_, val10=_, val11=_):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110171_x32(val6=val6, flag17=flag17, flag21=flag21, flag22=flag22, flag23=flag23, flag24=flag24,
                           mode10=mode10, flag16=flag16)
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

def t110171_x2():
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

def t110171_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110171_x4(text6=_, flag2=_, flag27=1, mode18=1):
    """ State 0,7 """
    assert t110171_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag2, 1)
    """ State 6 """
    if not flag27:
        """ State 1 """
        TalkToPlayer(text6, -1, -1, flag27, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text6, -1, -1, flag27, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode18:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t110171_x5(text18=_, z14=_, flag26=0, mode17=1):
    """ State 0,7 """
    assert t110171_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag26:
        """ State 1 """
        TalkToPlayer(text18, -1, -1, flag26, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text18, -1, -1, flag26, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode17:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z14, 1)
    """ State 8 """
    return 0

def t110171_x6(text1=_, flag25=_, mode16=1):
    """ State 0,6 """
    assert t110171_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag25:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag25, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag25, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode16:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110171_x7(lot1=_):
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

def t110171_x8(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110171_x9(flag12=1219, flag13=1215, flag14=1216, val1=5, val2=10, val3=12, val4=10, val5=12, flag15=6001,
               val6=7001700, flag16=6000, flag17=6001, flag18=6000, flag19=6000, mode4=1, val7=1000000,
               val8=1000000, val9=1000000, mode5=0, mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0,
               flag20=71100255, mode9=0):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110171_x10(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag15=flag15, val6=val6,
                           flag16=flag16, flag17=flag17, flag18=flag18, flag19=flag19, mode4=mode4, val7=val7,
                           val8=val8, val9=val9, mode5=mode5, mode6=mode6, mode7=mode7, val10=val10,
                           val11=val11, mode8=mode8, mode9=mode9)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if (CheckSelfDeath() == 1 or GetEventStatus(flag12) == 1) and not GetEventStatus(flag20):
            pass
        elif GetEventStatus(flag13) == 1 or GetEventStatus(flag14) == 1:
            """ State 3 """
            call = t110171_x25(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag12) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag13) and not GetEventStatus(flag14):
                continue
        """ State 2 """
        call = t110171_x11(flag12=flag12, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag12) and not DoesSelfHaveSpEffect(30100)

def t110171_x10(val1=5, val2=10, val3=12, val4=10, val5=12, flag15=6001, val6=7001700, flag16=6000, flag17=6001,
                flag18=6000, flag19=6000, mode4=1, val7=1000000, val8=1000000, val9=1000000, mode5=0,
                mode6=1, mode7=0, val10=1000000, val11=1000000, mode8=0, mode9=0):
    """ State 0,4 """
    while True:
        call = t110171_x27(val6=val6, flag16=flag16, flag17=flag17, val7=val7, val8=val8, val9=val9,
                           val10=val10, val11=val11)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110171_x12(val1=val1, mode4=mode4, mode5=mode5, mode6=mode6, mode7=mode7, mode8=mode8)
            def WhilePaused():
                GiveSpEffectToPlayer(30700)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
                pass
        elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
            pass
        elif GetEventStatus(flag19) == 1:
            Goto('L0')
        elif not GetEventStatus(flag15) and GetEventStatus(flag18) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110171_x13(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1 and not mode9 and not DoesSelfHaveSpEffect(30201):
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110171_x14(val2=val2, val3=val3)

def t110171_x11(flag12=1219, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag12) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110171_x22()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110171_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110171_x12(val1=5, mode4=1, mode5=0, mode6=1, mode7=0, mode8=0):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110171_x20(mode5=mode5, mode7=mode7)
    def WhilePaused():
        c1117(mode4, 10000)
        c1117(1000000, -1)
        SetTalkTime(0.01)
        c5128(mode6 == 1, 0.1)
        c5120(val1 == 1 and not mode4 and mode8 == 1, 1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1)
          or IsPlayerDead() == 1 or f116(10000) == 90):
        """ State 1 """
        assert t110171_x17()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110171_x16()
    """ State 4 """
    return 0

def t110171_x13(val5=12):
    """ State 0,1 """
    call = t110171_x26()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110171_x2()
    """ State 3 """
    return 0

def t110171_x14(val2=10, val3=12):
    """ State 0,4 """
    assert t110171_x2() and GetCurrentStateElapsedFrames() > 2
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110171_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110171_x2()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110171_x15(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110171_x24()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110171_x2()
    """ State 4 """
    return 0

def t110171_x16():
    """ State 0,1 """
    assert t110171_x2()
    """ State 2 """
    return 0

def t110171_x17():
    """ State 0,2 """
    assert t110171_x2()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110171_x18(val2=10, val3=12):
    """ State 0,2,1 """
    while True:
        assert GetDistanceToPlayer() < val2
        """ State 3 """
        call = t110171_x23()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > val3:
            """ State 4 """
            assert t110171_x2()

def t110171_x19():
    """ State 0,1 """
    assert t110171_x21(z13=1101, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t110171_x20(mode5=0, mode7=0):
    """ State 0,2 """
    if f116(10000) == 1:
        """ State 1 """
        assert GetCurrentStateElapsedFrames() > 5
        """ State 3 """
        assert not DoesPlayerHaveSpEffect(4511)
        """ State 4 """
        def WhilePaused():
            c5120(mode5 == 1 and not mode7, 1, 0, 9, 9, 9, 9, 9, 9, 9)
            c5120(mode5 == 1 and mode7 == 1, 2, 9, 0, 9, 9, 9, 9, 9, 9)
        assert t110171_x21(z13=1000, mode12=0, mode13=0, mode14=0, mode15=0)
    elif GetCurrentStateElapsedTime() > 5:
        pass
    """ State 5 """
    return 0

def t110171_x21(z13=_, mode12=0, mode13=0, mode14=0, mode15=0):
    """ State 0,4 """
    if f118(z13) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z13)
        assert f117() == mode12 or f117() == mode13 or f117() == mode14 or f117() == mode15
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110171_x22():
    """ State 0,1 """
    call = t110171_x21(z13=1103, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110171_x2()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110171_x23():
    """ State 0,2 """
    call = t110171_x21(z13=1102, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110171_x24():
    """ State 0,1 """
    assert t110171_x21(z13=1001, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t110171_x25(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110171_x18(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110171_x29(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110171_x15(val2=val2, val3=val3)

def t110171_x26():
    """ State 0,1 """
    assert t110171_x21(z13=1100, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t110171_x27(val6=7001700, flag16=6000, flag17=6001, val7=1000000, val8=1000000, val9=1000000, val10=1000000,
                val11=1000000):
    """ State 0,1 """
    call = t110171_x21(z13=2000, mode12=0, mode13=0, mode14=0, mode15=0)
    if call.Get() == 1:
        """ State 2 """
        assert (t110171_x1(val6=val6, flag17=flag17, flag21=6000, flag22=6000, flag23=6000, flag24=6000,
                mode10=0, flag16=flag16, val7=val7, val8=val8, val9=val9, val10=val10, val11=val11))
    elif call.Done():
        pass
    """ State 3 """
    return 0

def t110171_x28(z11=-1, z12=1155001, val12=1155001, mode11=1, val13=5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z12, z11)
    if f116(z11) == val12 and mode11 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val13:
        """ State 3 """
        return 1

def t110171_x29(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110171_x30()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110171_x2()
    """ State 4 """
    return 0

def t110171_x30():
    """ State 0,1 """
    assert t110171_x21(z13=1002, mode12=0, mode13=0, mode14=0, mode15=0)
    """ State 2 """
    return 0

def t110171_x31(shop1=1100200, shop2=1100249):
    """ State 0,1 """
    if GetEventStatus(6020) == 1:
        """ State 3,5 """
        OpenRegularShop(shop1 + 50, shop2 + 50)
    else:
        """ State 2,4 """
        OpenRegularShop(shop1, shop2)
    """ State 6 """
    return 0

def t110171_x32(val6=_, flag17=6001, flag21=6000, flag22=6000, flag23=6000, flag24=6000, mode10=0, flag16=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag17) == 1 or GetEventStatus(flag21) == 1 or GetEventStatus(flag22)
                == 1 or GetEventStatus(flag23) == 1 or GetEventStatus(flag24) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag16)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag17) and not GetEventStatus(flag21) and not GetEventStatus(flag22)
                  and not GetEventStatus(flag23) and not GetEventStatus(flag24)):
                Continue('mainloop')
            elif GetEventStatus(flag16) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode10) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110171_x33(text13=17900000, text14=17900100, text15=17900150, text16=17910050, text17=17900200,
                flag10=70002015, flag11=71100293, z9=71100276, z10=71100294):
    """ State 0,1 """
    if GetEventStatus(flag10) == 1:
        pass
    else:
        Goto('L0')
    """ State 2 """
    if not GetEventStatus(flag11):
        """ State 10 """
        if not GetEventStatus(70004000):
            """ State 3,13 """
            assert t110171_x6(text1=text13, flag25=0, mode16=1)
        else:
            """ State 4,14 """
            assert t110171_x6(text1=text14, flag25=0, mode16=1)
    else:
        """ State 11,5,17 """
        assert t110171_x6(text1=text15, flag25=0, mode16=1)
    """ State 12 """
    SetEventState(flag11, 1)
    """ State 18 """
    return 0
    """ State 7 """
    Label('L0')
    """ State 20 """
    return 2

def t110171_x34(flag8=70002015, flag9=71100276, z7=4, z8=5):
    """ State 0,1 """
    if GetEventStatus(flag8) == 1:
        """ State 3 """
        if GetEventStatus(70004001) == 1:
            """ State 5,4 """
            # action:15000811:Collect blood sample
            AddTalkListDataIf(not GetEventStatus(50006990), z7, 15000811, -1)
        else:
            """ State 7 """
            pass
    else:
        """ State 2 """
        pass
    """ State 9 """
    return 0

def t110171_x35(text11=17910300, text12=17910310, flag7=71100292, mode3=_):
    """ State 0,1 """
    if mode3 == 1:
        """ State 3 """
        if GetEventStatus(flag7) == 1:
            pass
        else:
            """ State 11 """
            return 1
    else:
        """ State 2,7 """
        assert t110171_x6(text1=text11, flag25=0, mode16=1)
        """ State 4 """
        SetEventState(flag7, 1)
        """ State 8 """
        assert t110171_x7(lot1=69900)
    """ State 5,9 """
    assert t110171_x6(text1=text12, flag25=0, mode16=1)
    """ State 6 """
    SetEventState(flag7, 0)
    """ State 10 """
    return 0

def t110171_x36(text10=17900600, flag6=70002015):
    """ State 0,1 """
    if GetEventStatus(flag6) == 1:
        """ State 3,4 """
        assert t110171_x6(text1=text10, flag25=0, mode16=1)
        """ State 5 """
        return 0
    else:
        """ State 2,6 """
        return 1

def t110171_x37(text6=_, flag2=71100295, text7=_, flag3=71100296, text8=_, flag4=71100297, text9=_, flag5=71100298):
    """ State 0,3 """
    if ((text6 == -1 or GetEventStatus(flag2) == 1) and (text7 == -1 or GetEventStatus(flag3) == 1) and
        (text8 == -1 or GetEventStatus(flag4) == 1) and (text9 == -1 or GetEventStatus(flag5) == 1)):
        """ State 2 """
        SetEventState(flag2, 0)
        SetEventState(flag3, 0)
        SetEventState(flag4, 0)
        SetEventState(flag5, 0)
    else:
        pass
    """ State 1 """
    if not text6 == -1 and not GetEventStatus(flag2):
        """ State 4 """
        assert t110171_x4(text6=text6, flag2=flag2, flag27=1, mode18=1)
    elif not text7 == -1 and not GetEventStatus(flag3):
        """ State 5 """
        assert t110171_x4(text6=text7, flag2=flag3, flag27=1, mode18=1)
    elif not text8 == -1 and not GetEventStatus(flag4):
        """ State 6 """
        assert t110171_x4(text6=text8, flag2=flag4, flag27=1, mode18=1)
    else:
        """ State 7 """
        assert t110171_x4(text6=text9, flag2=flag5, flag27=1, mode18=1)
    """ State 8 """
    return 0

def t110171_x38():
    """ State 0,9 """
    call = t110171_x55(z1=20, mode1=1)
    if call.Get() == 1:
        """ State 2 """
        if ((GetEventStatus(1459) == 1 or GetEventStatus(1455) == 1 or GetEventStatus(1456) == 1) and
            GetEventStatus(70002015) == 1 and GetEventStatus(71100283) == 1):
            """ State 10 """
            # talk:17900500:(Wheezing)
            assert t110171_x6(text1=17900500, flag25=0, mode16=1)
        else:
            """ State 3 """
            # talk:17910300:I'm taking a blood sample., talk:17910310:... Now to bring this to Lady Emma.
            call = t110171_x35(text11=17910300, text12=17910310, flag7=71100292, mode3=1)
            if call.Get() == 1:
                """ State 4 """
                # talk:17910200:........., talk:17910000:Drink this..., talk:17910010:(Laughs to himself)
                call = t110171_x44(text3=17910200, text4=17910000, z3=71100291, z4=71100290, z5=71100276,
                                   mode2=1, text5=17910010, z6=71100275)
                if call.Get() == 1:
                    """ State 1 """
                    if GetEventStatus(71100283) == 1:
                        """ State 8 """
                        assert t110171_x43()
                    elif GetEventStatus(71100282) == 1:
                        """ State 7 """
                        assert t110171_x42()
                    elif GetEventStatus(71100281) == 1:
                        """ State 6 """
                        assert t110171_x41()
                    else:
                        """ State 5 """
                        assert t110171_x40()
                elif call.Done():
                    pass
            elif call.Done():
                pass
    elif call.Done():
        pass
    """ State 11 """
    return 0

def t110171_x39():
    """ State 0,17 """
    if GetEventStatus(71100255) == 1:
        """ State 18,19 """
        if not GetEventStatus(9006):
            """ State 20,34 """
            assert t110171_x56()
            Goto('L4')
        else:
            """ State 21,22 """
            SetMessageTagValue(0, 1)
            """ State 35 """
            # action:12014000:Pay <?evntAcquittalPrice?> sen to purchase Dragon's Blood Droplet?
            call = t110171_x0(action2=12014000)
            if call.Get() == 1:
                Goto('L4')
            elif call.Done():
                """ State 23 """
                if ComparePlayerStatus(8, 1, 1) == 1:
                    """ State 36 """
                    # action:13001700:Not enough sen.
                    assert t110171_x8(action1=13001700)
                    Goto('L4')
                else:
                    """ State 24 """
                    ChangePlayerStats(8, 1, 1)
                    """ State 37 """
                    assert t110171_x7(lot1=61720)
                    """ State 38 """
                    # action:13017001:Paid <?evntAcquittalPrice?> sen.
                    assert t110171_x8(action1=13017001)
                    Goto('L4')
        """ State 6 """
        Label('L0')
        SetEventState(71100285, 1)
        """ State 11 """
        Label('L1')
        """ State 27 """
        # talk:17021200:Those...
        assert t110171_x6(text1=17021200, flag25=0, mode16=1)
        """ State 8 """
        SetEventState(71100285, 0)
        """ State 16 """
        Label('L2')
        SetEventState(71100255, 1)
        """ State 32 """
        assert t110171_x28(z11=-1, z12=1155001, val12=1155001, mode11=1, val13=5)
    else:
        """ State 9 """
        if GetEventStatus(71100284) == 1:
            """ State 10 """
            Label('L3')
            """ State 26 """
            # talk:17021100:Thank you...
            assert t110171_x6(text1=17021100, flag25=0, mode16=1)
            """ State 7 """
            SetEventState(71100284, 0)
            Goto('L2')
        elif GetEventStatus(71100285) == 1:
            Goto('L1')
        else:
            """ State 25 """
            # talk:17001800:Good sir... How uh... are you?
            assert t110171_x6(text1=17001800, flag25=0, mode16=1)
            """ State 1 """
            if not GetEventStatus(9006):
                """ State 2,33 """
                assert t110171_x56() and GetCurrentStateElapsedFrames() > 1
                """ State 4 """
                if GetEventStatus(71101800) == 1:
                    """ State 5 """
                    SetEventState(71100284, 1)
                    Goto('L3')
                else:
                    Goto('L0')
            else:
                """ State 3,12 """
                SetMessageTagValue(0, 1)
                """ State 28 """
                # action:12014000:Pay <?evntAcquittalPrice?> sen to purchase Dragon's Blood Droplet?
                call = t110171_x0(action2=12014000)
                if call.Get() == 1:
                    Goto('L0')
                elif call.Done():
                    """ State 14 """
                    if ComparePlayerStatus(8, 1, 1) == 1:
                        """ State 29 """
                        # action:13001700:Not enough sen.
                        assert t110171_x8(action1=13001700)
                    else:
                        """ State 13 """
                        ChangePlayerStats(8, 1, 1)
                        """ State 15 """
                        SetEventState(71100284, 1)
                        """ State 30 """
                        assert t110171_x7(lot1=61720)
                        """ State 31 """
                        # action:13017001:Paid <?evntAcquittalPrice?> sen.
                        assert t110171_x8(action1=13017001)
                        Goto('L3')
    """ State 39 """
    Label('L4')
    return 0

def t110171_x40():
    """ State 0,1 """
    call = t110171_x53(z2=10)
    if call.Get() == 1:
        pass
    elif call.Done():
        """ State 3 """
        call = t110171_x45()
        if call.Get() == 1:
            pass
        elif call.Done():
            """ State 2 """
            assert t110171_x54()
    """ State 4 """
    return 0

def t110171_x41():
    """ State 0,2 """
    # talk:17900000:Sir..., talk:17900100:Sir..., talk:17900150:Wel-... come..., talk:17910050:Many thanks..., talk:17900200:Oh good sirrr!
    call = t110171_x33(text13=17900000, text14=17900100, text15=17900150, text16=17910050, text17=17900200,
                       flag10=70002015, flag11=71100293, z9=71100276, z10=71100294)
    if call.Get() == 1:
        """ State 6 """
        Label('L0')
        assert t110171_x45()
        """ State 3 """
        # talk:17900600:(wheezing and coughing up blood)
        call = t110171_x36(text10=17900600, flag6=70002015)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 5 """
            assert t110171_x47()
    elif call.Get() == 0:
        Goto('L0')
    elif call.Done():
        """ State 1 """
        if GetEventStatus(71100252) == 1 and not GetEventStatus(71100270):
            """ State 7 """
            # talk:17020400:By the way, good sir. I'm going to let you in on something.
            assert t110171_x5(text18=17020400, z14=71100270, flag26=0, mode17=1)
        else:
            """ State 4 """
            assert t110171_x46()
            Goto('L0')
    """ State 8 """
    return 0

def t110171_x42():
    """ State 0,2 """
    # talk:17900000:Sir..., talk:17900100:Sir..., talk:17900150:Wel-... come..., talk:17910050:Many thanks..., talk:17900200:Oh good sirrr!
    call = t110171_x33(text13=17900000, text14=17900100, text15=17900150, text16=17910050, text17=17900200,
                       flag10=70002015, flag11=71100293, z9=71100276, z10=71100294)
    if call.Get() == 1:
        """ State 6 """
        Label('L0')
        assert t110171_x45()
        """ State 3 """
        # talk:17900600:(wheezing and coughing up blood)
        call = t110171_x36(text10=17900600, flag6=70002015)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 5 """
            assert t110171_x49()
    elif call.Get() == 0:
        Goto('L0')
    elif call.Done():
        """ State 1 """
        if GetEventStatus(71100253) == 1 and not GetEventStatus(71100258):
            """ State 7 """
            # talk:17020800:Oh, good sir! Listen here.
            assert t110171_x5(text18=17020800, z14=71100258, flag26=0, mode17=1)
        else:
            """ State 4 """
            assert t110171_x48()
            Goto('L0')
    """ State 8 """
    return 0

def t110171_x43():
    """ State 0,1 """
    # talk:17900000:Sir..., talk:17900100:Sir..., talk:17900150:Wel-... come..., talk:17910050:Many thanks..., talk:17900200:Oh good sirrr!
    call = t110171_x33(text13=17900000, text14=17900100, text15=17900150, text16=17910050, text17=17900200,
                       flag10=70002015, flag11=71100293, z9=71100276, z10=71100294)
    if call.Get() == 1:
        pass
    elif call.Get() == 0:
        pass
    elif call.Done():
        """ State 4 """
        assert t110171_x50()
    """ State 5 """
    assert t110171_x45()
    """ State 2 """
    # talk:17900600:(wheezing and coughing up blood)
    call = t110171_x36(text10=17900600, flag6=70002015)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        assert t110171_x51()
    """ State 6 """
    return 0

def t110171_x44(text3=17910200, text4=17910000, z3=71100291, z4=71100290, z5=71100276, mode2=_, text5=17910010,
                z6=71100275):
    """ State 0,1 """
    if mode2 == 1:
        pass
    else:
        Goto('L0')
    """ State 2,24 """
    return 1
    """ State 3 """
    Label('L0')
    if ComparePlayerInventoryNumber(3, 9550, 0, 0, 0) == 1:
        """ State 8 """
        pass
    else:
        """ State 7,18 """
        # action:12095010:Give Dragonrot Pellet?
        call = t110171_x0(action2=12095010)
        if call.Get() == 0:
            """ State 6 """
            PlayerEquipmentQuantityChange(3, 9550, -1)
            # goods:9501:Rot Essence: Newcomer
            PlayerEquipmentQuantityChange(3, 9501, -1)
            """ State 9 """
            SetEventState(z5, 1)
            """ State 5 """
            SetEventState(z4, 1)
            """ State 4,19 """
            assert t110171_x6(text1=text4, flag25=0, mode16=1)
            """ State 10 """
            SetEventState(z4, 0)
            """ State 15 """
            ChangePlayerStats(8, 0, 1)
            SetMessageTagValue(0, 1)
            """ State 16 """
            SetEventState(z6, 1)
            """ State 22 """
            # action:13017000:Anayama paid you <?evntAcquittalPrice?> sen.
            assert t110171_x8(action1=13017000)
            """ State 14,21 """
            assert t110171_x6(text1=text5, flag25=0, mode16=1)
            """ State 17 """
            SetEventState(z6, 0)
        elif call.Done():
            """ State 11 """
            SetEventState(z3, 1)
            """ State 12,20 """
            assert t110171_x6(text1=text3, flag25=0, mode16=1)
            """ State 13 """
            SetEventState(z3, 0)
    """ State 23 """
    return 0

def t110171_x45():
    """ State 0,1 """
    c1110()
    """ State 2 """
    while True:
        ClearTalkListData()
        """ State 3 """
        # action:15017003:Purchase items
        AddTalkListDataIf(GetEventStatus(71100281) == 1 or GetEventStatus(71100282) == 1 or GetEventStatus(71100283) == 1,
                          1, 15017003, -1)
        # action:15017004:Sell items
        AddTalkListDataIf(GetEventStatus(71100281) == 1 or GetEventStatus(71100282) == 1 or GetEventStatus(71100283) == 1,
                          2, 15017004, 6000)
        # action:15017006:Purchase information
        AddTalkListDataIf(not GetEventStatus(50006170), 3, 15017006, -1)
        """ State 14 """
        assert t110171_x34(flag8=70002015, flag9=71100276, z7=4, z8=5)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,16 """
            c511(GetEventStatus(71101510) == 1, 71100269, 1)
            c511(GetEventStatus(71101510) == 1 and not GetEventStatus(71100269), 71100256, 1)
            assert (t110171_x31(shop1=1100200, shop2=1100249) and not (CheckSpecificPersonMenuIsOpen(5,
                    0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)))
        elif GetTalkListEntryResult() == 2:
            """ State 7,12 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,15 """
            assert t110171_x55(z1=20, mode1=0)
            """ State 13 """
            if GetEventStatus(71100280) == 1 and GetEventStatus(50006170) == 1:
                """ State 20 """
                return 1
            else:
                pass
        elif GetTalkListEntryResult() == 4:
            """ State 9,17 """
            # talk:17910300:I'm taking a blood sample., talk:17910310:... Now to bring this to Lady Emma.
            assert t110171_x35(text11=17910300, text12=17910310, flag7=71100292, mode3=0)
        else:
            """ State 11,19 """
            return 0

def t110171_x46():
    """ State 0,1 """
    if not GetEventStatus(71100252):
        """ State 2,8 """
        # talk:17001200:I've been waiting for you, good sir!
        assert t110171_x5(text18=17001200, z14=71100252, flag26=0, mode17=1)
    else:
        """ State 3 """
        if GetEventStatus(71100270) == 1 and GetEventStatus(71118005) == 1 and not GetEventStatus(71100260):
            """ State 5,10 """
            # talk:17001400:Hey, good sir.
            assert t110171_x5(text18=17001400, z14=71100260, flag26=0, mode17=1)
        else:
            """ State 6 """
            if (GetEventStatus(1235) == 1 or GetEventStatus(1236) == 1) and not GetEventStatus(71100265):
                """ State 4,9 """
                # talk:17001900:Damn you, good sir!
                assert t110171_x5(text18=17001900, z14=71100265, flag26=0, mode17=1)
            else:
                """ State 7 """
                if GetEventStatus(71100260) == 1:
                    """ State 12 """
                    # talk:17001500:Now then, how do I get me some salt...
                    assert t110171_x6(text1=17001500, flag25=0, mode16=1)
                else:
                    """ State 11 """
                    # talk:17001300:Greetings!  Thanks for your business, good sir!
                    assert t110171_x6(text1=17001300, flag25=0, mode16=1)
    """ State 13 """
    return 0

def t110171_x47():
    """ State 0,4 """
    if not GetEventStatus(71100252):
        """ State 8 """
        # talk:17020500:Until next time, good sir.
        assert t110171_x6(text1=17020500, flag25=0, mode16=1)
    else:
        """ State 1 """
        if not GetEventStatus(71100270):
            """ State 2,5 """
            # talk:17020400:By the way, good sir. I'm going to let you in on something.
            assert t110171_x5(text18=17020400, z14=71100270, flag26=0, mode17=1)
        else:
            """ State 3 """
            if GetEventStatus(71100260) == 1:
                """ State 7 """
                # talk:17020700:Until next time, good sir.
                assert t110171_x6(text1=17020700, flag25=0, mode16=1)
            else:
                """ State 6 """
                # talk:17020600:Until next time, good sir.
                assert t110171_x6(text1=17020600, flag25=0, mode16=1)
    """ State 9 """
    return 0

def t110171_x48():
    """ State 0,1 """
    if not GetEventStatus(71100253):
        """ State 2,6 """
        # talk:17001600:Good sir, good sir! Listen here.
        assert t110171_x5(text18=17001600, z14=71100253, flag26=0, mode17=1)
    else:
        """ State 3 """
        if (GetEventStatus(1235) == 1 or GetEventStatus(1236) == 1) and not GetEventStatus(71100265):
            """ State 4,7 """
            # talk:17001900:Damn you, good sir!
            assert t110171_x5(text18=17001900, z14=71100265, flag26=0, mode17=1)
        else:
            """ State 5,8 """
            # talk:17001300:Greetings!  Thanks for your business, good sir!
            assert t110171_x6(text1=17001300, flag25=0, mode16=1)
    """ State 9 """
    return 0

def t110171_x49():
    """ State 0,4 """
    if not GetEventStatus(71100253):
        """ State 7 """
        # talk:17020500:Until next time, good sir.
        assert t110171_x6(text1=17020500, flag25=0, mode16=1)
    else:
        """ State 1 """
        if not GetEventStatus(71100258):
            """ State 2,5 """
            # talk:17020800:Oh, good sir! Listen here.
            assert t110171_x5(text18=17020800, z14=71100258, flag26=0, mode17=1)
        else:
            """ State 3,6 """
            # talk:17020900:Until next time, good sir.
            assert t110171_x6(text1=17020900, flag25=0, mode16=1)
    """ State 8 """
    return 0

def t110171_x50():
    """ State 0,1 """
    if not GetEventStatus(71100254):
        """ State 2,13 """
        # talk:17001700:Good sir, you have one hell of an eye on you!
        assert t110171_x5(text18=17001700, z14=71100254, flag26=0, mode17=1)
    else:
        """ State 3 """
        if (GetEventStatus(1235) == 1 or GetEventStatus(1236) == 1) and not GetEventStatus(71100265):
            """ State 4,14 """
            # talk:17001900:Damn you, good sir!
            assert t110171_x5(text18=17001900, z14=71100265, flag26=0, mode17=1)
        else:
            """ State 5 """
            if GetEventStatus(70002025) == 1:
                """ State 6,15 """
                # talk:17900700:Ahh, Good sir...
                assert t110171_x6(text1=17900700, flag25=0, mode16=1)
            else:
                """ State 7,12,18 """
                # talk:17001300:Greetings!  Thanks for your business, good sir!
                assert t110171_x6(text1=17001300, flag25=0, mode16=1)
    """ State 19 """
    return 0

def t110171_x51():
    """ State 0,6 """
    if not GetEventStatus(71100254):
        """ State 10 """
        # talk:17020500:Until next time, good sir.
        assert t110171_x6(text1=17020500, flag25=0, mode16=1)
    else:
        """ State 1 """
        if not GetEventStatus(71100274):
            """ State 2,7 """
            # talk:17021000:Thanks to you, sales are soaring higher than a dragon!
            assert t110171_x5(text18=17021000, z14=71100274, flag26=0, mode17=1)
        else:
            """ State 3 """
            if not GetEventStatus(71100267) and GetEventStatus(71100256) == 1:
                """ State 4,8 """
                # talk:17920000:Heheh... That's a bargain right there.
                assert t110171_x5(text18=17920000, z14=71100267, flag26=0, mode17=1)
            else:
                """ State 5,9 """
                # talk:17020500:Until next time, good sir.
                assert t110171_x6(text1=17020500, flag25=0, mode16=1)
    """ State 11 """
    return 0

def t110171_x52(flag1=70002015, text1=_, text2=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 3 """
        assert t110171_x6(text1=text2, flag25=0, mode16=1)
    else:
        """ State 2 """
        assert t110171_x6(text1=text1, flag25=0, mode16=1)
    """ State 4 """
    return 0

def t110171_x53(z2=10):
    """ State 0,3 """
    if GetEventStatus(71100257) == 1:
        """ State 10 """
        Label('L0')
        """ State 45 """
        # talk:17010900:.........
        assert t110171_x6(text1=17010900, flag25=0, mode16=1)
        """ State 13 """
        SetEventState(71100257, 0)
    elif GetEventStatus(71100261) == 1:
        """ State 16 """
        Label('L1')
        """ State 46 """
        # talk:17010800:What night?
        assert t110171_x6(text1=17010800, flag25=0, mode16=1)
        """ State 20 """
        Label('L2')
        SetMessageTagValue(0, z2)
        """ State 17 """
        ClearTalkListData()
        """ State 18 """
        # action:14017002:Purchase information for <?evntAcquittalPrice?> sen
        AddTalkListData(1, 14017002, -1)
        # action:14017003:Not interested
        AddTalkListData(2, 14017003, -1)
        """ State 19 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 22 """
        if GetTalkListEntryResult() == 1:
            """ State 41 """
            if ComparePlayerStatus(8, 4, z2) == 1:
                """ State 33 """
                SetEventState(71100273, 1)
                SetEventState(71100251, 1)
                """ State 23 """
                SetEventState(71100261, 0)
                """ State 21 """
                ChangePlayerStats(8, 1, z2)
                """ State 28 """
                SetEventState(71100262, 1)
                """ State 55 """
                # action:13017001:Paid <?evntAcquittalPrice?> sen.
                assert t110171_x8(action1=13017001)
                """ State 29 """
                Label('L3')
                if GetEventStatus(9303) == 1:
                    """ State 49 """
                    # talk:17011900:Here's some coin.
                    assert t110171_x6(text1=17011900, flag25=0, mode16=1)
                else:
                    """ State 48 """
                    # talk:17011000:Here's some coin.
                    assert t110171_x6(text1=17011000, flag25=0, mode16=1)
                """ State 30 """
                SetEventState(71100250, 1)
                """ State 37 """
                SetEventState(71100262, 0)
                """ State 58 """
                Label('L4')
                return 0
            else:
                """ State 54 """
                # action:13001700:Not enough sen.
                assert t110171_x8(action1=13001700)
        elif GetTalkListEntryResult() == 2:
            """ State 34 """
            SetEventState(71100273, 1)
            SetEventState(71100251, 1)
            """ State 24 """
            SetEventState(71100261, 0)
            """ State 25 """
            SetEventState(71100271, 1)
            """ State 27 """
            Label('L5')
            """ State 47 """
            # talk:17011100:No.
            assert t110171_x6(text1=17011100, flag25=0, mode16=1)
            """ State 26 """
            SetEventState(71100271, 0)
        else:
            pass
    elif GetEventStatus(71100271) == 1:
        Goto('L5')
    elif GetEventStatus(71100262) == 1:
        Goto('L3')
    else:
        """ State 1 """
        if not GetEventStatus(71100251):
            """ State 2 """
            if GetEventStatus(1235) == 1 or GetEventStatus(1236) == 1:
                """ State 5,43 """
                # talk:17001010:Ah... I know you.
                assert t110171_x5(text18=17001010, z14=71100265, flag26=0, mode17=1)
                Goto('L2')
            elif GetEventStatus(71000150) == 1:
                """ State 42,56 """
                # talk:17001050:Ah... I know you.
                assert t110171_x6(text1=17001050, flag25=0, mode16=1)
                Goto('L2')
            else:
                """ State 4,44 """
                # talk:17001000:Ah... I know you.
                assert t110171_x6(text1=17001000, flag25=0, mode16=1)
        else:
            """ State 31 """
            if not GetEventStatus(71100273):
                """ State 32 """
                if GetEventStatus(71000150) == 1 or GetEventStatus(1235) == 1 or GetEventStatus(1236) == 1:
                    """ State 57 """
                    # talk:17001150:Good sir, I'm so glad you're safe.
                    assert t110171_x6(text1=17001150, flag25=0, mode16=1)
                    Goto('L2')
                else:
                    """ State 50 """
                    # talk:17001100:Good sir, I'm so glad you're safe.
                    assert t110171_x6(text1=17001100, flag25=0, mode16=1)
            else:
                """ State 35 """
                if not GetEventStatus(71100250):
                    """ State 36,51 """
                    # talk:17011200:Have you changed your mind, good sir?
                    assert t110171_x6(text1=17011200, flag25=0, mode16=1)
                    Goto('L2')
                else:
                    """ State 38 """
                    if not GetEventStatus(50006170):
                        """ State 39,52 """
                        # talk:17011050:For a price,\nI might be able to tell you some other tidbits you might find useful.
                        assert t110171_x6(text1=17011050, flag25=0, mode16=1)
                        Goto('L4')
                    else:
                        """ State 40,53 """
                        # talk:17020300:I'll procure some goods with the coin you gave me.
                        assert t110171_x6(text1=17020300, flag25=0, mode16=1)
                        Goto('L6')
        """ State 6 """
        ClearTalkListData()
        """ State 7 """
        # action:14017000:"That night"?
        AddTalkListData(1, 14017000, -1)
        # action:14017001:Say nothing
        AddTalkListData(2, 14017001, -1)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 9 """
        if GetTalkListEntryResult() == 1:
            """ State 14 """
            SetEventState(71100251, 1)
            """ State 15 """
            SetEventState(71100261, 1)
            Goto('L1')
        elif GetTalkListEntryResult() == 2:
            """ State 11 """
            SetEventState(71100251, 1)
            """ State 12 """
            SetEventState(71100257, 1)
            Goto('L0')
        else:
            pass
    """ State 59 """
    Label('L6')
    return 1

def t110171_x54():
    """ State 0,1 """
    # talk:17020300:I'll procure some goods with the coin you gave me.
    assert t110171_x6(text1=17020300, flag25=0, mode16=1)
    """ State 2 """
    return 0

def t110171_x55(z1=20, mode1=_):
    """ State 0,7 """
    if mode1 == 1:
        """ State 8 """
        if GetEventStatus(71100266) == 1:
            """ State 11 """
            if GetEventStatus(50006170) == 1:
                """ State 16 """
                if GetEventStatus(70002015) == 1 and GetEventStatus(6502) == 1:
                    """ State 17 """
                    SetEventState(71100266, 0)
                else:
                    """ State 10 """
                    Label('L0')
                    if GetEventStatus(6502) == 1:
                        """ State 14 """
                        if GetEventStatus(70002015) == 1:
                            """ State 15 """
                            SetEventState(71100266, 0)
                            Goto('L2')
                        else:
                            """ State 23 """
                            # talk:17011370:... I have one., talk:17910550:... I have one.
                            assert t110171_x52(flag1=70002015, text1=17011370, text2=17910550)
                            """ State 13 """
                            SetEventState(71100266, 0)
                            """ State 24 """
                            assert t110171_x7(lot1=61710)
                            Goto('L2')
                    else:
                        """ State 25 """
                        # talk:17011350:A fire-shooting tube at the Hirata estate...
                        assert t110171_x6(text1=17011350, flag25=0, mode16=1)
                        """ State 12 """
                        SetEventState(71100266, 0)
                        Goto('L2')
            else:
                """ State 9 """
                Label('L1')
                """ State 21 """
                # talk:17011300:I'll buy some information., talk:17910400:(Wheezing with cough) 
                assert t110171_x52(flag1=70002015, text1=17011300, text2=17910400)
                """ State 22 """
                assert t110171_x7(lot1=61700)
                Goto('L0')
        else:
            pass
        """ State 28 """
        return 1
    else:
        """ State 1 """
        SetMessageTagValue(0, z1)
        """ State 18 """
        # action:12017003:Pay <?evntAcquittalPrice?> sen to purchase information?
        call = t110171_x0(action2=12017003)
        if call.Get() == 1:
            """ State 3 """
            pass
        elif call.Done():
            """ State 2 """
            if ComparePlayerStatus(8, 1, z1) == 1:
                """ State 4,19 """
                # action:13001700:Not enough sen.
                assert t110171_x8(action1=13001700)
                """ State 20 """
                # talk:17012000:Oh, good sir... Looks like you don't have enough coin., talk:17900400:(Wheezing with cough) 
                assert t110171_x52(flag1=70002015, text1=17012000, text2=17900400)
            else:
                """ State 5 """
                ChangePlayerStats(8, 1, z1)
                """ State 6 """
                SetEventState(71100266, 1)
                """ State 26 """
                # action:13017001:Paid <?evntAcquittalPrice?> sen.
                assert t110171_x8(action1=13017001)
                Goto('L1')
    """ State 27 """
    Label('L2')
    return 0

def t110171_x56():
    """ State 0,2 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 4 """
        # action:15017003:Purchase items
        AddTalkListData(1, 15017003, -1)
        """ State 1 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6 """
            OpenRegularShop(1100300, 1100399)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        else:
            """ State 7,8 """
            return 0

