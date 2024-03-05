# -*- coding: utf-8 -*-
def t400505_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400505_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400505_x1()
        assert not IsClientPlayer()

def t400505_x0():
    """State 0,1"""
    t400505_x3()
    Quit()

def t400505_x1():
    """State 0,1"""
    assert t400505_x2()
    """State 2"""
    return 0

def t400505_x2():
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

def t400505_x3():
    """State 0,1"""
    call = t400505_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400505_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400505_x5()
        if call.Done():
            """State 3"""
            call = t400505_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400505_x6()
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
                call = t400505_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400505_x2()
    Quit()

def t400505_x5():
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

def t400505_x6():
    """State 0,6"""
    assert t400505_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400505_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400505_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400505_x2()
    """State 6"""
    return 0

def t400505_x8():
    """State 0,1"""
    assert t400505_x9()
    """State 24"""
    return 0

def t400505_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Purchase Item
        AddTalkListData(1, 15010004, -1)
        
        # Armor Transformation
        AddTalkListData(2, 15003060, -1)
        
        # Visual Transformation
        AddTalkListData(3, 15003061, -1)
        
        # Perspective Transformation
        AddTalkListData(4, 15003062, -1)
        
        # Talk
        AddTalkListData(10, 99010001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Purchase Item
        if GetTalkListEntryResult() == 1:
            """State 2"""
            OpenRegularShop(250000, 250099)
        # Armor Transformation
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x60()
        # Visual Transformation
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400505_x30()
        # Perspective Transformation
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400505_x12()
        # Talk
        elif GetTalkListEntryResult() == 10:
            """State 6"""
            assert t400505_x10(text1=10019000, flag1=0, mode1=0)
            """State 7"""
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 8"""
            return 0

def t400505_x10(text1=10019000, flag1=0, mode1=0):
    """State 0,4"""
    assert t400505_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400505_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Perspective Transformation
def t400505_x12():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99098000, -1)
        AddTalkListData(2, 99098001, -1)
        AddTalkListData(10, 15003110, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x13()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x14()
        elif GetTalkListEntryResult() == 10:
            """State 4"""
            assert t400505_x18()
            """State 5"""
            assert t400505_x19()
            """State 6"""
            SetEventState(25007370, 1)
            SetEventState(25007371, 1)
            assert t400505_x50(action1=15003121)
            """State 7"""
            return 0
        elif GetTalkListEntryResult() == 99:
            """State 8"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 9"""
            return 0

def t400505_x13():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(3, 99098011, -1)
        AddTalkListData(2, 99098012, -1)
        AddTalkListData(1, 99098010, -1)
        AddTalkListData(4, 99098013, -1)
        AddTalkListData(5, 99098014, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x18()
            """State 3"""
            SetEventState(25007360, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x18()
            """State 5"""
            SetEventState(25007361, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x18()
            """State 7"""
            SetEventState(25007362, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x18()
            """State 9"""
            SetEventState(25007363, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x18()
            """State 11"""
            SetEventState(25007364, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 12"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 13"""
            return 0

def t400505_x14():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(2, 99098021, -1)
        AddTalkListData(1, 99098020, -1)
        AddTalkListData(3, 99098022, -1)
        AddTalkListData(4, 99098023, -1)
        AddTalkListData(5, 99098024, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x19()
            """State 3"""
            SetEventState(25007365, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x19()
            """State 5"""
            SetEventState(25007366, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x19()
            """State 7"""
            SetEventState(25007367, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x19()
            """State 9"""
            SetEventState(25007368, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x19()
            """State 11"""
            SetEventState(25007369, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 12"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 13"""
            return 0

def t400505_x18():
    """State 0"""
    SetEventState(25007360, 0)
    SetEventState(25007361, 0)
    SetEventState(25007362, 0)
    SetEventState(25007363, 0)
    SetEventState(25007364, 0)
    SetEventState(25007370, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x19():
    """State 0"""
    SetEventState(25007365, 0)
    SetEventState(25007366, 0)
    SetEventState(25007367, 0)
    SetEventState(25007368, 0)
    SetEventState(25007369, 0)
    SetEventState(25007370, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

# Visual Transformation
def t400505_x30():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003100, -1)
        AddTalkListData(2, 15003107, -1)
        AddTalkListData(3, 15003103, -1)
        AddTalkListData(4, 15003104, -1)
        AddTalkListData(6, 15003106, -1)
        AddTalkListData(5, 15003105, -1)
        AddTalkListData(7, 15003108, -1)
        AddTalkListData(10, 15003110, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x31()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x44()
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400505_x40()
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400505_x41()
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert t400505_x42()
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert t400505_x43()
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert t400505_x45()
        elif GetTalkListEntryResult() == 10:
            """State 9"""
            SetEventState(25007398, 1)
            assert t400505_x50(action1=15003120)
            """State 10"""
            return 0
        elif GetTalkListEntryResult() == 99:
            """State 11"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0

def t400505_x31():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003101, -1)
        AddTalkListData(2, 15003102, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x32()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x33()
        elif GetTalkListEntryResult() == 99:
            """State 4"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 5"""
            return 0

def t400505_x32():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(20, 15003219, -1)
        AddTalkListData(2, 15003201, -1)
        AddTalkListData(21, 15003220, -1)
        AddTalkListData(3, 15003202, -1)
        AddTalkListData(4, 15003203, -1)
        AddTalkListData(5, 15003204, -1)
        AddTalkListData(6, 15003205, -1)
        AddTalkListData(7, 15003206, -1)
        AddTalkListData(8, 15003207, -1)
        AddTalkListData(9, 15003208, -1)
        AddTalkListData(10, 15003209, -1)
        AddTalkListData(11, 15003210, -1)
        AddTalkListData(12, 15003211, -1)
        AddTalkListData(13, 15003212, -1)
        AddTalkListData(14, 15003213, -1)
        AddTalkListData(15, 15003214, -1)
        AddTalkListData(16, 15003215, -1)
        AddTalkListData(17, 15003216, -1)
        AddTalkListData(18, 15003217, -1)
        AddTalkListData(19, 15003218, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x53()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x53()
            """State 5"""
            SetEventState(25007100, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x53()
            """State 7"""
            SetEventState(25007101, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x53()
            """State 9"""
            SetEventState(25007102, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x53()
            """State 11"""
            SetEventState(25007103, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x53()
            """State 13"""
            SetEventState(25007104, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x53()
            """State 15"""
            SetEventState(25007105, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x53()
            """State 17"""
            SetEventState(25007106, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x53()
            """State 19"""
            SetEventState(25007107, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x53()
            """State 21"""
            SetEventState(25007108, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x53()
            """State 23"""
            SetEventState(25007109, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x53()
            """State 25"""
            SetEventState(25007110, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x53()
            """State 27"""
            SetEventState(25007111, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x53()
            """State 29"""
            SetEventState(25007112, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x53()
            """State 31"""
            SetEventState(25007113, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x53()
            """State 33"""
            SetEventState(25007114, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x53()
            """State 35"""
            SetEventState(25007115, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x53()
            """State 37"""
            SetEventState(25007116, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x53()
            """State 39"""
            SetEventState(25007117, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x53()
            """State 41"""
            SetEventState(25007118, 1)
            assert t400505_x50(action1=15003122)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x53()
            """State 43"""
            SetEventState(25007119, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 44"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 45"""
            return 0

def t400505_x33():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003201, -1)
        AddTalkListData(21, 15003220, -1)
        AddTalkListData(3, 15003202, -1)
        AddTalkListData(4, 15003203, -1)
        AddTalkListData(5, 15003204, -1)
        AddTalkListData(6, 15003205, -1)
        AddTalkListData(7, 15003206, -1)
        AddTalkListData(8, 15003207, -1)
        AddTalkListData(9, 15003208, -1)
        AddTalkListData(10, 15003209, -1)
        AddTalkListData(11, 15003210, -1)
        AddTalkListData(12, 15003211, -1)
        AddTalkListData(13, 15003212, -1)
        AddTalkListData(14, 15003213, -1)
        AddTalkListData(15, 15003214, -1)
        AddTalkListData(16, 15003215, -1)
        AddTalkListData(17, 15003216, -1)
        AddTalkListData(18, 15003217, -1)
        AddTalkListData(19, 15003218, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x54()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x54()
            """State 5"""
            SetEventState(25007130, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x54()
            """State 7"""
            SetEventState(25007131, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x54()
            """State 9"""
            SetEventState(25007132, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x54()
            """State 11"""
            SetEventState(25007133, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x54()
            """State 13"""
            SetEventState(25007134, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x54()
            """State 15"""
            SetEventState(25007135, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x54()
            """State 17"""
            SetEventState(25007136, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x54()
            """State 19"""
            SetEventState(25007137, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x54()
            """State 21"""
            SetEventState(25007138, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x54()
            """State 23"""
            SetEventState(25007139, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x54()
            """State 25"""
            SetEventState(25007140, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x54()
            """State 27"""
            SetEventState(25007141, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x54()
            """State 29"""
            SetEventState(25007142, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x54()
            """State 31"""
            SetEventState(25007143, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x54()
            """State 33"""
            SetEventState(25007144, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x54()
            """State 35"""
            SetEventState(25007145, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x54()
            """State 37"""
            SetEventState(25007146, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x54()
            """State 39"""
            SetEventState(25007147, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 40"""
            assert t400505_x54()
            """State 41"""
            SetEventState(25007149, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 42"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 43"""
            return 0

def t400505_x40():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(3, 15003301, -1)
        AddTalkListData(4, 15003302, -1)
        AddTalkListData(5, 15003303, -1)
        AddTalkListData(6, 15003304, -1)
        AddTalkListData(7, 15003305, -1)
        AddTalkListData(8, 15003306, -1)
        AddTalkListData(9, 15003307, -1)
        AddTalkListData(10, 15003308, -1)
        AddTalkListData(11, 15003309, -1)
        AddTalkListData(12, 15003310, -1)
        AddTalkListData(13, 15003311, -1)
        AddTalkListData(14, 15003312, -1)
        AddTalkListData(15, 15003313, -1)
        AddTalkListData(16, 15003314, -1)
        AddTalkListData(17, 15003315, -1)
        AddTalkListData(18, 15003316, -1)
        AddTalkListData(19, 15003317, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x55()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x55()
            """State 5"""
            SetEventState(25007200, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x55()
            """State 7"""
            SetEventState(25007201, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x55()
            """State 9"""
            SetEventState(25007202, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x55()
            """State 11"""
            SetEventState(25007203, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x55()
            """State 13"""
            SetEventState(25007204, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x55()
            """State 15"""
            SetEventState(25007205, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x55()
            """State 17"""
            SetEventState(25007206, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x55()
            """State 19"""
            SetEventState(25007207, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x55()
            """State 21"""
            SetEventState(25007208, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x55()
            """State 23"""
            SetEventState(25007209, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x55()
            """State 25"""
            SetEventState(25007210, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x55()
            """State 27"""
            SetEventState(25007211, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x55()
            """State 29"""
            SetEventState(25007212, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x55()
            """State 31"""
            SetEventState(25007213, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x55()
            """State 33"""
            SetEventState(25007214, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x55()
            """State 35"""
            SetEventState(25007215, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x55()
            """State 37"""
            SetEventState(25007216, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x55()
            """State 39"""
            SetEventState(25007217, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 40"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 41"""
            return 0

def t400505_x41():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003400, -1)
        AddTalkListData(3, 15003401, -1)
        AddTalkListData(4, 15003402, -1)
        AddTalkListData(5, 15003403, -1)
        AddTalkListData(6, 15003404, -1)
        AddTalkListData(7, 15003405, -1)
        AddTalkListData(8, 15003406, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x56()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x56()
            """State 5"""
            SetEventState(25007250, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x56()
            """State 7"""
            SetEventState(25007251, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x56()
            """State 9"""
            SetEventState(25007252, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x56()
            """State 11"""
            SetEventState(25007253, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x56()
            """State 13"""
            SetEventState(25007254, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x56()
            """State 15"""
            SetEventState(25007255, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x56()
            """State 17"""
            SetEventState(25007256, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 18"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 19"""
            return 0

def t400505_x42():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003500, -1)
        AddTalkListData(5, 15003503, -1)
        AddTalkListData(6, 15003504, -1)
        AddTalkListData(7, 15003505, -1)
        AddTalkListData(8, 15003506, -1)
        AddTalkListData(9, 15003507, -1)
        AddTalkListData(10, 15003508, -1)
        AddTalkListData(11, 15003509, -1)
        AddTalkListData(12, 15003510, -1)
        AddTalkListData(13, 15003511, -1)
        AddTalkListData(14, 15003512, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x57()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x57()
            """State 5"""
            SetEventState(25007300, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert t400505_x57()
            """State 7"""
            SetEventState(25007303, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 8"""
            assert t400505_x57()
            """State 9"""
            SetEventState(25007304, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 10"""
            assert t400505_x57()
            """State 11"""
            SetEventState(25007305, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 12"""
            assert t400505_x57()
            """State 13"""
            SetEventState(25007306, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 14"""
            assert t400505_x57()
            """State 15"""
            SetEventState(25007307, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 16"""
            assert t400505_x57()
            """State 17"""
            SetEventState(25007308, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 18"""
            assert t400505_x57()
            """State 19"""
            SetEventState(25007309, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 20"""
            assert t400505_x57()
            """State 21"""
            SetEventState(25007310, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 22"""
            assert t400505_x57()
            """State 23"""
            SetEventState(25007311, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 24"""
            assert t400505_x57()
            """State 25"""
            SetEventState(25007312, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 26"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 27"""
            return 0

def t400505_x43():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003600, -1)
        AddTalkListData(3, 15003601, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            SetEventState(25007350, 0)
            SetEventState(25007351, 0)
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            SetEventState(25007350, 0)
            SetEventState(25007351, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            SetEventState(25007350, 1)
            SetEventState(25007351, 0)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

def t400505_x44():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003700, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x58()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x58()
            """State 5"""
            SetEventState(25007270, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 6"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 7"""
            return 0

def t400505_x45():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 15003520, -1)
        AddTalkListData(3, 15003521, -1)
        AddTalkListData(4, 15003522, -1)
        AddTalkListData(5, 15003523, -1)
        AddTalkListData(6, 15003524, -1)
        AddTalkListData(7, 15003525, -1)
        AddTalkListData(8, 15003526, -1)
        AddTalkListData(9, 15003527, -1)
        AddTalkListData(10, 15003528, -1)
        AddTalkListData(11, 15003529, -1)
        AddTalkListData(12, 15003530, -1)
        AddTalkListData(13, 15003531, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x57()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x57()
            """State 5"""
            SetEventState(25007320, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x57()
            """State 7"""
            SetEventState(25007321, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x57()
            """State 9"""
            SetEventState(25007322, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x57()
            """State 11"""
            SetEventState(25007323, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x57()
            """State 13"""
            SetEventState(25007324, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x57()
            """State 15"""
            SetEventState(25007325, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x57()
            """State 17"""
            SetEventState(25007326, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x57()
            """State 19"""
            SetEventState(25007327, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x57()
            """State 21"""
            SetEventState(25007328, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x57()
            """State 23"""
            SetEventState(25007329, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x57()
            """State 25"""
            SetEventState(25007330, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x57()
            """State 27"""
            SetEventState(25007331, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 28"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 29"""
            return 0

def t400505_x50(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t400505_x51():
    """State 0"""
    SetEventState(25007396, 1)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x52():
    """State 0"""
    SetEventState(25007397, 1)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x53():
    """State 0"""
    SetEventState(25007100, 0)
    SetEventState(25007101, 0)
    SetEventState(25007102, 0)
    SetEventState(25007103, 0)
    SetEventState(25007104, 0)
    SetEventState(25007105, 0)
    SetEventState(25007106, 0)
    SetEventState(25007107, 0)
    SetEventState(25007108, 0)
    SetEventState(25007109, 0)
    SetEventState(25007110, 0)
    SetEventState(25007111, 0)
    SetEventState(25007112, 0)
    SetEventState(25007113, 0)
    SetEventState(25007114, 0)
    SetEventState(25007115, 0)
    SetEventState(25007116, 0)
    SetEventState(25007117, 0)
    SetEventState(25007118, 0)
    SetEventState(25007119, 0)
    SetEventState(25007120, 0)
    SetEventState(25007121, 0)
    SetEventState(25007122, 0)
    SetEventState(25007123, 0)
    SetEventState(25007124, 0)
    SetEventState(25007125, 0)
    SetEventState(25007126, 0)
    SetEventState(25007127, 0)
    SetEventState(25007128, 0)
    SetEventState(25007129, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x54():
    """State 0"""
    SetEventState(25007130, 0)
    SetEventState(25007131, 0)
    SetEventState(25007132, 0)
    SetEventState(25007133, 0)
    SetEventState(25007134, 0)
    SetEventState(25007135, 0)
    SetEventState(25007136, 0)
    SetEventState(25007137, 0)
    SetEventState(25007138, 0)
    SetEventState(25007139, 0)
    SetEventState(25007140, 0)
    SetEventState(25007141, 0)
    SetEventState(25007142, 0)
    SetEventState(25007143, 0)
    SetEventState(25007144, 0)
    SetEventState(25007145, 0)
    SetEventState(25007146, 0)
    SetEventState(25007147, 0)
    SetEventState(25007148, 0)
    SetEventState(25007149, 0)
    SetEventState(25007150, 0)
    SetEventState(25007151, 0)
    SetEventState(25007152, 0)
    SetEventState(25007153, 0)
    SetEventState(25007154, 0)
    SetEventState(25007155, 0)
    SetEventState(25007156, 0)
    SetEventState(25007157, 0)
    SetEventState(25007158, 0)
    SetEventState(25007159, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x55():
    """State 0"""
    SetEventState(25007200, 0)
    SetEventState(25007201, 0)
    SetEventState(25007202, 0)
    SetEventState(25007203, 0)
    SetEventState(25007204, 0)
    SetEventState(25007205, 0)
    SetEventState(25007206, 0)
    SetEventState(25007207, 0)
    SetEventState(25007208, 0)
    SetEventState(25007209, 0)
    SetEventState(25007210, 0)
    SetEventState(25007211, 0)
    SetEventState(25007212, 0)
    SetEventState(25007213, 0)
    SetEventState(25007214, 0)
    SetEventState(25007215, 0)
    SetEventState(25007216, 0)
    SetEventState(25007217, 0)
    SetEventState(25007218, 0)
    SetEventState(25007219, 0)
    SetEventState(25007220, 0)
    SetEventState(25007221, 0)
    SetEventState(25007222, 0)
    SetEventState(25007223, 0)
    SetEventState(25007224, 0)
    SetEventState(25007225, 0)
    SetEventState(25007226, 0)
    SetEventState(25007227, 0)
    SetEventState(25007228, 0)
    SetEventState(25007229, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x56():
    """State 0"""
    SetEventState(25007250, 0)
    SetEventState(25007251, 0)
    SetEventState(25007252, 0)
    SetEventState(25007253, 0)
    SetEventState(25007254, 0)
    SetEventState(25007255, 0)
    SetEventState(25007256, 0)
    SetEventState(25007257, 0)
    SetEventState(25007258, 0)
    SetEventState(25007259, 0)
    SetEventState(25007260, 0)
    SetEventState(25007261, 0)
    SetEventState(25007262, 0)
    SetEventState(25007263, 0)
    SetEventState(25007264, 0)
    SetEventState(25007265, 0)
    SetEventState(25007266, 0)
    SetEventState(25007267, 0)
    SetEventState(25007268, 0)
    SetEventState(25007269, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x57():
    """State 0"""
    SetEventState(25007300, 0)
    SetEventState(25007303, 0)
    SetEventState(25007304, 0)
    SetEventState(25007305, 0)
    SetEventState(25007306, 0)
    SetEventState(25007307, 0)
    SetEventState(25007308, 0)
    SetEventState(25007309, 0)
    SetEventState(25007310, 0)
    SetEventState(25007311, 0)
    SetEventState(25007312, 0)
    SetEventState(25007313, 0)
    SetEventState(25007314, 0)
    SetEventState(25007315, 0)
    SetEventState(25007316, 0)
    SetEventState(25007317, 0)
    SetEventState(25007318, 0)
    SetEventState(25007319, 0)
    SetEventState(25007320, 0)
    SetEventState(25007321, 0)
    SetEventState(25007322, 0)
    SetEventState(25007323, 0)
    SetEventState(25007324, 0)
    SetEventState(25007325, 0)
    SetEventState(25007326, 0)
    SetEventState(25007327, 0)
    SetEventState(25007328, 0)
    SetEventState(25007329, 0)
    SetEventState(25007330, 0)
    SetEventState(25007331, 0)
    SetEventState(25007332, 0)
    SetEventState(25007333, 0)
    SetEventState(25007334, 0)
    SetEventState(25007335, 0)
    SetEventState(25007336, 0)
    SetEventState(25007337, 0)
    SetEventState(25007338, 0)
    SetEventState(25007339, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

def t400505_x58():
    """State 0"""
    SetEventState(25007270, 0)
    SetEventState(25007271, 0)
    SetEventState(25007272, 0)
    SetEventState(25007273, 0)
    SetEventState(25007274, 0)
    SetEventState(25007275, 0)
    SetEventState(25007276, 0)
    SetEventState(25007277, 0)
    SetEventState(25007278, 0)
    SetEventState(25007279, 0)
    assert GetCurrentStateElapsedFrames() > 10
    """State 1"""
    return 0

# Armor Transformation
def t400505_x60():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99097000, -1)
        AddTalkListData(2, 99097001, -1)
        AddTalkListData(10, 15003110, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x61()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x62()
        elif GetTalkListEntryResult() == 10:
            """State 4"""
            SetEventState(25007399, 1)
            assert t400505_x50(action1=15003121)
            """State 5"""
            return 0
        elif GetTalkListEntryResult() == 99:
            """State 6"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 7"""
            return 0

def t400505_x61():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99097010, -1)
        AddTalkListData(2, 99097011, -1)
        AddTalkListData(3, 99097012, -1)
        AddTalkListData(4, 99097013, -1)
        AddTalkListData(5, 99097014, -1)
        AddTalkListData(6, 99097015, -1)
        AddTalkListData(7, 99097016, -1)
        AddTalkListData(8, 99097017, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x70()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x71()
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400505_x72()
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400505_x73()
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert t400505_x74()
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert t400505_x75()
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert t400505_x76()
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert t400505_x77()
        elif GetTalkListEntryResult() == 99:
            """State 10"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 11"""
            return 0

def t400505_x62():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99097010, -1)
        AddTalkListData(2, 99097011, -1)
        AddTalkListData(3, 99097012, -1)
        AddTalkListData(4, 99097013, -1)
        AddTalkListData(5, 99097014, -1)
        AddTalkListData(6, 99097015, -1)
        AddTalkListData(7, 99097016, -1)
        AddTalkListData(8, 99097017, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x80()
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400505_x81()
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400505_x82()
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400505_x83()
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert t400505_x84()
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert t400505_x85()
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert t400505_x86()
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert t400505_x87()
        elif GetTalkListEntryResult() == 99:
            """State 10"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 11"""
            return 0

def t400505_x70():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097100, -1)
        AddTalkListData(14, 99097374, -1)
        AddTalkListData(3, 99097101, -1)
        AddTalkListData(4, 99097102, -1)
        AddTalkListData(5, 99097103, -1)
        AddTalkListData(6, 99097104, -1)
        AddTalkListData(7, 99097105, -1)
        AddTalkListData(8, 99097106, -1)
        AddTalkListData(9, 99097107, -1)
        AddTalkListData(10, 99097108, -1)
        AddTalkListData(11, 99097109, -1)
        AddTalkListData(13, 99097372, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007000, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007001, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007002, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007003, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007004, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007005, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007006, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007007, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007008, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007009, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007010, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007244, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007274, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 30"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 31"""
            return 0

def t400505_x71():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097112, -1)
        AddTalkListData(3, 99097113, -1)
        AddTalkListData(4, 99097121, -1)
        AddTalkListData(5, 99097141, -1)
        AddTalkListData(6, 99097142, -1)
        AddTalkListData(7, 99097145, -1)
        AddTalkListData(8, 99097156, -1)
        AddTalkListData(9, 99097158, -1)
        AddTalkListData(10, 99097159, -1)
        AddTalkListData(11, 99097160, -1)
        AddTalkListData(12, 99097163, -1)
        AddTalkListData(13, 99097164, -1)
        AddTalkListData(14, 99097165, -1)
        AddTalkListData(15, 99097166, -1)
        AddTalkListData(16, 99097167, -1)
        AddTalkListData(17, 99097169, -1)
        AddTalkListData(18, 99097174, -1)
        AddTalkListData(19, 99097175, -1)
        AddTalkListData(20, 99097183, -1)
        AddTalkListData(21, 99097184, -1)
        AddTalkListData(22, 99097196, -1)
        AddTalkListData(23, 99097197, -1)
        AddTalkListData(24, 99097199, -1)
        AddTalkListData(25, 99097200, -1)
        AddTalkListData(26, 99097202, -1)
        AddTalkListData(27, 99097208, -1)
        AddTalkListData(28, 99097209, -1)
        AddTalkListData(29, 99097210, -1)
        AddTalkListData(30, 99097211, -1)
        AddTalkListData(31, 99097212, -1)
        AddTalkListData(32, 99097213, -1)
        AddTalkListData(33, 99097214, -1)
        AddTalkListData(34, 99097215, -1)
        AddTalkListData(35, 99097222, -1)
        AddTalkListData(36, 99097223, -1)
        AddTalkListData(37, 99097240, -1)
        AddTalkListData(38, 99097241, -1)
        AddTalkListData(39, 99097260, -1)
        AddTalkListData(40, 99097261, -1)
        AddTalkListData(41, 99097262, -1)
        AddTalkListData(42, 99097263, -1)
        AddTalkListData(43, 99097264, -1)
        AddTalkListData(44, 99097265, -1)
        AddTalkListData(45, 99097267, -1)
        AddTalkListData(46, 99097268, -1)
        AddTalkListData(47, 99097277, -1)
        AddTalkListData(48, 99097278, -1)
        AddTalkListData(49, 99097283, -1)
        AddTalkListData(50, 99097286, -1)
        AddTalkListData(51, 99097292, -1)
        AddTalkListData(52, 99097294, -1)
        AddTalkListData(53, 99097298, -1)
        AddTalkListData(54, 99097306, -1)
        AddTalkListData(55, 99097319, -1)
        AddTalkListData(56, 99097323, -1)
        AddTalkListData(57, 99097324, -1)
        AddTalkListData(58, 99097353, -1)
        AddTalkListData(59, 99097354, -1)
        AddTalkListData(60, 99097370, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007012, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007013, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007021, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007041, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007042, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007045, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007056, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007058, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007060, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007061, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007064, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007065, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007066, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007067, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007068, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007070, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007075, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007076, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007084, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007085, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007097, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007098, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007100, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007101, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007103, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007109, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007110, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x51()
            """State 59"""
            SetEventState(24007111, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x51()
            """State 61"""
            SetEventState(24007112, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x51()
            """State 63"""
            SetEventState(24007113, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x51()
            """State 65"""
            SetEventState(24007114, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x51()
            """State 67"""
            SetEventState(24007115, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x51()
            """State 69"""
            SetEventState(24007116, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x51()
            """State 71"""
            SetEventState(24007123, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x51()
            """State 73"""
            SetEventState(24007124, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x51()
            """State 75"""
            SetEventState(24007141, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 38:
            """State 76"""
            assert t400505_x51()
            """State 77"""
            SetEventState(24007142, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 39:
            """State 78"""
            assert t400505_x51()
            """State 79"""
            SetEventState(24007162, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 40:
            """State 80"""
            assert t400505_x51()
            """State 81"""
            SetEventState(24007163, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 41:
            """State 82"""
            assert t400505_x51()
            """State 83"""
            SetEventState(24007164, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 42:
            """State 84"""
            assert t400505_x51()
            """State 85"""
            SetEventState(24007165, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 43:
            """State 86"""
            assert t400505_x51()
            """State 87"""
            SetEventState(24007166, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 44:
            """State 88"""
            assert t400505_x51()
            """State 89"""
            SetEventState(24007167, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 45:
            """State 90"""
            assert t400505_x51()
            """State 91"""
            SetEventState(24007169, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 46:
            """State 92"""
            assert t400505_x51()
            """State 93"""
            SetEventState(24007170, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 47:
            """State 94"""
            assert t400505_x51()
            """State 95"""
            SetEventState(24007179, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 48:
            """State 96"""
            assert t400505_x51()
            """State 97"""
            SetEventState(24007180, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 49:
            """State 98"""
            assert t400505_x51()
            """State 99"""
            SetEventState(24007185, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 50:
            """State 100"""
            assert t400505_x51()
            """State 101"""
            SetEventState(24007188, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 51:
            """State 102"""
            assert t400505_x51()
            """State 103"""
            SetEventState(24007194, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 52:
            """State 104"""
            assert t400505_x51()
            """State 105"""
            SetEventState(24007196, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 53:
            """State 106"""
            assert t400505_x51()
            """State 107"""
            SetEventState(24007200, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 54:
            """State 108"""
            assert t400505_x51()
            """State 109"""
            SetEventState(24007208, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 55:
            """State 110"""
            assert t400505_x51()
            """State 111"""
            SetEventState(24007221, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 56:
            """State 112"""
            assert t400505_x51()
            """State 113"""
            SetEventState(24007225, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 57:
            """State 114"""
            assert t400505_x51()
            """State 115"""
            SetEventState(24007226, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 58:
            """State 116"""
            assert t400505_x51()
            """State 117"""
            SetEventState(24007255, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 59:
            """State 118"""
            assert t400505_x51()
            """State 119"""
            SetEventState(24007256, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 60:
            """State 120"""
            assert t400505_x51()
            """State 121"""
            SetEventState(24007272, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 122"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 123"""
            return 0

def t400505_x72():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097111, -1)
        AddTalkListData(3, 99097114, -1)
        AddTalkListData(4, 99097115, -1)
        AddTalkListData(5, 99097116, -1)
        AddTalkListData(6, 99097117, -1)
        AddTalkListData(7, 99097118, -1)
        AddTalkListData(8, 99097119, -1)
        AddTalkListData(9, 99097120, -1)
        AddTalkListData(10, 99097122, -1)
        AddTalkListData(11, 99097123, -1)
        AddTalkListData(12, 99097124, -1)
        AddTalkListData(13, 99097125, -1)
        AddTalkListData(14, 99097126, -1)
        AddTalkListData(15, 99097127, -1)
        AddTalkListData(16, 99097128, -1)
        AddTalkListData(17, 99097129, -1)
        AddTalkListData(18, 99097130, -1)
        AddTalkListData(19, 99097131, -1)
        AddTalkListData(20, 99097132, -1)
        AddTalkListData(21, 99097133, -1)
        AddTalkListData(22, 99097134, -1)
        AddTalkListData(23, 99097343, -1)
        AddTalkListData(24, 99097346, -1)
        AddTalkListData(25, 99097348, -1)
        AddTalkListData(26, 99097355, -1)
        AddTalkListData(27, 99097358, -1)
        AddTalkListData(28, 99097367, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007011, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007014, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007015, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007016, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007017, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007018, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007019, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007020, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007022, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007023, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007024, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007025, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007026, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007027, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007028, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007029, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007030, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007031, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007032, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007033, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007034, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007245, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007248, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007250, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007257, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007260, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007269, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 58"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 59"""
            return 0

def t400505_x73():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097135, -1)
        AddTalkListData(3, 99097136, -1)
        AddTalkListData(4, 99097137, -1)
        AddTalkListData(5, 99097138, -1)
        AddTalkListData(6, 99097139, -1)
        AddTalkListData(7, 99097140, -1)
        AddTalkListData(8, 99097143, -1)
        AddTalkListData(9, 99097144, -1)
        AddTalkListData(10, 99097146, -1)
        AddTalkListData(11, 99097147, -1)
        AddTalkListData(12, 99097148, -1)
        AddTalkListData(13, 99097149, -1)
        AddTalkListData(14, 99097150, -1)
        AddTalkListData(15, 99097151, -1)
        AddTalkListData(16, 99097152, -1)
        AddTalkListData(17, 99097153, -1)
        AddTalkListData(18, 99097154, -1)
        AddTalkListData(19, 99097155, -1)
        AddTalkListData(20, 99097157, -1)
        AddTalkListData(21, 99097350, -1)
        AddTalkListData(22, 99097351, -1)
        AddTalkListData(23, 99097352, -1)
        AddTalkListData(24, 99097362, -1)
        AddTalkListData(25, 99097368, -1)
        AddTalkListData(26, 99097369, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007035, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007036, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007037, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007038, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007039, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007040, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007043, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007044, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007046, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007047, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007048, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007049, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007050, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007051, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007052, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007053, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007054, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007055, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007057, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007252, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007253, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007254, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007264, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007270, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007271, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 54"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 55"""
            return 0

def t400505_x74():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097161, -1)
        AddTalkListData(3, 99097162, -1)
        AddTalkListData(4, 99097168, -1)
        AddTalkListData(5, 99097170, -1)
        AddTalkListData(6, 99097171, -1)
        AddTalkListData(7, 99097172, -1)
        AddTalkListData(8, 99097173, -1)
        AddTalkListData(9, 99097176, -1)
        AddTalkListData(10, 99097177, -1)
        AddTalkListData(11, 99097178, -1)
        AddTalkListData(12, 99097179, -1)
        AddTalkListData(13, 99097180, -1)
        AddTalkListData(14, 99097181, -1)
        AddTalkListData(15, 99097182, -1)
        AddTalkListData(16, 99097185, -1)
        AddTalkListData(17, 99097186, -1)
        AddTalkListData(18, 99097187, -1)
        AddTalkListData(19, 99097188, -1)
        AddTalkListData(20, 99097189, -1)
        AddTalkListData(21, 99097190, -1)
        AddTalkListData(22, 99097191, -1)
        AddTalkListData(23, 99097192, -1)
        AddTalkListData(24, 99097193, -1)
        AddTalkListData(25, 99097332, -1)
        AddTalkListData(26, 99097335, -1)
        AddTalkListData(27, 99097344, -1)
        AddTalkListData(28, 99097361, -1)
        AddTalkListData(29, 99097371, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007062, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007063, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007069, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007071, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007072, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007073, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007074, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007077, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007078, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007079, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007080, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007081, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007082, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007083, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007086, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007087, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007088, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007089, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007090, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007091, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007092, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007093, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007094, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007234, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007237, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007246, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007263, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x51()
            """State 59"""
            SetEventState(24007273, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 60"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 61"""
            return 0

def t400505_x75():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097194, -1)
        AddTalkListData(3, 99097195, -1)
        AddTalkListData(4, 99097198, -1)
        AddTalkListData(5, 99097201, -1)
        AddTalkListData(6, 99097203, -1)
        AddTalkListData(7, 99097204, -1)
        AddTalkListData(8, 99097205, -1)
        AddTalkListData(9, 99097206, -1)
        AddTalkListData(10, 99097207, -1)
        AddTalkListData(11, 99097216, -1)
        AddTalkListData(12, 99097217, -1)
        AddTalkListData(13, 99097218, -1)
        AddTalkListData(14, 99097219, -1)
        AddTalkListData(15, 99097220, -1)
        AddTalkListData(16, 99097221, -1)
        AddTalkListData(17, 99097224, -1)
        AddTalkListData(18, 99097225, -1)
        AddTalkListData(19, 99097226, -1)
        AddTalkListData(20, 99097227, -1)
        AddTalkListData(21, 99097228, -1)
        AddTalkListData(22, 99097229, -1)
        AddTalkListData(23, 99097230, -1)
        AddTalkListData(24, 99097231, -1)
        AddTalkListData(25, 99097232, -1)
        AddTalkListData(26, 99097233, -1)
        AddTalkListData(27, 99097234, -1)
        AddTalkListData(28, 99097235, -1)
        AddTalkListData(29, 99097236, -1)
        AddTalkListData(30, 99097237, -1)
        AddTalkListData(31, 99097238, -1)
        AddTalkListData(32, 99097239, -1)
        AddTalkListData(33, 99097242, -1)
        AddTalkListData(34, 99097243, -1)
        AddTalkListData(35, 99097330, -1)
        AddTalkListData(36, 99097331, -1)
        AddTalkListData(37, 99097333, -1)
        AddTalkListData(38, 99097336, -1)
        AddTalkListData(39, 99097363, -1)
        AddTalkListData(40, 99097364, -1)
        AddTalkListData(41, 99097366, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007095, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007096, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007099, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007102, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007104, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007105, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007106, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007107, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007108, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007117, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007118, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007119, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007120, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007121, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007122, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007125, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007126, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007127, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007128, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007129, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007130, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007131, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007132, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007133, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007134, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007135, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007136, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x51()
            """State 59"""
            SetEventState(24007137, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x51()
            """State 61"""
            SetEventState(24007138, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x51()
            """State 63"""
            SetEventState(24007139, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x51()
            """State 65"""
            SetEventState(24007140, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x51()
            """State 67"""
            SetEventState(24007143, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x51()
            """State 69"""
            SetEventState(24007144, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x51()
            """State 71"""
            SetEventState(24007232, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x51()
            """State 73"""
            SetEventState(24007233, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x51()
            """State 75"""
            SetEventState(24007235, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 38:
            """State 76"""
            assert t400505_x51()
            """State 77"""
            SetEventState(24007238, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 39:
            """State 78"""
            assert t400505_x51()
            """State 79"""
            SetEventState(24007265, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 40:
            """State 80"""
            assert t400505_x51()
            """State 81"""
            SetEventState(24007266, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 41:
            """State 82"""
            assert t400505_x51()
            """State 83"""
            SetEventState(24007268, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 84"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 85"""
            return 0

def t400505_x76():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097244, -1)
        AddTalkListData(3, 99097245, -1)
        AddTalkListData(4, 99097246, -1)
        AddTalkListData(5, 99097247, -1)
        AddTalkListData(6, 99097248, -1)
        AddTalkListData(7, 99097249, -1)
        AddTalkListData(8, 99097250, -1)
        AddTalkListData(9, 99097251, -1)
        AddTalkListData(10, 99097252, -1)
        AddTalkListData(11, 99097253, -1)
        AddTalkListData(12, 99097254, -1)
        AddTalkListData(13, 99097255, -1)
        AddTalkListData(14, 99097256, -1)
        AddTalkListData(15, 99097257, -1)
        AddTalkListData(16, 99097258, -1)
        AddTalkListData(17, 99097259, -1)
        AddTalkListData(18, 99097266, -1)
        AddTalkListData(19, 99097269, -1)
        AddTalkListData(20, 99097270, -1)
        AddTalkListData(21, 99097271, -1)
        AddTalkListData(22, 99097272, -1)
        AddTalkListData(23, 99097273, -1)
        AddTalkListData(24, 99097274, -1)
        AddTalkListData(25, 99097275, -1)
        AddTalkListData(26, 99097276, -1)
        AddTalkListData(27, 99097279, -1)
        AddTalkListData(28, 99097280, -1)
        AddTalkListData(29, 99097281, -1)
        AddTalkListData(30, 99097282, -1)
        AddTalkListData(31, 99097284, -1)
        AddTalkListData(32, 99097285, -1)
        AddTalkListData(33, 99097334, -1)
        AddTalkListData(34, 99097347, -1)
        AddTalkListData(35, 99097357, -1)
        AddTalkListData(36, 99097359, -1)
        AddTalkListData(37, 99097360, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007145, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007146, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007147, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007148, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007149, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007150, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007152, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007153, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007154, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007155, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007156, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007157, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007158, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007159, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007160, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007161, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007168, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007171, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007172, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007173, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007174, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007175, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007176, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007177, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007178, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007181, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007182, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x51()
            """State 59"""
            SetEventState(24007183, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x51()
            """State 61"""
            SetEventState(24007184, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x51()
            """State 63"""
            SetEventState(24007186, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x51()
            """State 65"""
            SetEventState(24007187, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x51()
            """State 67"""
            SetEventState(24007236, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x51()
            """State 69"""
            SetEventState(24007249, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x51()
            """State 71"""
            SetEventState(24007259, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x51()
            """State 73"""
            SetEventState(24007261, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x51()
            """State 75"""
            SetEventState(24007262, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 76"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 77"""
            return 0

def t400505_x77():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097287, -1)
        AddTalkListData(3, 99097288, -1)
        AddTalkListData(4, 99097290, -1)
        AddTalkListData(5, 99097291, -1)
        AddTalkListData(6, 99097293, -1)
        AddTalkListData(7, 99097295, -1)
        AddTalkListData(8, 99097296, -1)
        AddTalkListData(9, 99097297, -1)
        AddTalkListData(10, 99097300, -1)
        AddTalkListData(11, 99097301, -1)
        AddTalkListData(12, 99097302, -1)
        AddTalkListData(13, 99097303, -1)
        AddTalkListData(14, 99097305, -1)
        AddTalkListData(15, 99097307, -1)
        AddTalkListData(16, 99097308, -1)
        AddTalkListData(17, 99097309, -1)
        AddTalkListData(18, 99097310, -1)
        AddTalkListData(19, 99097311, -1)
        AddTalkListData(20, 99097312, -1)
        AddTalkListData(21, 99097313, -1)
        AddTalkListData(22, 99097314, -1)
        AddTalkListData(23, 99097315, -1)
        AddTalkListData(24, 99097316, -1)
        AddTalkListData(25, 99097317, -1)
        AddTalkListData(26, 99097318, -1)
        AddTalkListData(27, 99097320, -1)
        AddTalkListData(28, 99097321, -1)
        AddTalkListData(29, 99097322, -1)
        AddTalkListData(30, 99097325, -1)
        AddTalkListData(31, 99097327, -1)
        AddTalkListData(32, 99097329, -1)
        AddTalkListData(33, 99097337, -1)
        AddTalkListData(34, 99097338, -1)
        AddTalkListData(35, 99097340, -1)
        AddTalkListData(36, 99097345, -1)
        AddTalkListData(37, 99097365, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x51()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x51()
            """State 5"""
            SetEventState(24007189, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x51()
            """State 7"""
            SetEventState(24007190, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x51()
            """State 9"""
            SetEventState(24007192, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x51()
            """State 11"""
            SetEventState(24007193, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x51()
            """State 13"""
            SetEventState(24007195, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x51()
            """State 15"""
            SetEventState(24007197, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x51()
            """State 17"""
            SetEventState(24007198, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x51()
            """State 19"""
            SetEventState(24007199, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x51()
            """State 21"""
            SetEventState(24007202, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x51()
            """State 23"""
            SetEventState(24007203, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x51()
            """State 25"""
            SetEventState(24007204, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x51()
            """State 27"""
            SetEventState(24007205, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x51()
            """State 29"""
            SetEventState(24007207, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x51()
            """State 31"""
            SetEventState(24007209, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x51()
            """State 33"""
            SetEventState(24007210, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x51()
            """State 35"""
            SetEventState(24007211, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x51()
            """State 37"""
            SetEventState(24007212, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x51()
            """State 39"""
            SetEventState(24007213, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x51()
            """State 41"""
            SetEventState(24007214, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x51()
            """State 43"""
            SetEventState(24007215, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x51()
            """State 45"""
            SetEventState(24007216, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x51()
            """State 47"""
            SetEventState(24007217, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x51()
            """State 49"""
            SetEventState(24007218, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x51()
            """State 51"""
            SetEventState(24007219, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x51()
            """State 53"""
            SetEventState(24007220, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x51()
            """State 55"""
            SetEventState(24007222, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x51()
            """State 57"""
            SetEventState(24007223, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x51()
            """State 59"""
            SetEventState(24007224, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x51()
            """State 61"""
            SetEventState(24007227, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x51()
            """State 63"""
            SetEventState(24007229, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x51()
            """State 65"""
            SetEventState(24007231, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x51()
            """State 67"""
            SetEventState(24007239, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x51()
            """State 69"""
            SetEventState(24007240, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x51()
            """State 71"""
            SetEventState(24007242, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x51()
            """State 73"""
            SetEventState(24007247, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x51()
            """State 75"""
            SetEventState(24007267, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 76"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 77"""
            return 0

def t400505_x80():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097100, -1)
        AddTalkListData(14, 99097374, -1)
        AddTalkListData(3, 99097101, -1)
        AddTalkListData(4, 99097102, -1)
        AddTalkListData(5, 99097103, -1)
        AddTalkListData(6, 99097104, -1)
        AddTalkListData(7, 99097105, -1)
        AddTalkListData(8, 99097106, -1)
        AddTalkListData(9, 99097107, -1)
        AddTalkListData(10, 99097108, -1)
        AddTalkListData(11, 99097110, -1)
        AddTalkListData(12, 99097373, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007500, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007501, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007502, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007503, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007504, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007505, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007506, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007507, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007508, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007510, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007744, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007774, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 28"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 29"""
            return 0

def t400505_x81():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097289, -1)
        AddTalkListData(3, 99097299, -1)
        AddTalkListData(4, 99097304, -1)
        AddTalkListData(5, 99097326, -1)
        AddTalkListData(6, 99097328, -1)
        AddTalkListData(7, 99097339, -1)
        AddTalkListData(8, 99097341, -1)
        AddTalkListData(9, 99097356, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007691, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007701, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007706, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007728, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007730, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007741, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007743, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007758, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 20"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 21"""
            return 0

def t400505_x82():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097111, -1)
        AddTalkListData(3, 99097114, -1)
        AddTalkListData(4, 99097115, -1)
        AddTalkListData(5, 99097116, -1)
        AddTalkListData(6, 99097117, -1)
        AddTalkListData(7, 99097118, -1)
        AddTalkListData(8, 99097119, -1)
        AddTalkListData(9, 99097120, -1)
        AddTalkListData(10, 99097122, -1)
        AddTalkListData(11, 99097123, -1)
        AddTalkListData(12, 99097124, -1)
        AddTalkListData(13, 99097125, -1)
        AddTalkListData(14, 99097126, -1)
        AddTalkListData(15, 99097127, -1)
        AddTalkListData(16, 99097128, -1)
        AddTalkListData(17, 99097129, -1)
        AddTalkListData(18, 99097130, -1)
        AddTalkListData(19, 99097131, -1)
        AddTalkListData(20, 99097132, -1)
        AddTalkListData(21, 99097133, -1)
        AddTalkListData(22, 99097134, -1)
        AddTalkListData(23, 99097343, -1)
        AddTalkListData(24, 99097346, -1)
        AddTalkListData(25, 99097348, -1)
        AddTalkListData(26, 99097355, -1)
        AddTalkListData(27, 99097358, -1)
        AddTalkListData(28, 99097367, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007511, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007514, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007515, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007516, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007517, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007518, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007519, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007520, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007522, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007523, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007524, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007525, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007526, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007527, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007528, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007529, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007530, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007531, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007532, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007533, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007534, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007745, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007748, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007750, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007757, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x52()
            """State 55"""
            SetEventState(24007760, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x52()
            """State 57"""
            SetEventState(24007769, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 58"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 59"""
            return 0

def t400505_x83():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097135, -1)
        AddTalkListData(3, 99097136, -1)
        AddTalkListData(4, 99097137, -1)
        AddTalkListData(5, 99097138, -1)
        AddTalkListData(6, 99097139, -1)
        AddTalkListData(7, 99097140, -1)
        AddTalkListData(8, 99097143, -1)
        AddTalkListData(9, 99097144, -1)
        AddTalkListData(10, 99097146, -1)
        AddTalkListData(11, 99097147, -1)
        AddTalkListData(12, 99097148, -1)
        AddTalkListData(13, 99097149, -1)
        AddTalkListData(14, 99097150, -1)
        AddTalkListData(15, 99097151, -1)
        AddTalkListData(16, 99097152, -1)
        AddTalkListData(17, 99097153, -1)
        AddTalkListData(18, 99097154, -1)
        AddTalkListData(19, 99097155, -1)
        AddTalkListData(20, 99097157, -1)
        AddTalkListData(21, 99097350, -1)
        AddTalkListData(22, 99097351, -1)
        AddTalkListData(23, 99097352, -1)
        AddTalkListData(24, 99097362, -1)
        AddTalkListData(25, 99097368, -1)
        AddTalkListData(26, 99097369, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007535, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007536, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007537, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007538, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007539, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007540, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007543, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007544, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007546, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007547, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007548, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007549, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007550, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007551, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007552, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007553, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007554, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007555, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007557, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007752, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007753, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007754, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007764, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007770, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007771, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 54"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 55"""
            return 0

def t400505_x84():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097161, -1)
        AddTalkListData(3, 99097162, -1)
        AddTalkListData(4, 99097168, -1)
        AddTalkListData(5, 99097170, -1)
        AddTalkListData(6, 99097171, -1)
        AddTalkListData(7, 99097172, -1)
        AddTalkListData(8, 99097173, -1)
        AddTalkListData(9, 99097176, -1)
        AddTalkListData(10, 99097177, -1)
        AddTalkListData(11, 99097178, -1)
        AddTalkListData(12, 99097179, -1)
        AddTalkListData(13, 99097180, -1)
        AddTalkListData(14, 99097181, -1)
        AddTalkListData(15, 99097182, -1)
        AddTalkListData(16, 99097185, -1)
        AddTalkListData(17, 99097186, -1)
        AddTalkListData(18, 99097187, -1)
        AddTalkListData(19, 99097188, -1)
        AddTalkListData(20, 99097189, -1)
        AddTalkListData(21, 99097190, -1)
        AddTalkListData(22, 99097191, -1)
        AddTalkListData(23, 99097192, -1)
        AddTalkListData(24, 99097193, -1)
        AddTalkListData(25, 99097332, -1)
        AddTalkListData(26, 99097335, -1)
        AddTalkListData(27, 99097344, -1)
        AddTalkListData(28, 99097361, -1)
        AddTalkListData(29, 99097371, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007562, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007563, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007569, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007571, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007572, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007573, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007574, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007577, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007578, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007579, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007580, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007581, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007582, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007583, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007586, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007587, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007588, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007589, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007590, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007591, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007592, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007593, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007594, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007734, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007737, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x52()
            """State 55"""
            SetEventState(24007746, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x52()
            """State 57"""
            SetEventState(24007763, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x52()
            """State 59"""
            SetEventState(24007773, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 60"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 61"""
            return 0

def t400505_x85():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097194, -1)
        AddTalkListData(3, 99097195, -1)
        AddTalkListData(4, 99097198, -1)
        AddTalkListData(5, 99097201, -1)
        AddTalkListData(6, 99097203, -1)
        AddTalkListData(7, 99097204, -1)
        AddTalkListData(8, 99097205, -1)
        AddTalkListData(9, 99097206, -1)
        AddTalkListData(10, 99097207, -1)
        AddTalkListData(11, 99097216, -1)
        AddTalkListData(12, 99097217, -1)
        AddTalkListData(13, 99097218, -1)
        AddTalkListData(14, 99097219, -1)
        AddTalkListData(15, 99097220, -1)
        AddTalkListData(16, 99097221, -1)
        AddTalkListData(17, 99097224, -1)
        AddTalkListData(18, 99097225, -1)
        AddTalkListData(19, 99097226, -1)
        AddTalkListData(20, 99097227, -1)
        AddTalkListData(21, 99097228, -1)
        AddTalkListData(22, 99097229, -1)
        AddTalkListData(23, 99097230, -1)
        AddTalkListData(24, 99097231, -1)
        AddTalkListData(25, 99097232, -1)
        AddTalkListData(26, 99097233, -1)
        AddTalkListData(27, 99097234, -1)
        AddTalkListData(28, 99097235, -1)
        AddTalkListData(29, 99097236, -1)
        AddTalkListData(30, 99097237, -1)
        AddTalkListData(31, 99097238, -1)
        AddTalkListData(32, 99097239, -1)
        AddTalkListData(33, 99097242, -1)
        AddTalkListData(34, 99097243, -1)
        AddTalkListData(35, 99097330, -1)
        AddTalkListData(36, 99097331, -1)
        AddTalkListData(37, 99097333, -1)
        AddTalkListData(38, 99097336, -1)
        AddTalkListData(39, 99097366, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007595, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007596, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007599, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007602, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007604, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007605, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007606, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007607, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007608, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007617, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007618, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007619, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007620, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007621, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007622, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007625, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007626, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007627, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007628, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007629, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007630, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007631, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007632, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007633, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007634, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x52()
            """State 55"""
            SetEventState(24007635, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x52()
            """State 57"""
            SetEventState(24007636, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x52()
            """State 59"""
            SetEventState(24007637, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x52()
            """State 61"""
            SetEventState(24007638, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x52()
            """State 63"""
            SetEventState(24007639, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x52()
            """State 65"""
            SetEventState(24007640, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x52()
            """State 67"""
            SetEventState(24007643, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x52()
            """State 69"""
            SetEventState(24007644, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x52()
            """State 71"""
            SetEventState(24007732, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x52()
            """State 73"""
            SetEventState(24007733, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x52()
            """State 75"""
            SetEventState(24007735, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 38:
            """State 76"""
            assert t400505_x52()
            """State 77"""
            SetEventState(24007738, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 39:
            """State 78"""
            assert t400505_x52()
            """State 79"""
            SetEventState(24007768, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 80"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 81"""
            return 0

def t400505_x86():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097244, -1)
        AddTalkListData(3, 99097245, -1)
        AddTalkListData(4, 99097246, -1)
        AddTalkListData(5, 99097247, -1)
        AddTalkListData(6, 99097248, -1)
        AddTalkListData(7, 99097249, -1)
        AddTalkListData(8, 99097250, -1)
        AddTalkListData(9, 99097251, -1)
        AddTalkListData(10, 99097252, -1)
        AddTalkListData(11, 99097253, -1)
        AddTalkListData(12, 99097254, -1)
        AddTalkListData(13, 99097255, -1)
        AddTalkListData(14, 99097256, -1)
        AddTalkListData(15, 99097257, -1)
        AddTalkListData(16, 99097258, -1)
        AddTalkListData(17, 99097259, -1)
        AddTalkListData(18, 99097266, -1)
        AddTalkListData(19, 99097269, -1)
        AddTalkListData(20, 99097270, -1)
        AddTalkListData(21, 99097271, -1)
        AddTalkListData(22, 99097272, -1)
        AddTalkListData(23, 99097273, -1)
        AddTalkListData(24, 99097274, -1)
        AddTalkListData(25, 99097275, -1)
        AddTalkListData(26, 99097276, -1)
        AddTalkListData(27, 99097279, -1)
        AddTalkListData(28, 99097280, -1)
        AddTalkListData(29, 99097281, -1)
        AddTalkListData(30, 99097282, -1)
        AddTalkListData(31, 99097284, -1)
        AddTalkListData(32, 99097285, -1)
        AddTalkListData(33, 99097334, -1)
        AddTalkListData(34, 99097347, -1)
        AddTalkListData(35, 99097357, -1)
        AddTalkListData(36, 99097359, -1)
        AddTalkListData(37, 99097360, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007645, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007646, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007647, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007648, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007649, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007650, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007652, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007653, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007654, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007655, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007656, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007657, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007658, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007659, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007660, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007661, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007668, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007671, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007672, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007673, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007674, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007675, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007676, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007677, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007678, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x52()
            """State 55"""
            SetEventState(24007681, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x52()
            """State 57"""
            SetEventState(24007682, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x52()
            """State 59"""
            SetEventState(24007683, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x52()
            """State 61"""
            SetEventState(24007684, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x52()
            """State 63"""
            SetEventState(24007686, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x52()
            """State 65"""
            SetEventState(24007687, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x52()
            """State 67"""
            SetEventState(24007736, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x52()
            """State 69"""
            SetEventState(24007749, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x52()
            """State 71"""
            SetEventState(24007759, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x52()
            """State 73"""
            SetEventState(24007761, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x52()
            """State 75"""
            SetEventState(24007762, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 76"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 77"""
            return 0

def t400505_x87():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 15003200, -1)
        AddTalkListData(2, 99097287, -1)
        AddTalkListData(3, 99097288, -1)
        AddTalkListData(4, 99097290, -1)
        AddTalkListData(5, 99097291, -1)
        AddTalkListData(6, 99097293, -1)
        AddTalkListData(7, 99097295, -1)
        AddTalkListData(8, 99097296, -1)
        AddTalkListData(9, 99097297, -1)
        AddTalkListData(10, 99097300, -1)
        AddTalkListData(11, 99097301, -1)
        AddTalkListData(12, 99097302, -1)
        AddTalkListData(13, 99097303, -1)
        AddTalkListData(14, 99097305, -1)
        AddTalkListData(15, 99097307, -1)
        AddTalkListData(16, 99097308, -1)
        AddTalkListData(17, 99097309, -1)
        AddTalkListData(18, 99097310, -1)
        AddTalkListData(19, 99097311, -1)
        AddTalkListData(20, 99097312, -1)
        AddTalkListData(21, 99097313, -1)
        AddTalkListData(22, 99097314, -1)
        AddTalkListData(23, 99097315, -1)
        AddTalkListData(24, 99097316, -1)
        AddTalkListData(25, 99097317, -1)
        AddTalkListData(26, 99097318, -1)
        AddTalkListData(27, 99097320, -1)
        AddTalkListData(28, 99097321, -1)
        AddTalkListData(29, 99097322, -1)
        AddTalkListData(30, 99097325, -1)
        AddTalkListData(31, 99097327, -1)
        AddTalkListData(32, 99097329, -1)
        AddTalkListData(33, 99097337, -1)
        AddTalkListData(34, 99097338, -1)
        AddTalkListData(35, 99097340, -1)
        AddTalkListData(36, 99097345, -1)
        AddTalkListData(37, 99097349, -1)
        AddTalkListData(38, 99097365, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400505_x52()
            """State 3"""
            assert t400505_x50(action1=15003121)
        elif GetTalkListEntryResult() == 2:
            """State 4"""
            assert t400505_x52()
            """State 5"""
            SetEventState(24007689, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            assert t400505_x52()
            """State 7"""
            SetEventState(24007690, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 4:
            """State 8"""
            assert t400505_x52()
            """State 9"""
            SetEventState(24007692, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 5:
            """State 10"""
            assert t400505_x52()
            """State 11"""
            SetEventState(24007693, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 6:
            """State 12"""
            assert t400505_x52()
            """State 13"""
            SetEventState(24007695, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 7:
            """State 14"""
            assert t400505_x52()
            """State 15"""
            SetEventState(24007697, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 8:
            """State 16"""
            assert t400505_x52()
            """State 17"""
            SetEventState(24007698, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 9:
            """State 18"""
            assert t400505_x52()
            """State 19"""
            SetEventState(24007699, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 10:
            """State 20"""
            assert t400505_x52()
            """State 21"""
            SetEventState(24007702, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 11:
            """State 22"""
            assert t400505_x52()
            """State 23"""
            SetEventState(24007703, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 12:
            """State 24"""
            assert t400505_x52()
            """State 25"""
            SetEventState(24007704, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 13:
            """State 26"""
            assert t400505_x52()
            """State 27"""
            SetEventState(24007705, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 14:
            """State 28"""
            assert t400505_x52()
            """State 29"""
            SetEventState(24007707, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 15:
            """State 30"""
            assert t400505_x52()
            """State 31"""
            SetEventState(24007709, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 16:
            """State 32"""
            assert t400505_x52()
            """State 33"""
            SetEventState(24007710, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 17:
            """State 34"""
            assert t400505_x52()
            """State 35"""
            SetEventState(24007711, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 18:
            """State 36"""
            assert t400505_x52()
            """State 37"""
            SetEventState(24007712, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 19:
            """State 38"""
            assert t400505_x52()
            """State 39"""
            SetEventState(24007713, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 20:
            """State 40"""
            assert t400505_x52()
            """State 41"""
            SetEventState(24007714, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 21:
            """State 42"""
            assert t400505_x52()
            """State 43"""
            SetEventState(24007715, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 22:
            """State 44"""
            assert t400505_x52()
            """State 45"""
            SetEventState(24007716, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 23:
            """State 46"""
            assert t400505_x52()
            """State 47"""
            SetEventState(24007717, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 24:
            """State 48"""
            assert t400505_x52()
            """State 49"""
            SetEventState(24007718, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 25:
            """State 50"""
            assert t400505_x52()
            """State 51"""
            SetEventState(24007719, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 26:
            """State 52"""
            assert t400505_x52()
            """State 53"""
            SetEventState(24007720, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 27:
            """State 54"""
            assert t400505_x52()
            """State 55"""
            SetEventState(24007722, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 28:
            """State 56"""
            assert t400505_x52()
            """State 57"""
            SetEventState(24007723, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 29:
            """State 58"""
            assert t400505_x52()
            """State 59"""
            SetEventState(24007724, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 30:
            """State 60"""
            assert t400505_x52()
            """State 61"""
            SetEventState(24007727, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 31:
            """State 62"""
            assert t400505_x52()
            """State 63"""
            SetEventState(24007729, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 32:
            """State 64"""
            assert t400505_x52()
            """State 65"""
            SetEventState(24007731, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 33:
            """State 66"""
            assert t400505_x52()
            """State 67"""
            SetEventState(24007739, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 34:
            """State 68"""
            assert t400505_x52()
            """State 69"""
            SetEventState(24007740, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 35:
            """State 70"""
            assert t400505_x52()
            """State 71"""
            SetEventState(24007742, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 36:
            """State 72"""
            assert t400505_x52()
            """State 73"""
            SetEventState(24007747, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 37:
            """State 74"""
            assert t400505_x52()
            """State 75"""
            SetEventState(24007751, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 38:
            """State 76"""
            assert t400505_x52()
            """State 77"""
            SetEventState(24007767, 1)
            assert t400505_x50(action1=15003120)
        elif GetTalkListEntryResult() == 99:
            """State 78"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 79"""
            return 0

