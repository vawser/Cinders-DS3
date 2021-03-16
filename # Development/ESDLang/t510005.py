# -*- coding: utf-8 -*-
def t510005_1():
    """ State 0,1 """
    t510005_x4()

def t510005_x0():
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

def t510005_x1(z2=17, z3=9019, flag3=6067):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t510005_x2(z1=_, flag1=6001, flag2=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        assert CompareBonfireState(1)
        """ State 4 """
        assert GetEventStatus(flag1) == 1 and not GetEventStatus(flag2)
        """ State 3 """
        if CompareBonfireState(0):
            pass
        elif CheckActionButtonArea(z1):
            break
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag1) or GetEventStatus(flag2) == 1:
            pass
    """ State 5 """
    return 0

def t510005_x3(action1=10010713):
    """ State 0,1 """
    # action:10010713:Game installation incomplete.\nCannot travel between bonfires.
    OpenGenericDialog(1, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t510005_x4():
    """ State 0,1 """
    while True:
        call = t510005_x5()
        assert IsMultiplayerInProgress() == 1
        """ State 2 """
        call = t510005_x8()
        assert not IsMultiplayerInProgress()

def t510005_x5():
    """ State 0,1 """
    if CompareBonfireLevel(5, 0) == 1:
        """ State 2 """
        Label('L0')
    else:
        """ State 3,15 """
        call = t510005_x2(z1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """ State 7 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """ State 4 """
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1
            """ State 11 """
            RequestUnlockTrophy(41)
            """ State 9 """
            UpdatePlayerRespawnPoint()
            Goto('L0')
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """ State 14 """
    assert t510005_x2(z1=6101, flag1=6001, flag2=6000)
    """ State 5 """
    ClearPlayerDamageInfo()
    """ State 6 """
    SetTalkTime(1)
    """ State 8 """
    TurnCharacterToFaceEntity(-1, 10000, -1)
    assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
    """ State 10 """
    UpdatePlayerRespawnPoint()
    """ State 12 """
    StartBonfireAnimLoop()
    call = t510005_x9()
    def ExitPause():
        EndBonfireKindleAnimLoop()
    if call.Done():
        Goto('L0')
    elif HasPlayerBeenAttacked() == 1 or GetDistanceToPlayer() > 3 or CompareBonfireState(0):
        """ State 13 """
        assert t510005_x10()
        Goto('L0')

def t510005_x6():
    """ State 0,6 """
    call = t510005_x0()
    if call.Done() and CompareBonfireLevel(5, 0) == 1:
        pass
    elif call.Done():
        """ State 2,7 """
        call = t510005_x2(z1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """ State 4 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """ State 3 """
            OfferHumanity()
            """ State 5 """
            UpdatePlayerRespawnPoint()
            assert CompareBonfireLevel(5, 0) == 1
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """ State 1 """

def t510005_x7():
    """ State 0,1 """
    assert t510005_x0()
    """ State 2 """
    return 0

def t510005_x8():
    """ State 0,1 """
    while True:
        call = t510005_x6()
        assert IsClientPlayer() == 1
        """ State 2 """
        call = t510005_x7()
        assert not IsClientPlayer()

def t510005_x9():
    """ State 0,10 """
    assert GetCurrentStateElapsedTime() > 2
    """ State 21 """
    assert t510005_x1(z2=17, z3=9019, flag3=6067)
    """ State 17 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # Travel
        AddTalkListData(1, 15000150, -1)
        
        # Level Up
        AddTalkListData(10, 15002000, -1)
        
        #Allot Estus
        # AddTalkListData(22, 15002002, -1)
        
        # Attune Spell
        AddTalkListData(2, 15000130, -1)
        
        # Reinforce Weapon
        #AddTalkListData(18, 15010002, -1)
        
        # Infuse Weapon
        AddTalkListData(17, 15010001, -1)
        
        # Repair Equipment
        AddTalkListData(19, 15010003, -1)
        
        # Purchase Item
        AddTalkListData(20, 15010005, -1)
        
        # Sell Item
        AddTalkListDataIf(GetEventStatus(25000055) == 0, 21, 15010006, -1)
        
        # Organize Storage Box
        AddTalkListData(3, 15000220, -1)
        
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 4 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 3 """
            if GetEventStatus(2030) == 1:
                """ State 18,8 """
                StartWarpMenuInit(-1)
                assert GetCurrentStateElapsedFrames() > 1
                """ State 12 """
                if WasWarpMenuDestinationSelected() == 1:
                    break
                elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                    """ State 13 """
                    pass
            else:
                """ State 16,20 """
                # action:10010713:Game installation incomplete.\nCannot travel between bonfires.
                assert t510005_x3(action1=10010713)
        elif GetTalkListEntryResult() == 2:
            """ State 6,7 """
            OpenMagicEquip(1000, 1000)
            assert not (CheckSpecificPersonMenuIsOpen(11, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 14,15 """
            OpenRepository()
            assert not (CheckSpecificPersonMenuIsOpen(3, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 10:
            """ State 70,71 """
            OpenSoul()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 22:
            """State 97,98"""
            OpenEstusAllotMenu()
            assert not (CheckSpecificPersonMenuIsOpen(14, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        elif GetTalkListEntryResult() == 17:
            """ State 84,85 """
            CombineMenuFlagAndEventFlag(6001, 344)
            CombineMenuFlagAndEventFlag(6001, 337)
            CombineMenuFlagAndEventFlag(6001, 334)
            CombineMenuFlagAndEventFlag(300, 332)
            CombineMenuFlagAndEventFlag(300, 333)
            CombineMenuFlagAndEventFlag(300, 342)
            CombineMenuFlagAndEventFlag(301, 335)
            CombineMenuFlagAndEventFlag(301, 345)
            CombineMenuFlagAndEventFlag(301, 340)
            CombineMenuFlagAndEventFlag(302, 336)
            CombineMenuFlagAndEventFlag(302, 338)
            CombineMenuFlagAndEventFlag(302, 339)
            CombineMenuFlagAndEventFlag(303, 341)
            CombineMenuFlagAndEventFlag(303, 343)
            CombineMenuFlagAndEventFlag(303, 346)
            CombineMenuFlagAndEventFlag(6000, 347)
            CombineMenuFlagAndEventFlag(6001, 331)
            CombineMenuFlagAndEventFlag(6001, 232)
            CombineMenuFlagAndEventFlag(6001, 233)
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
                
            """ State 86 """
            OpenEquipmentChangeOfPurposeShop()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 18:
            """ State 87,88 """
            CombineMenuFlagAndEventFlag(6001, 232)
            CombineMenuFlagAndEventFlag(6001, 233)
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
            
            """ State 89 """
            OpenEnhanceShop(0)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 19:
            """ State 90 """
            OpenRepairShop()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 20:
            """ State 91,92 """
            OpenRegularShop(36000, 36999)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif GetTalkListEntryResult() == 21:
            """ State 93,94 """
            OpenSellShop(-1, -1)
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            continue
        elif (GetTalkListEntryResult() == 99 or not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not
              CheckSpecificPersonGenericDialogIsOpen(0))):
            """ State 5,22 """
            return 0
    """ State 11,19 """
    SetEventState(74000013, 1)
    """ State 9 """

def t510005_x10():
    """ State 0,1 """
    assert t510005_x0()
    """ State 2 """
    return 0

