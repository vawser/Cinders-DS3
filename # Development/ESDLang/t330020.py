#-------------------------------------------
#-- Old Watchdog
#-------------------------------------------
# -*- coding: utf-8 -*-
def t330020_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t330020_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t330020_x14()
        assert not IsClientPlayer()

def t330020_x0(action3=12000026):
    """ State 0,1 """
    # action:12000026:Join Covenant?
    OpenGenericDialog(8, action3, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t330020_x1(z5=6012, flag4=6001, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t330020_x2():
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

def t330020_x3(lot2=_):
    """ State 0,1 """
    GetItemFromItemLot(lot2)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t330020_x4(z6=30, z7=9031, flag3=6080):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z6)
        OpenItemAcquisitionMenu(3, z7, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t330020_x5(action4=_):
    """ State 0,1 """
    OpenGenericDialog(7, action4, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t330020_x6(goods1=366, val1=99, z2=22, z3=29, action5=13000022, action6=13000032, z1=12000002, action7=13000012,
               action8=13000002, lot2=4228, lot3=4226, flag2=73300952, flag3=6080, z6=30, z7=9031):
    """ State 0,1,11 """
    # goods:366:Wolf's Blood Swordgrass
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 12,9 """
        SetWorkValue(0, GetPlayerStatus(z3))
        """ State 30 """
        call = t330020_x7(goods1=goods1, z1=z1)
        if call.Get() == 0:
            """ State 3,25 """
            SetEventState(flag2, 1)
            assert GetCurrentStateElapsedTime() > 2
            """ State 24,15,18 """
            # goods:366:Wolf's Blood Swordgrass
            PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
            """ State 17 """
            ChangePlayerStats(z2, 0, GetValueFromNumberSelectDialog() * 1)
            """ State 16 """
            if GetWorkValue(0) > 2:
                """ State 22,34 """
                assert t330020_x3(lot2=lot3)
            else:
                """ State 23 """
                if ComparePlayerStatus(z3, 2, GetWorkValue(0)):
                    """ State 7,13 """
                    if ComparePlayerStatus(z3, 3, 1) == 1:
                        """ State 19,32 """
                        assert t330020_x3(lot2=lot2)
                    elif ComparePlayerStatus(z3, 3, 2) == 1:
                        """ State 20,33 """
                        Label('L0')
                        assert t330020_x3(lot2=lot3)
                    else:
                        """ State 21 """
                        Goto('L0')
                    """ State 27 """
                    assert t330020_x5(action4=action7)
                    Goto('L1')
                else:
                    """ State 8 """
                    pass
            """ State 29 """
            assert t330020_x5(action4=action8)
        elif call.Get() == 1:
            """ State 4 """
            pass
    else:
        """ State 5,28 """
        assert t330020_x5(action4=action6)
    """ State 26 """
    Label('L1')
    assert not GetEventStatus(flag2)
    """ State 35 """
    return 0

def t330020_x7(goods1=366, z1=12000002):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z1)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,6 """
        return 1

def t330020_x8():
    """ State 0,1 """
    assert t330020_x2()
    """ State 2 """
    return 0

def t330020_x9(lot1=4220, goods1=366, lot2=4228, lot3=4226, action1=15000406, action2=15000412, action3=12000026,
               action4=13000046, action5=13000022, action6=13000032, z1=12000002, action7=13000012, action8=13000002,
               val1=99, z2=22, z3=29, flag1=6720, z4=73300951, flag2=73300952, flag3=6080, z6=30, z7=9031):
    """ State 0,10 """
    TurnCharacterToFaceEntity(69000, 10000, -1)
    SetTalkTime(1)
    assert GetCurrentStateElapsedTime() > 1
    """ State 16 """
    assert t330020_x4(z6=z6, z7=z7, flag3=flag3)
    """ State 17 """
    assert t330020_x12(z3=z3, lot2=lot2, lot3=lot3)
    """ State 7 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15000406:Ask to Join Covenant
        AddTalkListDataIf(not GetEventStatus(flag1), 1, action1, -1)
        # action:15000412:Offer <?gdsparam@366?>
        AddTalkListDataIf(GetEventStatus(flag1) == 1, 2, 15003005, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 4,14 """
            call = t330020_x0(action3=action3)
            if call.Get() == 0:
                """ State 9,11 """
                SetEventState(flag2, 1)
                assert GetCurrentStateElapsedTime() > 2
                """ State 12 """
                assert t330020_x3(lot2=lot1) and not GetEventStatus(flag2)
                """ State 13 """
                assert t330020_x5(action4=action4)
            elif call.Done():
                """ State 8 """
                pass
        elif GetTalkListEntryResult() == 2:
            """ State 5,15 """
            c1111(21200, 21399)
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 30 """
            return 0

def t330020_x10():
    """ State 0,1 """
    assert t330020_x2()
    """ State 2 """
    return 0

def t330020_x11(lot1=4220, goods1=366, lot2=4228, lot3=4226, action1=15000406, action2=15000412, action3=12000026,
                action4=13000046, action5=13000022, action6=13000032, z1=12000002, action7=13000012,
                action8=13000002, val1=99, z2=22, z3=29, flag1=6720, z4=73300951, flag2=73300952, z5=6012,
                flag3=6080, z6=30, z7=9031, flag4=6001):
    """ State 0 """
    ClearPlayerDamageInfo()
    """ State 4 """
    while True:
        assert t330020_x1(z5=z5, flag4=flag4, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        """ State 5 """
        ClearPlayerDamageInfo()
        call = t330020_x9(lot1=lot1, goods1=goods1, lot2=lot2, lot3=lot3, action1=action1, action2=action2,
                          action3=action3, action4=action4, action5=action5, action6=action6, z1=z1,
                          action7=action7, action8=action8, val1=val1, z2=z2, z3=z3, flag1=flag1, z4=z4,
                          flag2=flag2, flag3=flag3, z6=z6, z7=z7)
        def ExitPause():
            TurnCharacterToFaceEntity(69002, 10000, -1)
        if call.Done():
            pass
        elif IsPlayerDead() == 1:
            break
        elif GetDistanceToPlayer() > 12:
            """ State 3 """
            assert t330020_x10() and GetDistanceToPlayer() < 10
        elif HasPlayerBeenAttacked() == 1:
            """ State 6 """
            assert t330020_x2()
            """ State 1 """
            TurnCharacterToFaceEntity(69002, 10000, -1)
            ClearPlayerDamageInfo()
    """ State 2 """
    t330020_x8()

def t330020_x12(z3=29, lot2=4228, lot3=4226):
    """ State 0,1 """
    if ComparePlayerStatus(z3, 4, 2) == 1:
        """ State 4,6 """
        assert t330020_x3(lot2=lot3)
    elif ComparePlayerStatus(z3, 0, 1) == 1:
        """ State 3,5 """
        assert t330020_x3(lot2=lot2)
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t330020_x13():
    """ State 0,1 """
    while True:
        call = t330020_x15()
        assert not GetEventStatus(6001)
        """ State 2 """
        call = t330020_x16()
        assert GetEventStatus(6001) == 1

def t330020_x14():
    """ State 0,1 """
    assert t330020_x2()
    """ State 2 """
    return 0

def t330020_x15():
    """ State 0,1 """
    # lot:4220:Watchdogs of Farron, goods:366:Wolf's Blood Swordgrass, lot:4228:Old Wolf Curved Sword, lot:4226:Wolf Knight's Greatshield, action:15000406:Ask to Join Covenant, action:15000412:Offer <?gdsparam@366?>, action:12000026:Join Covenant?, action:13000046:You have obtained proof of the covenant, action:13000022:Cannot offer more. Well done., action:13000032:No <?gdsparam@366?> in inventory, action:13000012:Covenant allegiance deepened. Rank gained., action:13000002:Covenant allegiance deepened
    t330020_x11(lot1=4220, goods1=366, lot2=4228, lot3=4226, action1=15000406, action2=15000412, action3=12000026,
                action4=13000046, action5=13000022, action6=13000032, z1=12000002, action7=13000012,
                action8=13000002, val1=99, z2=22, z3=29, flag1=6720, z4=73300951, flag2=73300952, z5=6012,
                flag3=6080, z6=30, z7=9031, flag4=6001)

def t330020_x16():
    """ State 0 """

