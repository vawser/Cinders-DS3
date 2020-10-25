# -*- coding: utf-8 -*-
def t110101_1():
    """ State 0,2 """
    while True:
        # goods:9011:Father's Bell Charm
        if ComparePlayerInventoryNumber(3, 9011, 2, 0, 0) == 1:
            """ State 3 """
            if GetEventStatus(9302) == 1:
                """ State 12,17 """
                assert (t110101_x0(val1=1100021, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                        mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1))
                """ State 5,6 """
                SetEventState(71100599, 1)
                continue
            else:
                """ State 13 """
                # goods:9010:Young Lord's Bell Charm
                if ComparePlayerInventoryNumber(3, 9010, 2, 0, 0) == 1:
                    """ State 14 """
                    pass
                else:
                    """ State 15,20 """
                    call = t110101_x0(val1=1100021, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                                      mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1)
                    if call.Done() and not GetEventStatus(1001):
                        """ State 7,18 """
                        TurnCharacterToFaceEntity(-1, 10000, -1)
                        # talk:10003500:Wait...
                        def WhilePaused():
                            c1117(1, 10000)
                        assert t110101_x4(text1=10003500, flag7=0, mode2=1)
                        continue
                    elif call.Done():
                        """ State 8,19 """
                        TurnCharacterToFaceEntity(-1, 10000, -1)
                        # action:13010103:Old memories must be experienced in a certain order.\nIt seems there's another bell that must be used first.
                        def WhilePaused():
                            c1117(1, 10000)
                        assert t110101_x5(action1=13010103)
                        continue
                    # goods:9010:Young Lord's Bell Charm
                    elif ComparePlayerInventoryNumber(3, 9010, 2, 0, 0) == 1 or GetEventStatus(9302) == 1:
                        continue
        # goods:9010:Young Lord's Bell Charm
        elif ComparePlayerInventoryNumber(3, 9010, 2, 0, 0) == 1:
            """ State 1 """
            pass
        elif not GetEventStatus(71100555):
            """ State 9,21 """
            call = t110101_x0(val1=1100022, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                              mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1)
            if call.Done() and not GetEventStatus(1001):
                """ State 10,23 """
                TurnCharacterToFaceEntity(-1, 10000, -1)
                ClearPlayerDamageInfo()
                # talk:10003000:You see the kind-faced Buddha there...? That isn't one of mine.
                call = t110101_x3(text2=10003000, z1=71100555, flag8=0, mode3=1)
                def WhilePaused():
                    c1117(1, 10000)
                if call.Done():
                    continue
                elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                      == 1) or IsPlayerDead() == 1 or f116(10000) == 90):
                    """ State 24 """
                    assert t110101_x6()
                    continue
            elif call.Done():
                """ State 11,22 """
                TurnCharacterToFaceEntity(-1, 10000, -1)
                # action:13010104:This Buddha has a kind look to it.\nPerhaps an offering of some sort should be made.
                def WhilePaused():
                    c1117(1, 10000)
                assert t110101_x5(action1=13010104)
                continue
            # goods:9010:Young Lord's Bell Charm, goods:9011:Father's Bell Charm
            elif (ComparePlayerInventoryNumber(3, 9010, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3,
                  9011, 2, 0, 0) == 1):
                continue
        """ State 16 """
        call = t110101_x0(val1=1100020, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0,
                          flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1)
        if call.Done():
            """ State 4 """
            SetEventState(71100598, 1)
        # goods:9011:Father's Bell Charm
        elif GetEventStatus(9302) == 1 and ComparePlayerInventoryNumber(3, 9011, 2, 0, 0) == 1:
            pass

def t110101_x0(val1=_, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000,
               val2=-1, val3=-1, val4=-1, val5=-1, val6=-1):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t110101_x7(val1=val1, flag1=flag1, flag2=flag2, flag3=flag3, flag4=flag4, flag5=flag5,
                          mode1=mode1, flag6=flag6)
        if call.Done():
            break
        elif (not f116(-1) == val2 and not f116(-1) == val3 and not f116(-1) == val4 and not DoesSelfHaveSpEffect(4510)
              and not val2 == -1 and not f116(-1) == val5 and not f116(-1) == val6):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val2 or f116(-1) == val3 or f116(-1) == val4 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val5 and f116(-1) == val6))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val2 and not f116(-1) == val3 and not f116(-1) == val4 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val5 and not f116(-1) == val6):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t110101_x1():
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

def t110101_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t110101_x3(text2=10003000, z1=71100555, flag8=0, mode3=1):
    """ State 0,7 """
    assert t110101_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag8:
        """ State 1 """
        # talk:10003000:You see the kind-faced Buddha there...? That isn't one of mine.
        TalkToPlayer(text2, -1, -1, flag8, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:10003000:You see the kind-faced Buddha there...? That isn't one of mine.
        TalkToPlayer(text2, -1, -1, flag8, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z1, 1)
    """ State 8 """
    return 0

def t110101_x4(text1=10003500, flag7=0, mode2=1):
    """ State 0,6 """
    assert t110101_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag7:
        """ State 1 """
        # talk:10003500:Wait...
        TalkToPlayer(text1, -1, -1, flag7, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:10003500:Wait...
        TalkToPlayer(text1, -1, -1, flag7, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode2:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t110101_x5(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t110101_x6():
    """ State 0,2 """
    assert t110101_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t110101_x7(val1=_, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag6)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3)
                  and not GetEventStatus(flag4) and not GetEventStatus(flag5)):
                Continue('mainloop')
            elif GetEventStatus(flag6) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode1) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

