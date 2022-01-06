#-------------------------------------------
#-- Rosaria
#-------------------------------------------
# -*- coding: utf-8 -*-
def t350020_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350020_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350020_x13()
        assert not IsClientPlayer()

def t350020_x0(action2=_):
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

def t350020_x1(z7=_, flag2=73500155, flag3=6000, flag4=6000, flag5=6000, flag6=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag2) == 1 or GetEventStatus(flag3) == 1 or GetEventStatus(flag4) ==
                1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag2) and not GetEventStatus(flag3) and not GetEventStatus(flag4) and
              not GetEventStatus(flag5) and not GetEventStatus(flag6)):
            pass
        elif CheckActionButtonArea(z7):
            break
    """ State 4 """
    return 0

def t350020_x2():
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

def t350020_x3(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t350020_x4(action3=_):
    """ State 0,1 """
    OpenGenericDialog(7, action3, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t350020_x5(goods1=373, z5=12000006):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z5)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,6 """
        return 1

def t350020_x6(goods1=373, val1=99, z3=21, z4=28, action4=13000026, action5=13000036, z5=12000006, action6=13000016,
               action7=13000006, lot1=4268, lot2=4267, z6=73500150, flag1=73500162):
    """ State 0,1,11 """
    # goods:373:Pale Tongue
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 12,9 """
        SetWorkValue(0, GetPlayerStatus(z4))
        """ State 29 """
        call = t350020_x5(goods1=goods1, z5=z5)
        if call.Get() == 0:
            """ State 24 """
            SetEventState(flag1, 1)
            assert GetCurrentStateElapsedTime() > 2
            """ State 3,15,17 """
            # goods:373:Pale Tongue
            PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
            """ State 16 """
            ChangePlayerStats(z3, 0, GetValueFromNumberSelectDialog() * 1)
            """ State 21 """
            SetEventState(z6, 1)
            if GetWorkValue(0) > 2:
                """ State 23,33 """
                assert t350020_x3(lot1=lot2)
                """ State 28 """
                Label('L0')
                assert t350020_x4(action3=action7)
            else:
                """ State 22 """
                if ComparePlayerStatus(z4, 2, GetWorkValue(0)):
                    """ State 7,13 """
                    if ComparePlayerStatus(z4, 3, 1) == 1:
                        """ State 18,31 """
                        assert t350020_x3(lot1=lot1)
                    elif ComparePlayerStatus(z4, 3, 2) == 1:
                        """ State 19,32 """
                        Label('L1')
                        assert t350020_x3(lot1=lot2)
                    else:
                        """ State 20 """
                        Goto('L1')
                    """ State 26 """
                    assert t350020_x4(action3=action6)
                else:
                    """ State 8 """
                    Goto('L0')
            """ State 25 """
            assert not GetEventStatus(flag1)
        elif call.Get() == 1:
            """ State 4 """
            pass
    else:
        """ State 5,27 """
        assert t350020_x4(action3=action5)
    """ State 34 """
    return 0

def t350020_x7(z2=28, lot1=4268, lot2=4267):
    """ State 0,1 """
    if ComparePlayerStatus(z2, 4, 2) == 1:
        """ State 4,6 """
        assert t350020_x3(lot1=lot2)
    elif ComparePlayerStatus(z2, 0, 1) == 1:
        """ State 3,5 """
        assert t350020_x3(lot1=lot1)
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t350020_x8(goods1=373, goods2=728, lot1=4268, lot2=4267):
    """ State 0,55 """
    assert t350020_x7(z2=28, lot1=lot1, lot2=lot2)
    """ State 7 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
        # Ask to Join Covenant
        AddTalkListDataIf(not GetEventStatus(6760), 1, 15000406, -1)
        
        # Covenant
        AddTalkListDataIf(GetEventStatus(6760) == 1, 2, 99062000, -1)
        
        # Pledge Loyalty
        AddTalkListDataIf(GetEventStatus(73500150, 1) == 0, 6, 15003020, -1)
        
        # Revoke Loyalty
        AddTalkListDataIf(GetEventStatus(73500150, 1) == 1, 7, 15003025, -1)
        
        # Reallocate attributes
        AddTalkListDataIf(GetEventStatus(6760) == 1, 3, 15027010, -1)
        
        # Alter appearance
        AddTalkListDataIf(GetEventStatus(6760) == 1, 4, 15027011, -1)
        
        # Restore Soul of Rosaria
        AddTalkListDataIf(GetEventStatus(1501) == 1 and ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 5, 15027012, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008040) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008040) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008040) == 1, 12, 15015042, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 3 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 10 """
        if GetTalkListEntryResult() == 1:
            """ State 4,47 """
            # action:12000026:Join Covenant?
            call = t350020_x0(action2=12000026)
            if call.Get() == 0:
                """ State 8,26 """
                SetEventState(73500162, 1)
                assert GetCurrentStateElapsedTime() > 2
                """ State 45 """
                # lot:4260:Rosaria's Fingers
                assert t350020_x3(lot1=4260) and not GetEventStatus(73500162)
                """ State 46 """
                # action:13000046:You have obtained proof of the covenant
                assert t350020_x4(action3=13000046)
            elif call.Done():
                """ State 9 """
                pass
        elif GetTalkListEntryResult() == 3:
            """ State 11,48 """
            # action:13027020:Further rebirth is not possible during this lifetime.\nPersisting will transform you into a grub., action:12027020:The price of rebirth is paid in Pale Tongues.\nRebirth can be performed <?evntAcquittalPrice?> more times during this lifetime.\nDo you wish to be reborn?, action:13027000:No <?gdsparam@373?> in inventory
            call = t350020_x16(goods1=goods1, action1=13027020, action2=12027020, action3=13027000)
            if call.Get() == 0:
                """ State 15,34 """
                SetEventState(73500161, 1)
                """ State 27 """
                SetEventState(73500162, 1)
                assert GetCurrentStateElapsedTime() > 3
                """ State 42 """
                SetEventState(73500164, 1)
                assert GetCurrentStateElapsedTime() > 1
                """ State 13 """
                c1113()
                SetEventState(25009410, 0)
                SetEventState(25009411, 0)
                SetEventState(25009412, 0)
                SetEventState(25009413, 0)
                SetEventState(25009414, 0)
                
                ClearTalkActionState()
                def ExitPause():
                    SetEventState(73500161, 0)
                assert not (CheckSpecificPersonMenuIsOpen(19, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 33 """
                SetEventState(73500164, 0)
                if DidYouDoSomethingInTheMenu(31) == 1:
                    """ State 31,19,30 """
                    # goods:373:Pale Tongue
                    PlayerEquipmentQuantityChange(3, goods1, -1)
                    """ State 40 """
                    SetEventState(73500163, 1)
                    """ State 53 """
                    assert t350020_x17()
                else:
                    """ State 32 """
                    pass
                """ State 38 """
                assert GetCurrentStateElapsedTime() > 1.5
            elif call.Done():
                """ State 16 """
                pass
        elif GetTalkListEntryResult() == 2:
            """ State 5,50 """
            assert t350020_x50()
            continue
        # Pledge Loyalty
        elif GetTalkListEntryResult() == 6:
            OpenGenericDialog(1, 15003026, 0, 0, 0)
            SetEventState(73500150, 1)
            return 0
        # Revoke Loyalty
        elif GetTalkListEntryResult() == 7:
            OpenGenericDialog(1, 15003027, 0, 0, 0)
            SetEventState(73500150, 0)
            return 0
        elif GetTalkListEntryResult() == 4:
            """ State 12,49 """
            # action:13027021:Further rebirth is not possible during this lifetime.\nPersisting will transform you into a grub., action:12027021:The price of rebirth is paid in Pale Tongues.\nRebirth can be performed <?evntAcquittalPrice?> more times during this lifetime.\nDo you wish to be reborn?, action:13027001:No <?gdsparam@373?> in inventory
            call = t350020_x16(goods1=goods1, action1=13027021, action2=12027021, action3=13027001)
            if call.Get() == 0:
                """ State 17,25 """
                SetEventState(73500161, 1)
                """ State 28 """
                SetEventState(73500162, 1)
                assert GetCurrentStateElapsedTime() > 3
                """ State 44 """
                SetEventState(73500164, 1)
                assert GetCurrentStateElapsedTime() > 1
                """ State 14 """
                OpenCharaMakeMenu()
                ClearTalkActionState()
                def ExitPause():
                    SetEventState(73500161, 0)
                assert not (CheckSpecificPersonMenuIsOpen(16, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """ State 43 """
                SetEventState(73500164, 0)
                if DidYouDoSomethingInTheMenu(30) == 1:
                    """ State 35,20,37 """
                    # goods:373:Pale Tongue
                    PlayerEquipmentQuantityChange(3, goods1, -1)
                    """ State 41 """
                    SetEventState(73500163, 1)
                    """ State 54 """
                    assert t350020_x17()
                else:
                    """ State 36 """
                    pass
                """ State 39 """
                assert GetCurrentStateElapsedTime() > 1.5
            elif call.Done():
                """ State 18 """
                pass
        elif GetTalkListEntryResult() == 5:
            """ State 21,51 """
            # action:12027030:Restore <?gdsparam@728?> back to her body?
            call = t350020_x0(action2=12027030)
            if call.Get() == 0:
                """ State 22,29 """
                SetEventState(73500162, 1)
                assert not GetEventStatus(73500162)
                """ State 24 """
                SetEventState(73500160, 1)
                # goods:728:Soul of Rosaria
                PlayerEquipmentQuantityChange(3, goods2, -1)
                assert not GetEventStatus(73500160)
                """ State 52 """
                # action:13027010:Restored <?gdsparam@728?> back to her body
                assert t350020_x4(action3=13027010)
            elif call.Done():
                """ State 23 """
                pass
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008040, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t350020_x20(text1=10102030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t350020_x20(text1=10102000, flag1=0, mode1=0)
                GetItemFromItemLot(90030)
            # Neutral
            elif GetEventStatus(25008901):
                assert t350020_x20(text1=10102010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t350020_x20(text1=10102020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t350020_x20(text1=10102020, flag1=0, mode1=0)
            SetEventState(25008040, 0)
            return 0
        else:
            """ State 6,56 """
            return 0

def t350020_x9():
    """ State 0,1 """
    # goods:373:Pale Tongue, goods:728:Soul of Rosaria, lot:4268:Obscuring Ring, lot:4267:Man-grub's Staff
    assert t350020_x8(goods1=373, goods2=728, lot1=4268, lot2=4267)
    """ State 2 """
    return 0

def t350020_x10():
    """ State 0,1 """
    assert t350020_x2()
    """ State 2 """
    return 0

def t350020_x11():
    """ State 0,1 """
    assert t350020_x2()
    """ State 2 """
    return 0

def t350020_x12():
    """ State 0,1 """
    while True:
        call = t350020_x14(z1=3502852)
        assert not GetEventStatus(6001)
        """ State 2 """
        call = t350020_x15()
        assert GetEventStatus(6001) == 1

def t350020_x13():
    """ State 0,1 """
    assert t350020_x2()
    """ State 2 """
    return 0

def t350020_x14(z1=3502852):
    """ State 0 """
    ClearPlayerDamageInfo()
    """ State 1 """
    Label('L0')
    if GetEventStatus(1501) == 1 or CheckSelfDeath() == 1:
        """ State 10 """
        Label('L1')
        call = t350020_x1(z7=6017, flag2=73500155, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
        if call.Done():
            pass
        elif not GetEventStatus(1501) and not CheckSelfDeath():
            """ State 3 """
            assert GetCurrentStateElapsedFrames() > 1
            """ State 8 """
            Label('L2')
            call = t350020_x1(z7=6016, flag2=73500155, flag3=6000, flag4=6000, flag5=6000, flag6=6000)
            if call.Done():
                pass
            elif GetEventStatus(1501) == 1 or CheckSelfDeath() == 1:
                """ State 2 """
                assert GetCurrentStateElapsedTime() > 4
                Goto('L1')
    else:
        Goto('L2')
    """ State 4 """
    TurnCharacterToFaceEntity(69000, 10000, z1)
    assert GetCurrentStateElapsedTime() > 1
    """ State 6 """
    ClearPlayerDamageInfo()
    call = t350020_x9()
    def ExitPause():
        TurnCharacterToFaceEntity(69002, 10000, z1)
    if call.Done():
        Goto('L0')
    elif IsPlayerDead() == 1:
        """ State 5 """
        t350020_x10()
    elif GetDistanceToPlayer() > 12:
        """ State 7 """
        assert t350020_x11() and GetDistanceToPlayer() < 10
        Goto('L0')
    elif HasPlayerBeenAttacked() == 1:
        """ State 9 """
        ClearPlayerDamageInfo()
        assert t350020_x2()
        Goto('L0')

def t350020_x15():
    """ State 0 """

def t350020_x16(goods1=373, action1=_, action2=_, action3=_):
    """ State 0,6 """
    if True:
        """ State 7,11 """
        assert t350020_x18() and GetCurrentStateElapsedFrames() > 1
        """ State 8 """
        call = t350020_x0(action2=action2)
        if call.Get() == 0:
            """ State 1 """
            # goods:373:Pale Tongue
            if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
                """ State 3,12 """
                return 0
            else:
                """ State 4,9 """
                assert t350020_x4(action3=action3)
        elif call.Done():
            """ State 2 """
            pass
    else:
        """ State 5,10 """
        assert t350020_x4(action3=action1)
    """ State 13 """
    return 1

def t350020_x17():
    """ State 0,1 """
    if not GetEventStatus(73500170):
        """ State 2 """
        SetEventState(73500170, 1)
    else:
        """ State 3 """
        if not GetEventStatus(73500171):
            """ State 4 """
            SetEventState(73500171, 1)
        else:
            """ State 5 """
            if not GetEventStatus(73500172):
                """ State 6 """
                SetEventState(73500172, 1)
            else:
                """ State 7 """
                if not GetEventStatus(73500173):
                    """ State 8 """
                    SetEventState(73500173, 1)
                else:
                    """ State 9,10 """
                    SetEventState(73500174, 1)
    """ State 11 """
    return 0

def t350020_x18():
    """ State 0,2 """
    if GetEventStatus(73500173) == 1:
        """ State 6 """
        SetMessageTagValue(0, 1)
    elif GetEventStatus(73500172) == 1:
        """ State 5 """
        SetMessageTagValue(0, 2)
    elif GetEventStatus(73500171) == 1:
        """ State 4 """
        SetMessageTagValue(0, 3)
    elif GetEventStatus(73500170) == 1:
        """ State 3 """
        SetMessageTagValue(0, 4)
    else:
        """ State 1 """
        SetMessageTagValue(0, 5)
    """ State 7 """
    return 0

# Talk Function
def t350020_x20(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t350020_x21() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0
    
# Talk Cleanup
def t350020_x21():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t350020_x50():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10080) == 0 and 
        IsEquipmentIDObtained(2, 10081) == 0 and 
        IsEquipmentIDObtained(2, 10082) == 0 and 
        IsEquipmentIDObtained(2, 10083) == 0 and 
        IsEquipmentIDObtained(2, 10084) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Strengthen Bond - II
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10080) == 1, 3, 99062001, -1)
        
        # Strengthen Bond - III
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10081) == 1, 4, 99062001, -1)
        
        # Strengthen Bond - IV
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10082) == 1, 5, 99062001, -1)
        
        # Strengthen Bond - V
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10083) == 1, 6, 99062001, -1)
        
        # Strengthen Bond - None
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10080) == 0 and 
        IsEquipmentIDEquipped(2, 10081) == 0 and 
        IsEquipmentIDEquipped(2, 10082) == 0 and 
        IsEquipmentIDEquipped(2, 10083) == 0 and 
        IsEquipmentIDEquipped(2, 10084) == 0, 7, 99062001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001210)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(22200, 22299)
            continue
        # Strengthen Bond - II
        elif GetTalkListEntryResult() == 3:
            assert t350020_x60()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - III
        elif GetTalkListEntryResult() == 4:
            assert t350020_x61()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - IV
        elif GetTalkListEntryResult() == 5:
            assert t350020_x62()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - V
        elif GetTalkListEntryResult() == 6:
            assert t350020_x63()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - None
        elif GetTalkListEntryResult() == 7:
            assert t350020_x52(action1=99062005)
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
def t350020_x51(action2=_):
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
        
def t350020_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
# Strengthen Bond - II
def t350020_x60():
    call = t350020_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 373, 3, 9, 0) == 1:
            assert t350020_x52(action1=99062170)
        else:
            PlayerEquipmentQuantityChange(3, 373, -10)
            PlayerEquipmentQuantityChange(2, 10080, -1)
            PlayerEquipmentQuantityChange(2, 10081, 1)
            
            assert t350020_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - III
def t350020_x61():
    call = t350020_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 373, 3, 19, 0) == 1:
            assert t350020_x52(action1=99062171)
        else:
            PlayerEquipmentQuantityChange(3, 373, -20)
            PlayerEquipmentQuantityChange(2, 10081, -1)
            PlayerEquipmentQuantityChange(2, 10082, 1)
            
            assert t350020_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - IV
def t350020_x62():
    call = t350020_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 373, 3, 29, 0) == 1:
            assert t350020_x52(action1=99062172)
        else:
            PlayerEquipmentQuantityChange(3, 373, -30)
            PlayerEquipmentQuantityChange(2, 10082, -1)
            PlayerEquipmentQuantityChange(2, 10083, 1)
            
            assert t350020_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - V
def t350020_x63():
    call = t350020_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 373, 3, 49, 0) == 1:
            assert t350020_x52(action1=99062173)
        else:
            PlayerEquipmentQuantityChange(3, 373, -50)
            PlayerEquipmentQuantityChange(2, 10083, -1)
            PlayerEquipmentQuantityChange(2, 10084, 1)
            
            assert t350020_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    

