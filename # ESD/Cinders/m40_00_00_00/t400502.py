# -*- coding: utf-8 -*-
def t400502_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400502_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400502_x1()
        assert not IsClientPlayer()

def t400502_x0():
    """State 0,1"""
    t400502_x3()
    Quit()

def t400502_x1():
    """State 0,1"""
    assert t400502_x2()
    """State 2"""
    return 0

def t400502_x2():
    """State 0,1"""
    if not CheckSpecificPersonTalkHasEnded(0):
        """State 7"""
        ClearTalkProgressData()
        StopEventAnimWithoutForcingConversationEnd(0)
        """State 6"""
        ReportConversationEndToHavokBehavior()
    else:
        pass
    """State 2"""
    if CheckSpecificPersonGenericDialogIsOpen(0) == 1:
        """State 3"""
        ForceCloseGenericDialog()
    else:
        pass
    """State 4"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 5"""
        ForceCloseMenu()
    else:
        pass
    """State 8"""
    return 0

def t400502_x3():
    """State 0,1"""
    call = t400502_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400502_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400502_x5()
        if call.Done():
            """State 3"""
            call = t400502_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400502_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t400502_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400502_x2()
    Quit()

def t400502_x5():
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6120):
            break
    """State 4"""
    return 0

def t400502_x6():
    """State 0,6"""
    assert t400502_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400502_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400502_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400502_x2()
    """State 6"""
    return 0

def t400502_x8():
    """State 0,1"""
    assert t400502_x9()
    """State 24"""
    return 0

# Main Menu
def t400502_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Current Journey
        AddTalkListData(1, 99093001, -1)
        
        # Achievements
        AddTalkListDataIf(not GetEventStatus(25009814), 2, 99093000, -1)
        
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Current Journey
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400502_x20()
        # Achievements
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400502_x21()
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 4"""
            return 0

def t400502_x10(z1=_, z2=_, z3=_):
    """State 0,4"""
    assert t400502_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(z1, -1, -1, z2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not z3:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400502_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Current Journey
def t400502_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Journey Progression
        AddTalkListData(1, 99094001, -1)
        
        # Journey Type
        AddTalkListData(2, 99094000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Journey Progression
        if GetTalkListEntryResult() == 1:
            """State 2"""
            # Journey 8
            if GetEventStatus(25000017) == 1:
                """State 3"""
                OpenGenericDialog(1, 99094207, 0, 0, 0)
            # Journey 7
            elif GetEventStatus(25000016) == 1:
                """State 4"""
                OpenGenericDialog(1, 99094206, 0, 0, 0)
            # Journey 6
            elif GetEventStatus(25000015) == 1:
                """State 5"""
                OpenGenericDialog(1, 99094205, 0, 0, 0)
            # Journey 5
            elif GetEventStatus(25000014) == 1:
                """State 6"""
                OpenGenericDialog(1, 99094204, 0, 0, 0)
            # Journey 4
            elif GetEventStatus(25000013) == 1:
                """State 7"""
                OpenGenericDialog(1, 99094203, 0, 0, 0)
            # Journey 3
            elif GetEventStatus(25000012) == 1:
                """State 8"""
                OpenGenericDialog(1, 99094202, 0, 0, 0)
            # Journey 2
            elif GetEventStatus(25000011) == 1:
                """State 9"""
                OpenGenericDialog(1, 99094201, 0, 0, 0)
            # Journey 1
            else:
                """State 10"""
                OpenGenericDialog(1, 99094200, 0, 0, 0)
        # Journey Type
        elif GetTalkListEntryResult() == 2:
            """State 11"""
            # Hollow
            if GetEventStatus(25000101) == 1:
                """State 12"""
                OpenGenericDialog(1, 99094100, 0, 0, 0)
            # Explorer
            elif GetEventStatus(25000102) == 1:
                """State 13"""
                OpenGenericDialog(1, 99094101, 0, 0, 0)
            # Conqueror
            elif GetEventStatus(25000103) == 1:
                """State 14"""
                OpenGenericDialog(1, 99094102, 0, 0, 0)
            # Accursed
            elif GetEventStatus(25000104) == 1:
                """State 15"""
                OpenGenericDialog(1, 99094103, 0, 0, 0)
            # Gladiator
            elif GetEventStatus(25000105) == 1:
                """State 16"""
                OpenGenericDialog(1, 99094104, 0, 0, 0)
            # Wanderer
            elif GetEventStatus(25000106) == 1:
                """State 17"""
                OpenGenericDialog(1, 99094105, 0, 0, 0)
            # Fallback: Hollow
            else:
                """State 18"""
                OpenGenericDialog(1, 99094100, 0, 0, 0)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 19"""
            return 0

# Achievements
def t400502_x21():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Sword and Board
        AddTalkListData(4, 99093103, -1)
        
        # Stormageddon
        AddTalkListData(5, 99093104, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Sword and Board
        if GetTalkListEntryResult() == 4:
            """State 5"""
            assert (t400502_x30(flag1=25002103, flag2=25002203, flag3=25002303, action3=99093203, action4=99093303,
                    action5=99093403, action6=99093503, lot1=100010))
        # Stormageddon
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert (t400502_x30(flag1=25002104, flag2=25002204, flag3=25002304, action3=99093204, action4=99093304,
                    action5=99093404, action6=99093504, lot1=100040))
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 13"""
            return 0

# Achievement Status
def t400502_x30(flag1=_, flag2=_, flag3=_, action3=_, action4=_, action5=_, action6=_, lot1=_):
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Requirement
        AddTalkListDataIf(not GetEventStatus(flag1) and not GetEventStatus(flag2), 1, 99093002, -1)
        
        # Reward
        AddTalkListDataIf(not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3),
                          2, 99093003, -1)
        
        # Requirement (Complete)
        AddTalkListDataIf(GetEventStatus(flag1) == 1 and not GetEventStatus(flag2), 10, 99093002, -1)
        # Reward (Complete)
        AddTalkListDataIf(GetEventStatus(flag1) == 1 and not GetEventStatus(flag2) and not GetEventStatus(flag3),
                          11, 99093003, -1)
        
        # Requirement (Failed)
        AddTalkListDataIf(not GetEventStatus(flag1) and GetEventStatus(flag2) == 1, 12, 99093002, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Requirement
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenGenericDialog(1, action3, 0, 0, 0)
        # Reward
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenGenericDialog(1, action4, 0, 0, 0)
        # Requirement (Complete)
        elif GetTalkListEntryResult() == 10:
            """State 4"""
            OpenGenericDialog(1, action5, 0, 0, 0)
        # Reward (Complete)
        elif GetTalkListEntryResult() == 11:
            """State 5"""
            SetEventState(flag3, 1)
            GetItemFromItemLot(lot1)
            return 0
        # Requirement (Failed)
        elif GetTalkListEntryResult() == 12:
            """State 6"""
            OpenGenericDialog(1, action6, 0, 0, 0)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 7"""
            return 0


