# -*- coding: utf-8 -*-
def t250010_1():
    """ State 0 """
    while True:
        """ State 2 """
        assert (t250010_x0(val1=9720, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000, mode1=0,
                flag6=72508004, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1))
        """ State 1 """
        ClearPlayerDamageInfo()
        call = t250010_x3()
        if call.Done():
            pass
        elif HasPlayerBeenAttacked() == 1 or IsPlayerDead() == 1:
            """ State 3 """
            assert t250010_x1()

def t250010_x0(val1=9720, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000, mode1=0, flag6=72508004,
               val2=-1, val3=-1, val4=-1, val5=-1, val6=-1):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t250010_x2(val1=val1, flag1=flag1, flag2=flag2, flag3=flag3, flag4=flag4, flag5=flag5,
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

def t250010_x1():
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

def t250010_x2(val1=9720, flag1=6001, flag2=6000, flag3=6000, flag4=6000, flag5=6000, mode1=0, flag6=72508004):
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

def t250010_x3():
    """ State 0,2 """
    SetEventState(72508000, 1)
    def ExitPause():
        SetEventState(72508000, 0)
    assert t250010_x4()
    """ State 1 """
    assert GetCurrentStateElapsedTime() > 3
    """ State 3 """
    return 0

def t250010_x4():
    """ State 0,17 """
    SetEventState(72508003, 0)
    """ State 12 """
    if GetEventStatus(9370) == 1:
        """ State 13 """
        assert GetCurrentStateElapsedTime() > 8
        """ State 16 """
        SetEventState(72508003, 1)
        assert GetCurrentStateElapsedFrames() > 1
    else:
        """ State 14 """
        assert GetEventStatus(72508005) == 1
        """ State 1,3 """
        c1110()
        """ State 2 """
        while True:
            ClearTalkListData()
            """ State 4 """
            # goods:9180:Precious Bait, action:14000500:Use Precious Bait
            AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9180, 4, 1, 0) == 1, 1, 14000500, 6001)
            # goods:9181:Truly Precious Bait, goods:9182:Truly Precious Bait, action:14000501:Select Truly Precious Bait
            AddTalkListDataIf((ComparePlayerInventoryNumber(3, 9181, 4, 1, 0) == 1 or ComparePlayerInventoryNumber(3, 9182, 4, 1, 0) == 1) and not GetEventStatus(72508002),
                              2, 14000501, 6001)
            # action:14000502:Leave
            AddTalkListData(99, 14000502, 6001)
            """ State 5 """
            OpenConversationChoicesMenu(1)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 27 """
            if GetTalkListEntryResult() == 1:
                """ State 7,11 """
                # goods:9180:Precious Bait
                PlayerEquipmentQuantityChange(3, 9180, -1)
                """ State 9 """
                SetEventState(72508001, 1)
                """ State 28 """
                SetEventState(72508009, 1)
                """ State 18 """
                Label('L0')
                SetEventState(72500042, 1)
                """ State 19 """
                if GetEventStatus(72500044) == 1:
                    """ State 22 """
                    pass
                elif GetEventStatus(72500043) == 1:
                    """ State 21 """
                    SetEventState(72500044, 1)
                else:
                    """ State 20 """
                    SetEventState(72500043, 1)
                """ State 25 """
                assert not GetEventStatus(72508001) and not GetEventStatus(72508002)
                """ State 26 """
                if GetEventStatus(9370) == 1:
                    break
                else:
                    pass
            elif GetTalkListEntryResult() == 2:
                """ State 6,29 """
                call = t250010_x5()
                if call.Get() == 0:
                    """ State 10 """
                    SetEventState(9370, 1)
                    """ State 24 """
                    SetEventState(72508002, 1)
                    Goto('L0')
                elif call.Done():
                    """ State 23 """
                    pass
            else:
                break
        """ State 8,15 """
        SetEventState(72508003, 1)
        assert GetCurrentStateElapsedFrames() > 1
    """ State 30 """
    return 0

def t250010_x5():
    """ State 0,2 """
    c1110()
    """ State 1 """
    ClearTalkListData()
    """ State 3 """
    # goods:9181:Truly Precious Bait, action:14000503:Pot Noble Harunaga's Bait
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9181, 4, 1, 0) == 1, 1, 14000503, 6001)
    # goods:9182:Truly Precious Bait, action:14000504:Pot Noble Koremori's Bait
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 9182, 4, 1, 0) == 1, 2, 14000504, 6001)
    # action:15000006:Leave
    AddTalkListData(3, 15000006, 6001)
    """ State 13 """
    OpenConversationChoicesMenu(1)
    assert not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 8 """
    if GetTalkListEntryResult() == 1:
        """ State 4,9 """
        # goods:9181:Truly Precious Bait
        PlayerEquipmentQuantityChange(3, 9181, -1)
        """ State 11 """
        SetEventState(72508006, 1)
    elif GetTalkListEntryResult() == 2:
        """ State 5,10 """
        # goods:9182:Truly Precious Bait
        PlayerEquipmentQuantityChange(3, 9182, -1)
        """ State 12 """
        SetEventState(72508007, 1)
    elif GetTalkListEntryResult() == 3:
        """ State 6,15 """
        return 1
    else:
        """ State 7,16 """
        return 2
    """ State 14 """
    return 0

