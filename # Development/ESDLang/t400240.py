#-------------------------------------------
#-- Cornyx of the Great Swamp
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400240_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400240_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400240_x14()
        assert not IsClientPlayer()

def t400240_x0(z5=6000, flag5=1255, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400240_x1():
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

def t400240_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400240_x3(text3=_, z4=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t400240_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400240_x4(text2=24001200, z3=74000451, flag3=0, mode2=0):
    """ State 0,5 """
    assert t400240_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:24001200:To learn pyromancies, you must vow to become my pupil.
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 6 """
    return 0

def t400240_x5(text1=_, flag2=0, mode1=_):
    """ State 0,4 """
    assert t400240_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400240_x6(lot1=61400):
    """ State 0,1 """
    # lot:61400:Pyromancy Flame
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400240_x7(z1=6, z2=9015, flag1=6056):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400240_x8(action1=13014000):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400240_x9():
    """ State 0,1 """
    if not GetEventStatus(74000450) and GetEventStatus(50006140) == 1:
        """ State 7,12 """
        Label('L0')
        # talk:24000910:Careful you don't burn yourself with it.
        assert t400240_x5(text1=24000910, flag2=0, mode1=0)
        """ State 8 """
        Label('L1')
        SetEventState(74000450, 1)
    else:
        """ State 2 """
        if not GetEventStatus(74000450):
            """ State 3 """
            if not GetEventStatus(74000465) or GetEventStatus(70000900) == 1:
                """ State 5,13 """
                # talk:24000900:Ahh, there you are, Unkindled One.
                assert t400240_x5(text1=24000900, flag2=0, mode1=0)
                """ State 11 """
                # lot:61400:Pyromancy Flame
                assert t400240_x6(lot1=61400)
                Goto('L0')
            else:
                """ State 6,14 """
                # talk:24000950:Ahh, there you are, Unkindled One.
                assert t400240_x5(text1=24000950, flag2=0, mode1=0)
                Goto('L1')
        else:
            """ State 4,9 """
            # talk:24001000:Ahh, there you are, Unkindled One.
            assert t400240_x5(text1=24001000, flag2=0, mode1=0)
            """ State 15 """
            assert t400240_x7(z1=6, z2=9015, flag1=6056)
    """ State 10 """
    # goods:2127:Great Swamp Pyromancy Tome, goods:2128:Carthus Pyromancy Tome, goods:2129:Izalith Pyromancy Tome, goods:2130:Quelana Pyromancy Tome, goods:2131:Grave Warden Pyromancy Tome
    assert t400240_x16(goods1=2127, goods2=2128, goods3=2129, goods4=2130, goods5=2131, goods6=2173)
    """ State 16 """
    return 0

def t400240_x10():
    """ State 0,1 """
    if GetEventStatus(1258) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:24002900:I can't complain... This old reverie...had to end...
            call = t400240_x5(text1=24002900, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400240_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400240_x11():
    """ State 0,6 """
    assert t400240_x1()
    """ State 3 """
    if GetEventStatus(1256) == 1 or GetEventStatus(1257) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:24003100:Spare the rod and spoil the child...
            call = t400240_x5(text1=24003100, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 8 """
                assert t400240_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 9 """
    return 0

def t400240_x12():
    """ State 0,1 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 2,5 """
        # talk:24001100:Do not be gone for long.
        call = t400240_x5(text1=24001100, flag2=0, mode1=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400240_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400240_x13():
    """ State 0,1 """
    while True:
        call = t400240_x18()
        assert not GetEventStatus(1241)
        """ State 2 """
        call = t400240_x19()
        assert GetEventStatus(1241) == 1

def t400240_x14():
    """ State 0,1 """
    assert t400240_x1()
    """ State 2 """
    return 0

def t400240_x15():
    """ State 0,1 """
    if not GetEventStatus(70000250) and not GetEventStatus(70000251) and not GetEventStatus(70000252):
        """ State 2 """
        if not GetEventStatus(74000451):
            """ State 4,10 """
            # talk:24001200:To learn pyromancies, you must vow to become my pupil.
            assert t400240_x4(text2=24001200, z3=74000451, flag3=0, mode2=0)
        else:
            """ State 5,11 """
            # talk:24001300:Oh, we'll need a pyromancy tome to learn more advanced pyromancies.
            assert t400240_x5(text1=24001300, flag2=0, mode1=0)
            """ State 6 """
            SetEventState(74000451, 0)
    else:
        """ State 3 """
        if GetEventStatus(70000252) == 1:
            """ State 9,14 """
            # talk:24001600:Heed my words, Unkindled One.
            assert t400240_x5(text1=24001600, flag2=0, mode1=0)
        elif GetEventStatus(70000251) == 1:
            """ State 8,13 """
            # talk:24001500:Ahh, you found this tome in the Catacombs...
            assert t400240_x5(text1=24001500, flag2=0, mode1=0)
        else:
            """ State 7,12 """
            # talk:24001400:If you seek pyromancy tomes, take this sage advice.
            assert t400240_x5(text1=24001400, flag2=0, mode1=0)
    """ State 15 """
    return 0

def t400240_x16(goods1=2127, goods2=2128, goods3=2129, goods4=2130, goods5=2131, goods6=2173):
    """ State 0,13 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 2 """
        
        # Learn Pyromancies
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15014000, -1)
        
        # Covenant
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 7, 99062000, -1)
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 5, 15011020, -1)
        
        # Give Pyromancy Tome
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1, 3, 15014002, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008150) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008150) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008150) == 1, 32, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Learn Gesture
        AddTalkListDataIf(GetEventStatus(25000300) == 0, 9, 99000960, -1)
        
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 11 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 3 """
        if GetTalkListEntryResult() == 1:
            """ State 4,6 """
            OpenRegularShop(140100, 149999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """ State 5 """
            if IsMultiplayerInProgress() == 1 or GetEventStatus(2051) == 1:
                """ State 16,20 """
                assert t400240_x8(action1=13014000)
            else:
                """ State 12 """
                CombineMenuFlagAndEventFlag(6001, 235)
                """ State 9 """
                OpenEnhanceShop(0)
                assert not (CheckSpecificPersonMenuIsOpen(9, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,19 """
            assert t400240_x17(goods1=goods1, goods2=goods2, goods3=goods3, goods4=goods4, goods5=goods5, goods6=goods6)
        elif GetTalkListEntryResult() == 4:
            """ State 10,18 """
            assert t400240_x15()
        elif GetTalkListEntryResult() == 5:
            """ State 14,15 """
            OpenRegularShop(140000, 140099)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 7:
            assert t400240_x50()
            continue
        elif GetTalkListEntryResult() == 9:
            assert t400240_x24(z2=20, z3=9036, flag1=25000300)
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008150, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400240_x5(text1=10113030, flag2=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                assert t400240_x5(text1=10113000, flag2=0, mode1=0)
                GetItemFromItemLot(90140)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400240_x5(text1=10113010, flag2=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400240_x5(text1=10113020, flag2=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            assert t400240_x5(text1=10113020, flag2=0, mode1=0)
            SetEventState(25008150, 0)
            return 0
        else:
            """ State 7,17 """
            # talk:24001100:Do not be gone for long.
            assert t400240_x5(text1=24001100, flag2=0, mode1=1)
            """ State 21 """
            return 0

def t400240_x17(goods1=2127, goods2=2128, goods3=2129, goods4=2130, goods5=2131, goods6=2173):
    """ State 0,1 """
    ClearTalkListData()
    """ State 15 """
    # goods:2127:Great Swamp Pyromancy Tome, action:15014010:Give <?gdsparam@2127?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2127, 2, 0, 0) == 1, 10, 15014010, -1)
    # goods:2128:Carthus Pyromancy Tome, action:15014011:Give <?gdsparam@2128?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2128, 2, 0, 0) == 1, 11, 15014011, -1)
    # goods:2129:Izalith Pyromancy Tome, action:15014012:Give <?gdsparam@2129?> 
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2129, 2, 0, 0) == 1, 12, 15014012, -1)
    # goods:2130:Quelana Pyromancy Tome, action:15014013:Give <?gdsparam@2130?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2130, 2, 0, 0) == 1, 13, 15014013, -1)
    # goods:2131:Grave Warden Pyromancy Tome, action:15014014:Give <?gdsparam@2131?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2131, 2, 0, 0) == 1, 14, 15014014, -1)
    # Profaned Pyromancy Tome
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2173, 2, 0, 0) == 1, 15, 15014015, -1)
    # action:15000180:Quit
    AddTalkListData(20, 15000180, -1)
    """ State 14 """
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 2 """
    # Great Swamp Pyromancy Tome
    if GetTalkListEntryResult() == 10:
        """ State 3,8 """
        SetEventState(70000250, 1)
        """ State 9 """
        # goods:2127:Great Swamp Pyromancy Tome
        PlayerEquipmentQuantityChange(3, 2127, -1)
        """ State 17 """
        # talk:24001700:Yes, here we are. It's been long indeed.
        assert t400240_x5(text1=24001700, flag2=0, mode1=0)
    # Carthus Pyromancy Tome
    elif GetTalkListEntryResult() == 11:
        """ State 4,10 """
        SetEventState(70000251, 1)
        """ State 11 """
        # goods:2128:Carthus Pyromancy Tome
        PlayerEquipmentQuantityChange(3, 2128, -1)
        """ State 18 """
        # talk:24001800:Well, well...I've never seen anything like this.
        assert t400240_x5(text1=24001800, flag2=0, mode1=0)
    # Izalith Pyromancy Tome
    elif GetTalkListEntryResult() == 12:
        """ State 5,12 """
        SetEventState(70000252, 1)
        """ State 13 """
        # goods:2129:Izalith Pyromancy Tome
        PlayerEquipmentQuantityChange(3, 2129, -1)
        """ State 19 """
        # talk:24001900:Ah, what have we here! A pyromancy tome from Izalith!
        assert t400240_x5(text1=24001900, flag2=0, mode1=0)
    # Quelana Pyromancy Tome
    elif GetTalkListEntryResult() == 13:
        SetEventState(70000300, 1)
        PlayerEquipmentQuantityChange(3, 2130, -1)
        # talk:24001800:Well, well...I've never seen anything like this.
        assert t400240_x5(text1=24001800, flag2=0, mode1=0)
    # Grave Warden Pyromancy Tome
    elif GetTalkListEntryResult() == 14:
        """ State 16,21 """
        # talk:24002100:I'm afraid I cannot accept this.
        assert t400240_x5(text1=24002100, flag2=0, mode1=0)
    # Profaned Pyromancy Tome
    elif GetTalkListEntryResult() == 15:
        SetEventState(70000253, 1)
        PlayerEquipmentQuantityChange(3, 2173, -1)
        # talk:24001800:Well, well...I've never seen anything like this.
        assert t400240_x5(text1=24001800, flag2=0, mode1=0)
    elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 7 """
        pass
    """ State 22 """
    return 0

def t400240_x18():
    """ State 0,2 """
    call = t400240_x23()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400240_x10()

def t400240_x19():
    """ State 0 """

def t400240_x20():
    """ State 0,9 """
    assert t400240_x1()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1256) and not GetEventStatus(1257):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t400240_x21()
            if call.Done():
                pass
            elif GetEventStatus(1256) == 1 or GetEventStatus(1257) == 1:
                """ State 3 """
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """ State 7,12 """
                    call = t400240_x22()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """ State 10 """
                        Label('L1')
                        assert t400240_x1()
                elif not GetEventStatus(1256) and not GetEventStatus(1257):
                    """ State 8 """
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """ State 6 """
            pass
    else:
        Goto('L0')
    """ State 13 """
    return 0

def t400240_x21():
    """ State 0,1 """
    if not GetEventStatus(74000455):
        """ State 2,5 """
        # talk:24002400:Why? What's the matter?
        assert t400240_x3(text3=24002400, z4=74000455, flag4=0, mode3=1)
    else:
        """ State 3,6 """
        # talk:24002500:Stop this, stop this at once!
        assert t400240_x3(text3=24002500, z4=74000456, flag4=0, mode3=1)
        """ State 4 """
        SetEventState(74000455, -1)
    """ State 7 """
    return 0

def t400240_x22():
    """ State 0,3 """
    if not GetEventStatus(74000460):
        """ State 1,4 """
        # talk:24002600:Fine, fine, I see how it is.
        assert t400240_x3(text3=24002600, z4=74000460, flag4=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t400240_x23():
    """ State 0,4 """
    while True:
        call = t400240_x0(z5=6000, flag5=1255, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """ State 2 """
            call = t400240_x9()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 3 """
                call = t400240_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 5 """
                    Label('L0')
                    call = t400240_x20()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1256) == 1 and not GetEventStatus(74000460)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1256) == 1 and not GetEventStatus(74000460)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 1 """
    t400240_x11()

def t400240_x24(z2=_, z3=_, flag1=_):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t400240_x50():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10070) == 0 and 
        IsEquipmentIDObtained(2, 10071) == 0 and 
        IsEquipmentIDObtained(2, 10072) == 0 and 
        IsEquipmentIDObtained(2, 10073) == 0 and 
        IsEquipmentIDObtained(2, 10074) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Strengthen Bond - II
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10070) == 1, 3, 99062001, -1)
        
        # Strengthen Bond - III
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10071) == 1, 4, 99062001, -1)
        
        # Strengthen Bond - IV
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10072) == 1, 5, 99062001, -1)
        
        # Strengthen Bond - V
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10073) == 1, 6, 99062001, -1)
        
        # Strengthen Bond - None
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10070) == 0 and 
        IsEquipmentIDEquipped(2, 10071) == 0 and 
        IsEquipmentIDEquipped(2, 10072) == 0 and 
        IsEquipmentIDEquipped(2, 10073) == 0 and 
        IsEquipmentIDEquipped(2, 10074) == 0, 7, 99062001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001020)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(22000, 22099)
            continue
        # Strengthen Bond - II
        elif GetTalkListEntryResult() == 3:
            assert t400240_x60()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - III
        elif GetTalkListEntryResult() == 4:
            assert t400240_x61()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - IV
        elif GetTalkListEntryResult() == 5:
            assert t400240_x62()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - V
        elif GetTalkListEntryResult() == 6:
            assert t400240_x63()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - None
        elif GetTalkListEntryResult() == 7:
            assert t400240_x52(action1=99062005)
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400240_x51(action2=_):
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
        
def t400240_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
# Strengthen Bond - II
def t400240_x60():
    call = t400240_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1060, 3, 9, 0) == 1:
            assert t400240_x52(action1=99062160)
        else:
            PlayerEquipmentQuantityChange(3, 1060, -10)
            PlayerEquipmentQuantityChange(2, 10070, -1)
            PlayerEquipmentQuantityChange(2, 10071, 1)
            
            assert t400240_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - III
def t400240_x61():
    call = t400240_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1060, 3, 19, 0) == 1:
            assert t400240_x52(action1=99062161)
        else:
            PlayerEquipmentQuantityChange(3, 1060, -20)
            PlayerEquipmentQuantityChange(2, 10071, -1)
            PlayerEquipmentQuantityChange(2, 10072, 1)
            
            assert t400240_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - IV
def t400240_x62():
    call = t400240_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1060, 3, 29, 0) == 1:
            assert t400240_x52(action1=99062162)
        else:
            PlayerEquipmentQuantityChange(3, 1060, -30)
            PlayerEquipmentQuantityChange(2, 10072, -1)
            PlayerEquipmentQuantityChange(2, 10073, 1)
            
            assert t400240_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - V
def t400240_x63():
    call = t400240_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1060, 3, 49, 0) == 1:
            assert t400240_x52(action1=99062163)
        else:
            PlayerEquipmentQuantityChange(3, 1060, -50)
            PlayerEquipmentQuantityChange(2, 10073, -1)
            PlayerEquipmentQuantityChange(2, 10074, 1)
            
            assert t400240_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    

