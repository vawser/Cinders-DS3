# -*- coding: utf-8 -*-
def t130000_1():
    """ State 0,2 """
    t130000_x7()

def t130000_x0(action3=_):
    """ State 0,1 """
    OpenGenericDialog(8, action3, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t130000_x1():
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

def t130000_x2(z3=17, z4=9019, flag3=6067):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z3)
        OpenItemAcquisitionMenu(3, z4, 1)
        SetEventState(flag3, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t130000_x3(z2=_, flag1=6001, flag2=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        assert CompareBonfireState(1)
        """ State 4 """
        if GetEventStatus(flag2) == 1:
            """ State 5 """
            assert GetEventStatus(flag1) == 1 and not GetEventStatus(flag2)
            """ State 6 """
            assert GetCurrentStateElapsedTime() > 1
        elif GetEventStatus(flag1) == 1 and not GetEventStatus(flag2):
            pass
        """ State 3 """
        if CompareBonfireState(0):
            pass
        elif CheckActionButtonArea(z2):
            break
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif not GetEventStatus(flag1) or GetEventStatus(flag2) == 1:
            pass
    """ State 7 """
    return 0

def t130000_x4(action2=_):
    """ State 0,1 """
    OpenGenericDialog(7, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t130000_x5(action1=10010713):
    """ State 0,1 """
    # action:10010713:Installation of this game is currently incomplete, \nso you are unable to progress further.
    OpenGenericDialog(1, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t130000_x6():
    """ State 0,1 """
    while True:
        call = t130000_x7()
        assert IsMultiplayerInProgress() == 1
        """ State 2 """
        call = t130000_x10()
        assert not IsMultiplayerInProgress()

def t130000_x7():
    """ State 0,1 """
    if CompareBonfireLevel(5, 0) == 1:
        """ State 2 """
        Label('L0')
        """ State 17 """
        Label('L1')
        assert t130000_x3(z2=6101, flag1=6001, flag2=6000)
        """ State 13 """
        ClearPlayerDamageInfo()
        """ State 12 """
        SetTalkTime(1)
        """ State 7 """
        TurnCharacterToFaceEntity(-1, 10000, -1)
        assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
        """ State 8 """
        UpdatePlayerRespawnPoint()
        """ State 15 """
        StartBonfireAnimLoop()
        call = t130000_x11()
        def ExitPause():
            EndBonfireKindleAnimLoop()
        if call.Done():
            pass
        elif HasPlayerBeenAttacked() == 1 or CompareBonfireState(0) or GetDistanceToPlayer() > 5:
            """ State 16 """
            Label('L2')
            assert t130000_x12()
    else:
        """ State 3,18 """
        call = t130000_x3(z2=6100, flag1=6001, flag2=6000)
        if call.Done():
            """ State 5 """
            ClearPlayerDamageInfo()
            """ State 6 """
            SetTalkTime(1)
            """ State 10 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """ State 14 """
            UpdatePlayerRespawnPoint()
            """ State 4 """
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1 and GetCurrentStateElapsedTime() > 2.6
            """ State 19 """
            call = t130000_x11()
            def ExitPause():
                TurnCharacterToFaceEntity(68012, 10000, -1)
            if call.Done():
                pass
            elif HasPlayerBeenAttacked() == 1 or CompareBonfireState(0) or GetDistanceToPlayer() > 5:
                Goto('L2')
        elif CompareBonfireLevel(5, 0) == 1:
            Goto('L1')
    """ State 11 """
    SetEventState(6030, 0)
    assert not GetEventStatus(6030)
    Goto('L0')

def t130000_x8():
    """ State 0,6 """
    call = t130000_x1()
    if call.Done() and CompareBonfireLevel(5, 0) == 1:
        pass
    elif call.Done():
        """ State 2,7 """
        call = t130000_x3(z2=6100, flag1=6001, flag2=6000)
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

def t130000_x9():
    """ State 0,1 """
    assert t130000_x1()
    """ State 2 """
    return 0

def t130000_x10():
    """ State 0,1 """
    while True:
        call = t130000_x8()
        assert IsClientPlayer() == 1
        """ State 2 """
        call = t130000_x9()
        assert not IsClientPlayer()

def t130000_x11():
    """ State 0,10 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 17 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15000120:Rest
        AddTalkListData(2, 15000120, 6001)
        # action:15000140:Purchase Spirit Emblems
        AddTalkListData(4, 15000140, 6001)
        # action:15000150:Travel
        AddTalkListData(1, 15000150, 6001)
        AddTalkListData(5, 15000160, 6001)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, 6001)
        """ State 4 """
        c1115(0)
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
                """ State 16,31 """
                # action:10010713:Installation of this game is currently incomplete, \nso you are unable to progress further.
                assert t130000_x5(action1=10010713)
        elif GetTalkListEntryResult() == 2:
            """ State 22 """
            assert GetCurrentStateElapsedFrames() > 1
            """ State 23 """
            TurnCharacterToFaceEntity(68013, 10000, -1)
            SetEventState(6030, 1)
            assert GetCurrentStateElapsedTime() > 2 and GetEventStatus(6030) == 1
        elif GetTalkListEntryResult() == 4:
            """ State 20,21 """
            OpenRegularShop(1000, 1001)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 5:
            """ State 30,34 """
            # goods:4400:Gourd Seed
            assert t130000_x13(z1=3000, goods1=4400, val1=30)
        elif (GetTalkListEntryResult() == 99 or not (CheckSpecificPersonMenuIsOpen(21, 0) == 1 and not
              CheckSpecificPersonGenericDialogIsOpen(0))):
            """ State 5,35 """
            return 0
    """ State 11,19 """
    SetEventState(74000013, 1)
    """ State 9 """

def t130000_x12():
    """ State 0,1 """
    assert t130000_x1()
    """ State 2 """
    return 0

def t130000_x13(z1=3000, goods1=4400, val1=30):
    """ State 0,1 """
    if f109(0) + f109(1) < val1:
        """ State 2 """
        # goods:4400:Gourd Seed
        if ComparePlayerInventoryNumber(3, goods1, 4, 1, 0) == 1:
            """ State 4,10 """
            call = t130000_x0(action3=13030001)
            if call.Done() and GetGenericDialogButtonResult() == 1:
                """ State 6,8 """
                # goods:4400:Gourd Seed
                PlayerEquipmentQuantityChange(3, goods1, -1)
                """ State 9 """
                c1108(f109(0) + 1, 0)
                """ State 12 """
                assert t130000_x4(action2=15100160)
            elif call.Done():
                """ State 7 """
                pass
        else:
            """ State 5,11 """
            assert t130000_x4(action2=13030000)
    else:
        """ State 3,13 """
        assert t130000_x4(action2=13030002)
    """ State 14 """
    return 0

