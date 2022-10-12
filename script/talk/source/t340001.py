# -*- coding: utf-8 -*-
def t340001_1():
    """ State 0,1 """
    t340001_x4()

def t340001_x0(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    if not IsGenericDialogOpen() and GetGenericDialogButtonResult() == 1:
        """ State 2 """
        return 0
    elif not IsGenericDialogOpen():
        """ State 3 """
        return 1

def t340001_x1():
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
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t340001_x2(z1=_, flag1=6001, flag2=6000):
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

def t340001_x3(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not IsGenericDialogOpen()
    """ State 2 """
    return 0

def t340001_x4():
    """ State 0,1 """
    while True:
        call = t340001_x5()
        assert IsMultiplayerInProgress() == 1
        """ State 2 """
        call = t340001_x8()
        assert not IsMultiplayerInProgress()

def t340001_x5():
    """ State 0,1 """
    if CompareBonfireLevel(5, 0) == 1:
        """ State 2 """
        Label('L0')
    else:
        """ State 3,13 """
        call = t340001_x2(z1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """ State 7 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
            """ State 4 """
            OfferHumanity()
            """ State 9 """
            UpdatePlayerRespawnPoint()
            assert CompareBonfireLevel(5, 0) == 1
            Goto('L0')
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """ State 12 """
    assert t340001_x2(z1=6101, flag1=6001, flag2=6000)
    """ State 5 """
    ClearPlayerDamageInfo()
    """ State 6 """
    SetTalkTime(1)
    """ State 8 """
    TurnCharacterToFaceEntity(-1, 10000, -1)
    assert GetCurrentStateElapsedFrames() > 1 and GetWhetherChrEventAnimHasEnded(10000) == 1
    """ State 10 """
    StartBonfireAnimLoop()
    call = t340001_x9()
    def ExitPause():
        EndBonfireKindleAnimLoop()
    if call.Done():
        Goto('L0')
    elif HasPlayerBeenAttacked() == 1 or GetDistanceToPlayer() > 3:
        """ State 11 """
        assert t340001_x11()
        Goto('L0')

def t340001_x6():
    """ State 0,4 """
    call = t340001_x1()
    if call.Done() and CompareBonfireLevel(5, 0) == 1:
        pass
    elif call.Done():
        """ State 2,5 """
        call = t340001_x2(z1=6100, flag1=6001, flag2=6000)
        if call.Done():
            """ State 3 """
            OfferHumanity()
            assert CompareBonfireLevel(5, 0) == 1
        elif CompareBonfireLevel(5, 0) == 1:
            pass
    """ State 1 """

def t340001_x7():
    """ State 0,1 """
    assert t340001_x1()
    """ State 2 """
    return 0

def t340001_x8():
    """ State 0,1 """
    while True:
        call = t340001_x6()
        assert IsClientPlayer() == 1
        """ State 2 """
        call = t340001_x7()
        assert not IsClientPlayer()

def t340001_x9():
    """ State 0,12 """
    assert GetCurrentStateElapsedTime() > 2.5
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15000150:Travel
        AddTalkListDataIf(GetEventStatus(25009853) == 0, 1, 15000150, -1)
        # action:15000130:Attune Spell
        AddTalkListData(4, 15000130, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 5 """
        ShowShopMessage(0, 0, 0)
        if GetTalkListEntryResult() == 1:
            """ State 3,10 """
            StartWarpMenuInit()
            assert not CheckSpecificPersonMenuIsOpen(2, 0)
            """ State 14 """
            if WasWarpMenuDestinationSelected() == 1:
                break
            else:
                """ State 15 """
                pass
        elif GetTalkListEntryResult() == 99 or not CheckSpecificPersonMenuIsOpen(1, 0):
            """ State 6,17 """
            return 0
        elif GetTalkListEntryResult() == 4:
            """ State 8,9 """
            OpenMagicEquip(1000, 1000)
            assert not CheckSpecificPersonMenuIsOpen(11, 0)
    """ State 13,11 """

def t340001_x10():
    """ State 0,1 """
    if GetPlayerChrType() == 8:
        """ State 2 """
        if ComparePlayerStatus(31, 0, 0) == 1:
            """ State 9 """
            if ComparePlayerStatus(32, 0, 0) == 1:
                """ State 6,18 """
                call = t340001_x0(action2=10020054)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 5 """
                    Goto('L0')
            else:
                """ State 7,17 """
                SetMessageTagValue(0, GetLevelUpSoulCost(GetPlayerStatus(33) - GetPlayerStatus(32), GetPlayerStatus(33)))
                """ State 20 """
                call = t340001_x0(action2=10020053)
                if call.Get() == 0:
                    """ State 15 """
                    if (ComparePlayerStatus(8, 4, GetLevelUpSoulCost(GetPlayerStatus(33) - GetPlayerStatus(32),
                        GetPlayerStatus(33))) == 1):
                        """ State 13,12 """
                        ChangePlayerStats(8, 1, GetLevelUpSoulCost(GetPlayerStatus(33) - GetPlayerStatus(32), GetPlayerStatus(33)))
                        """ State 10 """
                        ChangePlayerStats(32, 5, 0)
                    else:
                        """ State 14,22 """
                        # action:10010754:Insufficient souls
                        assert t340001_x3(action1=10010754)
                        Goto('L0')
                elif call.Get() == 1:
                    """ State 16 """
                    Goto('L0')
            """ State 4,11 """
            PlayerRespawn()
            """ State 23 """
            # action:10010912:
            assert t340001_x3(action1=10010912)
        else:
            """ State 8,21 """
            # action:10010730:
            assert t340001_x3(action1=10010730)
    else:
        """ State 3,19 """
        # action:10010730:
        assert t340001_x3(action1=10010730)
    """ State 24 """
    Label('L0')
    return 0

def t340001_x11():
    """ State 0,1 """
    assert t340001_x1()
    """ State 2 """
    return 0

