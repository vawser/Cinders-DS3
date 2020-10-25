# -*- coding: utf-8 -*-
def t110200_1():
    """ State 0,1 """
    t110200_x8(flag9=1019, flag10=1015, flag11=1016, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=71100130,
               val6=7001000, flag13=6000, flag14=6001, flag15=71100131, flag16=6000, z5=2, val7=1000000,
               val8=1000000, val9=1000000)

def t110200_1000():
    """ State 0,2 """
    # goods:2910:Mechanical Barrel
    def ExitPause():
        SetEventState(71100127, 1)
    assert t110200_x35(goods1=2910)
    """ State 1 """
    def WhilePaused():
        c1119(0)

def t110200_x0(val6=7001000, flag14=6001, flag19=6000, flag20=6000, flag21=6000, flag22=6000, mode11=0,
               flag13=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag14) == 1 or GetEventStatus(flag19) == 1 or GetEventStatus(flag20)
                == 1 or GetEventStatus(flag21) == 1 or GetEventStatus(flag22) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag13)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag14) and not GetEventStatus(flag19) and not GetEventStatus(flag20)
                  and not GetEventStatus(flag21) and not GetEventStatus(flag22)):
                Continue('mainloop')
            elif GetEventStatus(flag13) == 1:
                pass
            elif CheckActionButtonArea(val6 + mode11):
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t110200_x1():
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

def t110200_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110200_x3(text2=_, flag4=_, flag18=0, mode10=1):
    """ State 0,7 """
    assert t110200_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag18:
        """ State 1 """
        TalkToPlayer(text2, -1, -1, flag18, 0)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        TalkToPlayer(text2, -1, -1, flag18, 1)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode10:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(flag4, 1)
    """ State 8 """
    return 0

def t110200_x4(text1=_, flag17=0, mode9=1):
    """ State 0,6 """
    assert t110200_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag17:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag17, 0)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag17, 1)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode9:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110200_x5(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedTime() > 0.01
    """ State 2 """
    return 0

def t110200_x6(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110200_x7(z7=4):
    """ State 0,2 """
    if not CompareRNGValue(0, 0) != -1:
        """ State 1,4 """
        ShuffleRNGSeed(z7)
    else:
        """ State 3 """
        pass
    """ State 5 """
    SetRNGSeed()
    """ State 6 """
    return 0

def t110200_x8(flag9=1019, flag10=1015, flag11=1016, val1=5, val2=10, val3=12, val4=10, val5=12, flag12=71100130,
               val6=7001000, flag13=6000, flag14=6001, flag15=71100131, flag16=6000, z5=2, val7=1000000,
               val8=1000000, val9=1000000):
    """ State 0,1 """
    while True:
        RemoveMyAggro()
        call = t110200_x9(val1=val1, val2=val2, val3=val3, val4=val4, val5=val5, flag12=flag12, val6=val6,
                          flag13=flag13, flag14=flag14, flag15=flag15, flag16=flag16, z5=z5, val7=val7,
                          val8=val8, val9=val9)
        def WhilePaused():
            c5116(GetDistanceToPlayer() < 4)
        if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1:
            pass
        elif GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1:
            """ State 3 """
            call = t110200_x24(val2=val2, val3=val3)
            if CheckSelfDeath() == 1 or GetEventStatus(flag9) == 1 or DoesSelfHaveSpEffect(30100) == 1:
                pass
            elif not GetEventStatus(flag10) and not GetEventStatus(flag11):
                continue
        """ State 2 """
        call = t110200_x10(flag9=flag9, val2=val2, val3=val3)
        assert not CheckSelfDeath() and not GetEventStatus(flag9) and not DoesSelfHaveSpEffect(30100)

def t110200_x9(val1=5, val2=10, val3=12, val4=10, val5=12, flag12=71100130, val6=7001000, flag13=6000,
               flag14=6001, flag15=71100131, flag16=6000, z5=2, val7=1000000, val8=1000000, val9=1000000):
    """ State 0,4 """
    while True:
        call = t110200_x26(val6=val6, flag13=flag13, flag14=flag14, val7=val7, val8=val8, val9=val9)
        if call.Done():
            """ State 1 """
            Label('L0')
            call = t110200_x11(val1=val1, z5=z5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                pass
        elif IsAttackedBySomeone() == 1:
            pass
        elif GetEventStatus(flag16) == 1:
            Goto('L0')
        elif not GetEventStatus(flag12) and GetEventStatus(flag15) == 1 and GetDistanceToPlayer() < val4:
            """ State 3 """
            call = t110200_x12(val5=val5)
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                pass
        """ State 2 """
        def ExitPause():
            RemoveMyAggro()
        assert t110200_x13(val2=val2, val3=val3)

def t110200_x10(flag9=1019, val2=10, val3=12):
    """ State 0,1 """
    if GetEventStatus(flag9) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < val2:
            """ State 4,6 """
            call = t110200_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > val3:
                """ State 7 """
                assert t110200_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t110200_x11(val1=5, z5=2):
    """ State 0,2 """
    ClearPlayerDamageInfo()
    TurnCharacterToFaceEntity(-1, 10000, -1)
    call = t110200_x19()
    def WhilePaused():
        c1117(z5, 10000)
        SetTalkTime(0.01)
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
    if call.Done():
        pass
    elif HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() == 1):
        """ State 1 """
        assert t110200_x16()
    elif GetDistanceToPlayer() > val1:
        """ State 3 """
        assert t110200_x15()
    """ State 4 """
    return 0

def t110200_x12(val5=12):
    """ State 0,1 """
    call = t110200_x25()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val5:
        """ State 2 """
        assert t110200_x1()
    """ State 3 """
    return 0

def t110200_x13(val2=10, val3=12):
    """ State 0 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 4 """
    assert t110200_x1()
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 2,6 """
        call = t110200_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            assert t110200_x1()
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t110200_x14(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 2 """
    call = t110200_x23()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 3 """
        assert t110200_x1()
    """ State 4 """
    return 0

def t110200_x15():
    """ State 0,1 """
    assert t110200_x1()
    """ State 2 """
    return 0

def t110200_x16():
    """ State 0,2 """
    assert t110200_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110200_x17(val2=10, val3=12):
    """ State 0,2,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110200_x22()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 4 """
        assert t110200_x1()
    """ State 5 """
    return 0

def t110200_x18():
    """ State 0,1 """
    assert t110200_x20(z6=1101, mode5=0, mode6=0, mode7=0, mode8=0)
    """ State 2 """
    return 0

def t110200_x19():
    """ State 0,2 """
    assert f116(10000) == 1
    """ State 1 """
    assert GetCurrentStateElapsedTime() > 0.60000000000000009
    """ State 3 """
    assert t110200_x20(z6=1000, mode5=0, mode6=0, mode7=0, mode8=0)
    """ State 4 """
    return 0

def t110200_x20(z6=_, mode5=0, mode6=0, mode7=0, mode8=0):
    """ State 0,4 """
    if f118(z6) == 1:
        """ State 2 """
        assert GetCurrentStateElapsedFrames() > 1
        """ State 1 """
        def WhilePaused():
            c1118(z6)
        assert f117() == mode5 or f117() == mode6 or f117() == mode7 or f117() == mode8
        """ State 5 """
        return 0
    else:
        """ State 3,6 """
        return 1

def t110200_x21():
    """ State 0,1 """
    call = t110200_x20(z6=1103, mode5=0, mode6=0, mode7=0, mode8=0)
    if call.Get() == 1:
        """ State 2 """
        assert t110200_x1()
    elif call.Get() == 0:
        pass
    """ State 3 """
    return 0

def t110200_x22():
    """ State 0,2 """
    call = t110200_x20(z6=1102, mode5=0, mode6=0, mode7=0, mode8=0)
    if call.Get() == 1:
        """ State 1 """
        pass
    elif call.Done():
        """ State 3 """
        return 0

def t110200_x23():
    """ State 0,1 """
    assert t110200_x20(z6=1001, mode5=0, mode6=0, mode7=0, mode8=0)
    """ State 2 """
    return 0

def t110200_x24(val2=10, val3=12):
    """ State 0,1 """
    while True:
        call = t110200_x17(val2=val2, val3=val3)
        if f122() == 1:
            break
        elif not f122():
            """ State 3 """
            call = t110200_x27(val2=val2, val3=val3)
            assert not IsPlayerDead()
    """ State 2 """
    t110200_x14(val2=val2, val3=val3)

def t110200_x25():
    """ State 0,1 """
    assert t110200_x20(z6=1100, mode5=0, mode6=0, mode7=0, mode8=0)
    """ State 2 """
    return 0

def t110200_x26(val6=7001000, flag13=6000, flag14=6001, val7=1000000, val8=1000000, val9=1000000):
    """ State 0,3 """
    call = t110200_x20(z6=2000, mode5=0, mode6=0, mode7=0, mode8=0)
    if call.Get() == 1:
        """ State 4 """
        while Loop('mainloop'):
            call = t110200_x0(val6=val6, flag14=flag14, flag19=6000, flag20=6000, flag21=6000, flag22=6000,
                              mode11=0, flag13=flag13)
            if call.Done():
                break
            elif not f116(-1) == val7 and not f116(-1) == val8 and not f116(-1) == val9 and not DoesSelfHaveSpEffect(4510):
                """ State 1 """
                while True:
                    assert (f116(-1) == val7 or f116(-1) == val8 or f116(-1) == val9 or DoesSelfHaveSpEffect(4510)
                            == 1)
                    """ State 2 """
                    if GetCurrentStateElapsedTime() > 1:
                        Continue('mainloop')
                    elif (f116(-1) == val7 and f116(-1) == val8 and f116(-1) == val9 and DoesSelfHaveSpEffect(4510)
                          == 1):
                        pass
    elif call.Done():
        pass
    """ State 5 """
    return 0

def t110200_x27(val2=10, val3=12):
    """ State 0,1 """
    assert GetDistanceToPlayer() < val2
    """ State 3 """
    call = t110200_x28()
    if call.Done():
        pass
    elif GetDistanceToPlayer() > val3:
        """ State 2 """
        assert t110200_x1()
    """ State 4 """
    return 0

def t110200_x28():
    """ State 0,1 """
    assert t110200_x20(z6=1002, mode5=0, mode6=0, mode7=0, mode8=0)
    """ State 2 """
    return 0

def t110200_x29(flag5=71100575, flag6=71100576, flag7=71100577, flag8=71100578, z4=71100580):
    """ State 0,2 """
    # goods:9100:Ashina Sake
    call = t110200_x30(flag5=flag5, goods2=9100)
    if call.Get() == 0:
        pass
    elif call.Done():
        """ State 3 """
        # goods:9100:Ashina Sake
        call = t110200_x30(flag5=flag5, goods2=9100)
        if call.Get() == 0:
            pass
        elif call.Done():
            """ State 4 """
            # goods:9101:Unrefined Sake
            call = t110200_x30(flag5=flag6, goods2=9101)
            if call.Get() == 0:
                pass
            elif call.Done():
                """ State 5 """
                # goods:9101:Unrefined Sake
                call = t110200_x30(flag5=flag6, goods2=9101)
                if call.Get() == 0:
                    pass
                elif call.Done():
                    """ State 6 """
                    # goods:9102:Monkey Booze
                    call = t110200_x30(flag5=flag7, goods2=9102)
                    if call.Get() == 0:
                        pass
                    elif call.Done():
                        """ State 7 """
                        # goods:9103:Dragonspring Sake
                        call = t110200_x30(flag5=flag8, goods2=9103)
                        if call.Get() == 0:
                            pass
                        elif call.Done():
                            """ State 1 """
                            SetEventState(z4, 1)
    """ State 8 """
    return 0

def t110200_x30(flag5=_, goods2=_):
    """ State 0,1 """
    if ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1 and not GetEventStatus(flag5):
        """ State 2,4 """
        return 0
    else:
        """ State 3,5 """
        return 1

def t110200_x31(text1=_, text2=_, lot1=_, flag3=_, flag4=_, mode4=_):
    """ State 0,3 """
    if not mode4:
        """ State 4,8 """
        assert t110200_x4(text1=text1, flag17=0, mode9=1)
        """ State 2 """
        SetEventState(flag3, 1)
        """ State 10 """
        assert t110200_x5(lot1=lot1)
    else:
        """ State 5 """
        if GetEventStatus(flag3) == 1 and not GetEventStatus(flag4):
            """ State 6 """
            pass
        else:
            """ State 7,12 """
            return 1
    """ State 1,9 """
    assert t110200_x3(text2=text2, flag4=flag4, flag18=0, mode10=1)
    """ State 11 """
    return 0

def t110200_x32():
    """ State 0,2 """
    if (GetEventStatus(6500) == 1 or GetEventStatus(6501) == 1 or GetEventStatus(6502) == 1 or GetEventStatus(6503)
        == 1 or GetEventStatus(6504) == 1 or GetEventStatus(6505) == 1 or GetEventStatus(6506) == 1 or
        GetEventStatus(6507) == 1 or GetEventStatus(6508) == 1 or GetEventStatus(6509) == 1):
        """ State 3 """
        if not GetEventStatus(1001):
            """ State 7 """
            pass
        else:
            """ State 6 """
            pass
        """ State 5 """
        SetEventState(71100125, 1)
        assert GetEventStatus(71100126) == 1
        """ State 4 """
        c1111(1101000, 1101009)
        SetEventState(71100126, 0)
        assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 8 """
        if GetEventStatus(1001) == 1:
            """ State 9 """
            pass
        else:
            """ State 10,11 """
            if not GetEventStatus(50006104) and GetEventStatus(71100144) == 1:
                """ State 12,15 """
                SetEventState(71100125, 0)
                # talk:10003200:The Shinobi prosthetic..., talk:10003250:What is it...?
                assert (t110200_x31(text1=10003200, text2=10003250, lot1=61004, flag3=71100595, flag4=71100113,
                        mode4=0))
                """ State 17 """
                return 1
            else:
                """ State 13 """
                pass
    else:
        """ State 1,14 """
        # action:13010000:You do not have any Shinobi Tools to fit to the Shinobi Prosthetic.
        assert t110200_x6(action1=13010000)
    """ State 16 """
    return 0

def t110200_x33():
    """ State 0,3 """
    if not GetEventStatus(1001):
        """ State 4 """
        pass
    else:
        """ State 5 """
        pass
    """ State 2 """
    SetEventState(71100125, 1)
    assert GetEventStatus(71100126) == 1
    """ State 1 """
    c1123()
    SetEventState(71100126, 0)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 6 """
    return 0

def t110200_x34(mode3=0):
    """ State 0,11 """
    if not mode3:
        """ State 12,18 """
        # talk:10012600:I've held onto this charm of yours.
        assert t110200_x4(text1=10012600, flag17=0, mode9=1)
        """ State 5 """
        c1110()
        """ State 4 """
        ClearTalkListData()
        """ State 6 """
        # action:14010011:Let him keep Kuro's Charm
        AddTalkListData(2, 14010011, 6001)
        # action:14010010:Take Kuro's Charm back
        AddTalkListData(1, 14010010, 6001)
        """ State 7 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 1 """
            Label('L0')
            """ State 9 """
            SetEventState(71100593, 1)
            """ State 20 """
            # talk:10012600:I've held onto this charm of yours.
            assert t110200_x4(text1=10012600, flag17=0, mode9=1)
            """ State 14 """
            SetEventState(71100593, 0)
            """ State 3 """
            c1121(0)
            """ State 17 """
            assert t110200_x5(lot1=61002)
            """ State 16 """
            # action:13010100:You will not experience additional hardships in this playthrough.
            assert t110200_x6(action1=13010100)
        elif GetTalkListEntryResult() == 2:
            """ State 2 """
            Label('L1')
            """ State 8 """
            SetEventState(71100594, 1)
            """ State 19 """
            # talk:10012600:I've held onto this charm of yours.
            assert t110200_x4(text1=10012600, flag17=0, mode9=1)
            """ State 15 """
            SetEventState(71100594, 0)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 10 """
            pass
    else:
        """ State 13 """
        if GetEventStatus(71100593) == 1:
            Goto('L0')
        elif GetEventStatus(71100594) == 1:
            Goto('L1')
        else:
            """ State 22 """
            return 1
    """ State 21 """
    return 0

def t110200_x35(goods1=2910):
    """ State 0,45,85 """
    # talk:10003200:The Shinobi prosthetic..., talk:10003250:What is it...?
    call = t110200_x31(text1=10003200, text2=10003250, lot1=61004, flag3=71100595, flag4=71100113, mode4=1)
    if call.Get() == 1:
        """ State 1 """
        if GetEventStatus(1001) == 1:
            """ State 2,46 """
            assert t110200_x36()
        else:
            """ State 3 """
            if GetEventStatus(70002000) == 1:
                """ State 4 """
                if not GetEventStatus(71100109):
                    """ State 5,47 """
                    # talk:10080000:(coughing)
                    assert t110200_x3(text2=10080000, flag4=71100109, flag18=0, mode10=1)
                    Goto('L0')
                elif GetEventStatus(71100148) == 1:
                    """ State 6 """
                    if not GetEventStatus(71100109):
                        """ State 7,48 """
                        # talk:10080000:(coughing)
                        assert t110200_x3(text2=10080000, flag4=71100109, flag18=0, mode10=1)
                    else:
                        """ State 8,50 """
                        # talk:10080700:.........
                        assert t110200_x4(text1=10080700, flag17=0, mode9=1)
                else:
                    """ State 9 """
                    if not GetEventStatus(6001):
                        """ State 10,51 """
                        # talk:10080100:Ask Emma... about the rest...
                        assert t110200_x4(text1=10080100, flag17=0, mode9=1)
                        Goto('L0')
                    else:
                        """ State 11,52 """
                        # talk:10080200:(Cough, cough...)
                        assert t110200_x4(text1=10080200, flag17=0, mode9=1)
                """ State 49 """
                assert t110200_x36()
            else:
                """ State 15 """
                if not GetEventStatus(71100100):
                    """ State 16,55 """
                    # talk:10000900:What do you call yourself?
                    assert t110200_x3(text2=10000900, flag4=71100100, flag18=0, mode10=1)
                    """ State 56 """
                    assert t110200_x36()
                else:
                    """ State 12 """
                    if GetEventStatus(71100145) == 1:
                        """ State 13,53 """
                        # talk:10080800:.........
                        assert t110200_x4(text1=10080800, flag17=0, mode9=1)
                        """ State 14 """
                        SetEventState(71100145, 0)
                        """ State 54 """
                        assert t110200_x36()
                    else:
                        """ State 18 """
                        if not GetEventStatus(71100119):
                            """ State 84 """
                            call = t110200_x45()
                            if call.Get() == 1:
                                """ State 17,57 """
                                # talk:10001300:I've found one...
                                assert t110200_x3(text2=10001300, flag4=71100119, flag18=0, mode10=1)
                                """ State 58 """
                                assert t110200_x36()
                                Goto('L0')
                            elif call.Done():
                                pass
                        # goods:2910:Mechanical Barrel
                        elif (ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 and GetEventStatus(71100119)
                              == 1):
                            """ State 19,60 """
                            # talk:10001300:I've found one...
                            assert t110200_x4(text1=10001300, flag17=0, mode9=1)
                            """ State 61 """
                            def ExitPause():
                                SetEventState(71100125, 0)
                                SetEventState(71100126, 0)
                            assert t110200_x43(goods1=goods1)
                            """ State 59 """
                            assert t110200_x36()
                            Goto('L0')
                        else:
                            pass
                        """ State 20 """
                        if GetEventStatus(6000) == 1 and not GetEventStatus(50006100):
                            """ State 21,62 """
                            # talk:10003100:........., talk:10003150:What is it...?
                            assert (t110200_x31(text1=10003100, text2=10003150, lot1=61000, flag3=71100590,
                                    flag4=71100112, mode4=0))
                            """ State 67 """
                            assert t110200_x36()
                        else:
                            """ State 22 """
                            # goods:9010:Young Lord's Bell Charm
                            if (not GetEventStatus(11100630) and ComparePlayerInventoryNumber(3, 9010,
                                2, 0, 0) == 1):
                                """ State 23 """
                                if not GetEventStatus(71100101):
                                    """ State 25 """
                                    if GetEventStatus(71100155) == 1:
                                        """ State 26,63 """
                                        # talk:10001400:I can... hear the ring-ring of a bell chime.
                                        assert t110200_x4(text1=10001400, flag17=0, mode9=1)
                                    else:
                                        """ State 27,64 """
                                        # talk:10001500:I can... hear the ring-ring of a bell chime.
                                        assert t110200_x4(text1=10001500, flag17=0, mode9=1)
                                    """ State 28 """
                                    SetEventState(71100101, -1)
                                else:
                                    """ State 24,65 """
                                    # talk:10001600:I've gone and said much too much.
                                    assert t110200_x4(text1=10001600, flag17=0, mode9=1)
                                """ State 68 """
                                assert t110200_x36()
                            else:
                                """ State 29 """
                                if GetEventStatus(11100630) == 1 and not GetEventStatus(71100103):
                                    """ State 30,66 """
                                    # talk:10001700:... So you're back.
                                    assert t110200_x3(text2=10001700, flag4=71100103, flag18=0, mode10=1)
                                    """ State 69 """
                                    assert t110200_x36()
                                else:
                                    """ State 31 """
                                    if GetEventStatus(9302) == 1 and not GetEventStatus(71100102):
                                        """ State 32,71 """
                                        # talk:10001800:It appears...
                                        assert t110200_x4(text1=10001800, flag17=0, mode9=1)
                                        """ State 70 """
                                        assert (t110200_x44(z1=10001900, z2=10002000, flag1=71100591,
                                                z3=71100592, flag2=71100102))
                                    elif not GetEventStatus(71100104) and GetEventStatus(9303) == 1:
                                        """ State 34,73 """
                                        # talk:10002200:Oh, you're here? Need something?
                                        assert (t110200_x3(text2=10002200, flag4=71100104, flag18=0,
                                                mode10=1))
                                    else:
                                        """ State 33 """
                                        if GetEventStatus(9308) == 1 and not GetEventStatus(71100106):
                                            """ State 35,74 """
                                            # talk:10002500:.........
                                            assert (t110200_x3(text2=10002500, flag4=71100106, flag18=0,
                                                    mode10=1))
                                        elif GetEventStatus(9317) == 1 and not GetEventStatus(71100107):
                                            """ State 36,75 """
                                            # talk:10002700:You have a slightly different air about you now.
                                            assert (t110200_x3(text2=10002700, flag4=71100107, flag18=0,
                                                    mode10=1))
                                        else:
                                            """ State 37 """
                                            if GetEventStatus(6000) == 1 and not GetEventStatus(71100105):
                                                """ State 38,77 """
                                                # talk:10002300:I brought tea.
                                                assert (t110200_x3(text2=10002300, flag4=71100105, flag18=0,
                                                        mode10=1))
                                                """ State 78 """
                                                assert t110200_x36()
                                                Goto('L0')
                                            else:
                                                """ State 39 """
                                                # goods:9790:Slender Finger
                                                if (not GetEventStatus(71100108) and ComparePlayerInventoryNumber(3,
                                                    9790, 2, 0, 0) == 1):
                                                    """ State 40,79 """
                                                    # talk:10002300:I brought tea.
                                                    assert (t110200_x3(text2=10002300, flag4=71100108,
                                                            flag18=0, mode10=1))
                                                    """ State 80 """
                                                    assert t110200_x36()
                                                    Goto('L0')
                                                else:
                                                    """ State 41,42 """
                                                    if not GetEventStatus(71100119):
                                                        """ State 43,81 """
                                                        # talk:10001000:You again?
                                                        assert t110200_x4(text1=10001000, flag17=0, mode9=1)
                                                    else:
                                                        """ State 44,82 """
                                                        # talk:10002900:You... Need something?
                                                        assert t110200_x4(text1=10002900, flag17=0, mode9=1)
                                                    """ State 83 """
                                                    assert t110200_x36()
                                                    Goto('L0')
                                        """ State 76 """
                                        assert t110200_x36()
                                        Goto('L0')
                                    """ State 72 """
                                    assert t110200_x36()
    elif call.Done():
        """ State 86 """
        assert t110200_x36()
    """ State 87 """
    Label('L0')
    return 0

def t110200_x36():
    """ State 0,5 """
    if not GetEventStatus(1001):
        """ State 1 """
        if not GetEventStatus(70002000) and not GetEventStatus(71100119):
            """ State 3,6 """
            assert t110200_x37(mode2=0)
        else:
            """ State 4,7 """
            assert t110200_x39()
    else:
        """ State 2,8 """
        assert t110200_x41(mode1=0)
    """ State 9 """
    return 0

def t110200_x37(mode2=_):
    """ State 0,4 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 5 """
        # action:15010300:Ask how you got here
        AddTalkListData(20, 15010300, 6001)
        # action:15010301:Ask about your new left arm
        AddTalkListData(21, 15010301, 6001)
        # action:15010302:Ask about the Divine Heir's blood
        AddTalkListDataIf(GetEventStatus(71100115) == 1, 22, 15010302, 6001)
        if not mode2:
            """ State 9,11 """
            ShowShopMessage(1)
        else:
            """ State 10,12 """
            c1126(1)
        """ State 2 """
        if GetTalkListEntryResult() == 20:
            """ State 1 """
            if not GetEventStatus(71100115):
                """ State 13 """
                # talk:10011200:Why am I here?
                assert t110200_x3(text2=10011200, flag4=71100115, flag18=0, mode10=1)
            else:
                """ State 14 """
                # talk:10011300:Some time has passed since I found you...
                assert t110200_x4(text1=10011300, flag17=0, mode9=1)
        elif GetTalkListEntryResult() == 21:
            """ State 6 """
            if not GetEventStatus(71100116):
                """ State 15 """
                # talk:10011400:My left arm... What did you do to me?
                assert t110200_x3(text2=10011400, flag4=71100116, flag18=0, mode10=1)
            else:
                """ State 16 """
                # talk:10011500:That is what I call the Shinobi Prosthetic.  
                assert t110200_x4(text1=10011500, flag17=0, mode9=1)
        elif GetTalkListEntryResult() == 22:
            """ State 7 """
            if not GetEventStatus(71100117):
                """ State 17 """
                # talk:10011600:What did you mean when you said they'll make use of his bloodline?
                assert t110200_x3(text2=10011600, flag4=71100117, flag18=0, mode10=1)
            else:
                """ State 18 """
                # talk:10011700:The Dragon's Heritage.
                assert t110200_x4(text1=10011700, flag17=0, mode9=1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 8 """
            if not mode2:
                """ State 19 """
                assert t110200_x38()
            else:
                pass
            """ State 20 """
            return 0

def t110200_x38():
    """ State 0,1 """
    if GetEventStatus(70002000) == 1:
        """ State 3,10 """
        # talk:10080300:......... (Wheeze...)
        assert t110200_x4(text1=10080300, flag17=0, mode9=1)
    else:
        """ State 2 """
        if not GetEventStatus(71100135):
            """ State 5,12 """
            # talk:10020100:You're quite the strange one, yet...
            assert t110200_x3(text2=10020100, flag4=71100135, flag18=0, mode10=1)
        elif not GetEventStatus(71100136) and not GetEventStatus(71100146):
            """ State 6,13 """
            # talk:10020200:Yes, right... that kind-faced Buddha you see over there...?
            assert t110200_x3(text2=10020200, flag4=71100136, flag18=0, mode10=1)
        elif not GetEventStatus(71100137) and GetEventStatus(71100119) == 1:
            """ State 7,14 """
            # talk:10020400:If you want more forms for that fang of yours...
            assert t110200_x3(text2=10020400, flag4=71100137, flag18=0, mode10=1)
        elif not GetEventStatus(71100138) and GetEventStatus(71100120) == 1:
            """ State 8,15 """
            # talk:10020300:With the mechanical barrel... so many possibliites...
            assert t110200_x3(text2=10020300, flag4=71100138, flag18=0, mode10=1)
        elif not GetEventStatus(71100139) and GetEventStatus(79901190) == 1:
            """ State 9,16 """
            # talk:10020500:... Listen.
            assert t110200_x3(text2=10020500, flag4=71100139, flag18=0, mode10=1)
        else:
            """ State 4,11 """
            # talk:10020600:Another time, then.
            assert t110200_x4(text1=10020600, flag17=0, mode9=1)
    """ State 17 """
    return 0

def t110200_x39():
    """ State 0,15 """
    assert t110200_x29(flag5=71100575, flag6=71100576, flag7=71100577, flag8=71100578, z4=71100580)
    """ State 4 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 5 """
        # action:15010000:Fit New Prosthetic Tool
        AddTalkListData(2, 15010000, 6001)
        # action:15010003:Present Shinobi Prosthetic
        AddTalkListDataIf(GetEventStatus(71100120) == 1, 3, 15010003, 6001)
        # action:15000510:Give Drink
        AddTalkListDataIf(GetEventStatus(71100580) == 1, 2, 15000510, 6001)
        # action:15000520:Give Dragonrot Pellet
        AddTalkListDataIf(GetEventStatus(70002000) == 1 and ComparePlayerInventoryNumber(3, 9550, 2, 0, 0) == 1,
                          2, 15000520, 6001)
        # action:15010900:Avoid additional hardships
        AddTalkListDataIf(GetEventStatus(6911) == 1, 4, 15010900, 6001)
        # action:15000000:Talk
        AddTalkListData(1, 15000000, 6001)
        """ State 9 """
        ShowShopMessage(1)
        """ State 2 """
        if GetTalkListEntryResult() == 1:
            """ State 1,14 """
            assert t110200_x42()
        elif GetTalkListEntryResult() == 2:
            """ State 6,11 """
            def ExitPause():
                SetEventState(71100125, 0)
            assert t110200_x32()
        elif GetTalkListEntryResult() == 3:
            """ State 7,12 """
            assert t110200_x41(mode1=1)
        elif GetTalkListEntryResult() == 4:
            """ State 10,13 """
            assert t110200_x34(mode3=0)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 8,16 """
            assert t110200_x38()
            """ State 17 """
            return 0

def t110200_x40(mode1=_):
    """ State 0,4 """
    c1110()
    """ State 3 """
    while True:
        ClearTalkListData()
        """ State 5 """
        # action:15010000:Fit New Prosthetic Tool
        AddTalkListData(10, 15010000, 6001)
        # action:15010001:Upgrade Prosthetic Tool
        AddTalkListDataIf(not GetEventStatus(1001), 11, 15010001, 6001)
        if mode1 == 1:
            """ State 8,11 """
            c1126(1)
        else:
            """ State 10,9 """
            ShowShopMessage(1)
        """ State 2 """
        if GetTalkListEntryResult() == 10:
            """ State 1,12 """
            call = t110200_x32()
            if call.Get() == 1:
                break
            elif call.Done():
                pass
        elif GetTalkListEntryResult() == 11:
            """ State 6,13 """
            assert t110200_x33()
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7 """
            break
    """ State 14 """
    return 0

def t110200_x41(mode1=_):
    """ State 0,1 """
    SetEventState(71100125, 0)
    assert t110200_x40(mode1=mode1)
    """ State 2 """
    return 0

def t110200_x42():
    """ State 0,1 """
    if GetEventStatus(70002000) == 1:
        """ State 2,6 """
        # talk:10080400:(Cough, cough...)
        assert t110200_x4(text1=10080400, flag17=0, mode9=1)
    else:
        """ State 3 """
        if not GetEventStatus(9303):
            """ State 4,7 """
            # talk:10001100:No matter what I do, any Buddha I carve is an incarnation of wrath. 
            assert t110200_x4(text1=10001100, flag17=0, mode9=1)
            """ State 8 """
            assert t110200_x37(mode2=1)
        else:
            """ State 5,9 """
            call = t110200_x7(z7=4)
            if call.Done() and CompareRNGValue(0, 0) == 1:
                """ State 10 """
                # talk:10012200:Idols are all I can carve.
                assert t110200_x4(text1=10012200, flag17=0, mode9=1)
            elif call.Done() and CompareRNGValue(0, 1) == 1:
                """ State 11 """
                # talk:10012300:I've abandoned the path of the Shinobi.
                assert t110200_x4(text1=10012300, flag17=0, mode9=1)
            elif call.Done() and CompareRNGValue(0, 2) == 1:
                """ State 12 """
                # talk:10012400:.........
                assert t110200_x4(text1=10012400, flag17=0, mode9=1)
            elif call.Done():
                """ State 13 """
                # talk:10012500:Ahh.. I'm parched.
                assert t110200_x4(text1=10012500, flag17=0, mode9=1)
    """ State 14 """
    return 0

def t110200_x43(goods1=2910):
    """ State 0,1 """
    SetEventState(71100125, 1)
    assert GetEventStatus(71100126) == 1
    """ State 3 """
    # talk:10002150:What difference does the barrel make?
    assert t110200_x3(text2=10002150, flag4=71100120, flag18=0, mode10=1)
    """ State 2 """
    # goods:2910:Mechanical Barrel
    PlayerEquipmentQuantityChange(3, goods1, -1)
    """ State 4 """
    # action:13010101:Gave Mechanical Barrel.
    assert t110200_x6(action1=13010101)
    """ State 5 """
    return 0

def t110200_x44(z1=10001900, z2=10002000, flag1=71100591, z3=71100592, flag2=71100102):
    """ State 0,11 """
    if GetEventStatus(flag1) == 1 and not GetEventStatus(flag2):
        """ State 5 """
        Label('L0')
        """ State 8 """
        SetEventState(flag1, 1)
        """ State 13 """
        # talk:10001900:Sculptor...
        assert t110200_x4(text1=10001900, flag17=0, mode9=1)
        """ State 10 """
        SetEventState(flag2, 1)
    elif GetEventStatus(flag1) == 1 and not GetEventStatus(flag2):
        """ State 6 """
        Label('L1')
        """ State 9 """
        SetEventState(z3, 1)
        """ State 14 """
        # talk:10002000:I understand.
        t110200_x4(text1=10002000, flag17=0, mode9=1)
        Quit()
    else:
        """ State 12,2 """
        c1110()
        """ State 1 """
        ClearTalkListData()
        """ State 3 """
        # action:15010301:Ask about your new left arm
        AddTalkListData(2, 15010301, 6001)
        # action:15010302:Ask about the Divine Heir's blood
        AddTalkListDataIf(GetEventStatus(71100120) == 1, 3, 15010302, 6001)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        if GetTalkListEntryResult() == 1:
            Goto('L0')
        elif GetTalkListEntryResult() == 1:
            Goto('L1')
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7 """
            pass
    """ State 15 """
    return 0

def t110200_x45():
    """ State 0,1 """
    if (not GetEventStatus(6500) and not GetEventStatus(6501) and not GetEventStatus(6502) and not GetEventStatus(6503)
        and not GetEventStatus(6504)):
        """ State 2 """
        if (not GetEventStatus(6505) and not GetEventStatus(6506) and not GetEventStatus(6507) and not
            GetEventStatus(6508) and not GetEventStatus(6509)):
            """ State 4,5 """
            return 0
        else:
            pass
    else:
        pass
    """ State 3,6 """
    return 1

