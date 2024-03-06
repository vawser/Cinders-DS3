# -*- coding: utf-8 -*-
def t400508_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400508_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400508_x1()
        assert not IsClientPlayer()

def t400508_x0():
    """State 0,1"""
    t400508_x3()
    Quit()

def t400508_x1():
    """State 0,1"""
    assert t400508_x2()
    """State 2"""
    return 0

def t400508_x2():
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

def t400508_x3():
    """State 0,1"""
    call = t400508_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t400508_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t400508_x5()
        if call.Done():
            """State 3"""
            call = t400508_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400508_x6()
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
                call = t400508_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400508_x2()
    Quit()

def t400508_x5():
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

def t400508_x6():
    """State 0,6"""
    assert t400508_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t400508_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t400508_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
    else:
        """State 3"""
        pass
    """State 4"""
    assert t400508_x2()
    """State 6"""
    return 0

def t400508_x8():
    """State 0,1"""
    assert t400508_x9()
    """State 24"""
    return 0

# Main Menu
def t400508_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Conjurator's Pact
        AddTalkListData(1, 99062013, -1)
        
        # Purchase Item
        AddTalkListData(2, 15000010, -1)
        
        # Conjuration
        AddTalkListData(3, 99091100, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008240) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008240) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 10010200, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Covenant
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400508_x12()
        # Purchase Item
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenRegularShop(280000, 280099)
        # Conjuration
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400508_x20()
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 5"""
            SetEventState(25008240, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400508_x10(text1=10122030, flag1=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 6"""
            if GetEventStatus(25008900):
                """State 7"""
                assert t400508_x10(text1=10122000, flag1=0, mode1=0)
                """State 8"""
                GetItemFromItemLot(90230)
            elif GetEventStatus(25008901):
                """State 9"""
                assert t400508_x10(text1=10122010, flag1=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 10"""
                assert t400508_x10(text1=10122020, flag1=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 11"""
            assert t400508_x10(text1=10122020, flag1=0, mode1=0)
            """State 12"""
            SetEventState(25008240, 0)
            return 0
        # Talk
        elif GetTalkListEntryResult() == 4:
            """State 13"""
            if GetEventStatus(25002006) == 1 and GetEventStatus(25008300) == 1:
                """State 14"""
                assert t400508_x10(text1=10022010, flag1=0, mode1=0)
            else:
                """State 15"""
                assert t400508_x10(text1=10022000, flag1=0, mode1=0)
                """State 16"""
                SetEventState(25008300, 1)
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 17"""
            return 0

def t400508_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t400508_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400508_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Covenant
def t400508_x12():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10180), 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001140)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(280100, 280199)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0
    """State 2"""
    return 0

# Conjuration
def t400508_x20():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Skeleton
        AddTalkListData(1, 99092000, -1)
        
        # Hollow
        AddTalkListData(2, 99092001, -1)
        
        # Hound
        AddTalkListData(3, 99092002, -1)
        
        # Warrior
        AddTalkListData(4, 99092003, -1)
        
        # Sentinel
        AddTalkListData(5, 99092004, -1)
        
        # Lycanthrope
        AddTalkListData(6, 99092005, -1)
        
        # Knight
        AddTalkListData(7, 99092006, -1)
        
        # Watcher
        AddTalkListData(8, 99092007, -1)
        
        # Gargoyle
        AddTalkListData(9, 99092008, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Skeleton
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert t400508_x21()
        # Hollow
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert t400508_x22()
        # Hound
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert t400508_x23()
        # Warrior
        elif GetTalkListEntryResult() == 4:
            """State 5"""
            assert t400508_x24()
        # Sentinel
        elif GetTalkListEntryResult() == 5:
            """State 6"""
            assert t400508_x25()
        # Lycanthrope
        elif GetTalkListEntryResult() == 6:
            """State 7"""
            assert t400508_x26()
        # Knight
        elif GetTalkListEntryResult() == 7:
            """State 8"""
            assert t400508_x27()
        # Watcher
        elif GetTalkListEntryResult() == 8:
            """State 9"""
            assert t400508_x28()
        # Gargoyle
        elif GetTalkListEntryResult() == 9:
            """State 10"""
            assert t400508_x29()
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 11"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 12"""
            return 0

# Skeleton Menu
def t400508_x21():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Body Emission
        AddTalkListData(1, 99091101, -1)
        
        # Body Aura
        AddTalkListData(2, 99091102, -1)
        
        # Body Tint
        AddTalkListData(3, 99091103, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Body Emission
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007700, z18=25007701, z19=25007702, z20=25007703, z21=25007704,
                    z22=25007705, z23=25007706, z24=25007707, z25=25007708))
        # Body Aura
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007710, z6=25007711, z7=25007712, z8=25007713, z9=25007714, z10=25007715,
                    z11=25007716, z12=25007717, z13=25007718, z14=25007719, z15=25007709, z16=0))
        # Body Tint
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007710, z6=25007711, z7=25007712, z8=25007713, z9=25007714, z10=25007715,
                    z11=25007716, z12=25007717, z13=25007718, z14=25007719, z15=25007709, z16=1))
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Hollow Menu
def t400508_x22():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007720, z18=25007721, z19=25007722, z20=25007723, z21=25007724,
                    z22=25007725, z23=25007726, z24=25007727, z25=25007728))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007730, z6=25007731, z7=25007732, z8=25007733, z9=25007734, z10=25007735,
                    z11=25007736, z12=25007737, z13=25007738, z14=25007739, z15=25007729, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007730, z6=25007731, z7=25007732, z8=25007733, z9=25007734, z10=25007735,
                    z11=25007736, z12=25007737, z13=25007738, z14=25007739, z15=25007729, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Hound Menu
def t400508_x23():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007740, z18=25007741, z19=25007742, z20=25007743, z21=25007744,
                    z22=25007745, z23=25007746, z24=25007747, z25=25007748))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007750, z6=25007751, z7=25007752, z8=25007753, z9=25007754, z10=25007755,
                    z11=25007756, z12=25007757, z13=25007758, z14=25007759, z15=25007749, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007750, z6=25007751, z7=25007752, z8=25007753, z9=25007754, z10=25007755,
                    z11=25007756, z12=25007757, z13=25007758, z14=25007759, z15=25007749, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Warrior Menu
def t400508_x24():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007760, z18=25007761, z19=25007762, z20=25007763, z21=25007764,
                    z22=25007765, z23=25007766, z24=25007767, z25=25007768))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007770, z6=25007771, z7=25007772, z8=25007773, z9=25007774, z10=25007775,
                    z11=25007776, z12=25007777, z13=25007778, z14=25007779, z15=25007769, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007770, z6=25007771, z7=25007772, z8=25007773, z9=25007774, z10=25007775,
                    z11=25007776, z12=25007777, z13=25007778, z14=25007779, z15=25007769, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Sentinel Menu
def t400508_x25():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007780, z18=25007781, z19=25007782, z20=25007783, z21=25007784,
                    z22=25007785, z23=25007786, z24=25007787, z25=25007788))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007790, z6=25007791, z7=25007792, z8=25007793, z9=25007794, z10=25007795,
                    z11=25007796, z12=25007797, z13=25007798, z14=25007799, z15=25007789, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007790, z6=25007791, z7=25007792, z8=25007793, z9=25007794, z10=25007795,
                    z11=25007796, z12=25007797, z13=25007798, z14=25007799, z15=25007789, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Lycanthrope Menu
def t400508_x26():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007800, z18=25007801, z19=25007802, z20=25007803, z21=25007804,
                    z22=25007805, z23=25007806, z24=25007807, z25=25007808))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007810, z6=25007811, z7=25007812, z8=25007813, z9=25007814, z10=25007815,
                    z11=25007816, z12=25007817, z13=25007818, z14=25007819, z15=25007809, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007810, z6=25007811, z7=25007812, z8=25007813, z9=25007814, z10=25007815,
                    z11=25007816, z12=25007817, z13=25007818, z14=25007819, z15=25007809, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Knight Menu
def t400508_x27():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007820, z18=25007821, z19=25007822, z20=25007823, z21=25007824,
                    z22=25007825, z23=25007826, z24=25007827, z25=25007828))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007830, z6=25007831, z7=25007832, z8=25007833, z9=25007834, z10=25007835,
                    z11=25007836, z12=25007837, z13=25007838, z14=25007839, z15=25007829, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007830, z6=25007831, z7=25007832, z8=25007833, z9=25007834, z10=25007835,
                    z11=25007836, z12=25007837, z13=25007838, z14=25007839, z15=25007829, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Watcher Menu
def t400508_x28():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007840, z18=25007841, z19=25007842, z20=25007843, z21=25007844,
                    z22=25007845, z23=25007846, z24=25007847, z25=25007848))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007850, z6=25007851, z7=25007852, z8=25007853, z9=25007854, z10=25007855,
                    z11=25007856, z12=25007857, z13=25007858, z14=25007859, z15=25007849, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007850, z6=25007851, z7=25007852, z8=25007853, z9=25007854, z10=25007855,
                    z11=25007856, z12=25007857, z13=25007858, z14=25007859, z15=25007849, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Gargoyle Menu
def t400508_x29():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        AddTalkListData(1, 99091101, -1)
        AddTalkListData(2, 99091102, -1)
        AddTalkListData(3, 99091103, -1)
        # action:15000005:"Leave"
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """State 2"""
            assert (t400508_x40(z17=25007860, z18=25007861, z19=25007862, z20=25007863, z21=25007864,
                    z22=25007865, z23=25007866, z24=25007867, z25=25007868))
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            assert (t400508_x41(z5=25007870, z6=25007871, z7=25007872, z8=25007873, z9=25007874, z10=25007875,
                    z11=25007876, z12=25007877, z13=25007878, z14=25007879, z15=25007869, z16=0))
        elif GetTalkListEntryResult() == 3:
            """State 4"""
            assert (t400508_x41(z5=25007870, z6=25007871, z7=25007872, z8=25007873, z9=25007874, z10=25007875,
                    z11=25007876, z12=25007877, z13=25007878, z14=25007879, z15=25007869, z16=1))
        elif GetTalkListEntryResult() == 99:
            """State 5"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6"""
            return 0

# Body Emission
def t400508_x40(z17=_, z18=_, z19=_, z20=_, z21=_, z22=_, z23=_, z24=_, z25=_):
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    AddTalkListData(1, 99091110, -1)
    AddTalkListData(2, 99091111, -1)
    # action:15000005:"Leave"
    AddTalkListData(99, 15000005, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    if GetTalkListEntryResult() == 1:
        """State 2"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091210)
        """State 3"""
        return 0
    elif GetTalkListEntryResult() == 2:
        """State 4"""
        SetEventState(z17, 1)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091211)
        """State 5"""
        return 0
    elif GetTalkListEntryResult() == 3:
        """State 6"""
        SetEventState(z17, 0)
        SetEventState(z18, 1)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091212)
        """State 7"""
        return 0
    elif GetTalkListEntryResult() == 4:
        """State 8"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 1)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091213)
        """State 9"""
        return 0
    elif GetTalkListEntryResult() == 5:
        """State 10"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 1)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091214)
        """State 11"""
        return 0
    elif GetTalkListEntryResult() == 6:
        """State 12"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 1)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091215)
        """State 13"""
        return 0
    elif GetTalkListEntryResult() == 7:
        """State 14"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 1)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091216)
        """State 15"""
        return 0
    elif GetTalkListEntryResult() == 8:
        """State 16"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 1)
        SetEventState(z24, 0)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091217)
        """State 17"""
        return 0
    elif GetTalkListEntryResult() == 9:
        """State 18"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 1)
        SetEventState(z25, 0)
        assert t400508_x52(action1=99091218)
        """State 19"""
        return 0
    elif GetTalkListEntryResult() == 10:
        """State 20"""
        SetEventState(z17, 0)
        SetEventState(z18, 0)
        SetEventState(z19, 0)
        SetEventState(z20, 0)
        SetEventState(z21, 0)
        SetEventState(z22, 0)
        SetEventState(z23, 0)
        SetEventState(z24, 0)
        SetEventState(z25, 1)
        assert t400508_x52(action1=99091219)
        """State 21"""
        return 0
    elif GetTalkListEntryResult() == 99:
        """State 22"""
        ReportConversationEndToHavokBehavior()
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 23"""
        return 0

# Body Aura / Tint
def t400508_x41(z5=_, z6=_, z7=_, z8=_, z9=_, z10=_, z11=_, z12=_, z13=_, z14=_, z15=_, z16=_):
    """State 0"""
    MainBonfireMenuFlag()
    ClearTalkListData()
    AddTalkListData(1, 99091150, -1)
    AddTalkListData(2, 99091151, -1)
    AddTalkListData(3, 99091152, -1)
    AddTalkListData(4, 99091153, -1)
    AddTalkListData(5, 99091154, -1)
    AddTalkListData(6, 99091155, -1)
    AddTalkListData(7, 99091156, -1)
    AddTalkListData(8, 99091157, -1)
    AddTalkListData(9, 99091158, -1)
    AddTalkListData(10, 99091159, -1)
    AddTalkListData(11, 99091160, -1)
    # action:15000005:"Leave"
    AddTalkListData(99, 15000005, -1)
    assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
            2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
    """State 1"""
    ShowShopMessage(1)
    if GetTalkListEntryResult() == 1:
        """State 2"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091250)
        """State 3"""
        return 0
    elif GetTalkListEntryResult() == 2:
        """State 4"""
        SetEventState(z15, z16)
        SetEventState(z5, 1)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091251)
        """State 5"""
        return 0
    elif GetTalkListEntryResult() == 3:
        """State 6"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 1)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091252)
        """State 7"""
        return 0
    elif GetTalkListEntryResult() == 4:
        """State 8"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 1)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091253)
        """State 9"""
        return 0
    elif GetTalkListEntryResult() == 5:
        """State 10"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 1)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091254)
        """State 11"""
        return 0
    elif GetTalkListEntryResult() == 6:
        """State 12"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 1)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091255)
        """State 13"""
        return 0
    elif GetTalkListEntryResult() == 7:
        """State 14"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 1)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091256)
        """State 15"""
        return 0
    elif GetTalkListEntryResult() == 8:
        """State 16"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 1)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091257)
        """State 17"""
        return 0
    elif GetTalkListEntryResult() == 9:
        """State 18"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 1)
        SetEventState(z13, 0)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091258)
        """State 19"""
        return 0
    elif GetTalkListEntryResult() == 10:
        """State 20"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 1)
        SetEventState(z14, 0)
        assert t400508_x52(action1=99091259)
        """State 21"""
        return 0
    elif GetTalkListEntryResult() == 11:
        """State 22"""
        SetEventState(z15, z16)
        SetEventState(z5, 0)
        SetEventState(z6, 0)
        SetEventState(z7, 0)
        SetEventState(z8, 0)
        SetEventState(z9, 0)
        SetEventState(z10, 0)
        SetEventState(z11, 0)
        SetEventState(z12, 0)
        SetEventState(z13, 0)
        SetEventState(z14, 1)
        assert t400508_x52(action1=99091260)
        """State 23"""
        return 0
    elif GetTalkListEntryResult() == 99:
        """State 24"""
        ReportConversationEndToHavokBehavior()
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 25"""
        return 0

def t400508_x50(z1=_, z2=_, z3=_, z4=_):
    """State 0"""
    call = t400508_x51(action2=99016010)
    if call.Get() == 0:
        """State 1"""
        # goods:382:
        if ComparePlayerInventoryNumber(3, 382, 3, z3, 0) == 1:
            """State 2"""
            assert t400508_x52(action1=99016012)
        else:
            """State 3"""
            # goods:382:
            PlayerEquipmentQuantityChange(3, 382, z4)
            PlayerEquipmentQuantityChange(2, z1, -1)
            PlayerEquipmentQuantityChange(2, z2, 1)
            assert t400508_x52(action1=99016013)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t400508_x51(action2=_):
    """State 0,1"""
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t400508_x52(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t400508_x60():
    """State 0"""
    call = t400508_x51(action2=99062004)
    if call.Get() == 0:
        """State 1"""
        # goods:382:
        if ComparePlayerInventoryNumber(3, 382, 3, 9, 0) == 1:
            """State 2"""
            assert t400508_x52(action1=99062260)
        else:
            """State 3"""
            # goods:382:
            PlayerEquipmentQuantityChange(3, 382, -10)
            PlayerEquipmentQuantityChange(2, 10180, -1)
            PlayerEquipmentQuantityChange(2, 10181, 1)
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t400508_x61():
    """State 0"""
    call = t400508_x51(action2=99062004)
    if call.Get() == 0:
        """State 1"""
        # goods:382:
        if ComparePlayerInventoryNumber(3, 382, 3, 19, 0) == 1:
            """State 2"""
            assert t400508_x52(action1=99062261)
        else:
            """State 3"""
            # goods:382:
            PlayerEquipmentQuantityChange(3, 382, -20)
            PlayerEquipmentQuantityChange(2, 10181, -1)
            PlayerEquipmentQuantityChange(2, 10182, 1)
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t400508_x62():
    """State 0"""
    call = t400508_x51(action2=99062004)
    if call.Get() == 0:
        """State 1"""
        # goods:382:
        if ComparePlayerInventoryNumber(3, 382, 3, 29, 0) == 1:
            """State 2"""
            assert t400508_x52(action1=99062262)
        else:
            """State 3"""
            # goods:382:
            PlayerEquipmentQuantityChange(3, 382, -30)
            PlayerEquipmentQuantityChange(2, 10182, -1)
            PlayerEquipmentQuantityChange(2, 10183, 1)
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

def t400508_x63():
    """State 0"""
    call = t400508_x51(action2=99062004)
    if call.Get() == 0:
        """State 1"""
        # goods:382:
        if ComparePlayerInventoryNumber(3, 382, 3, 49, 0) == 1:
            """State 2"""
            assert t400508_x52(action1=99062263)
        else:
            """State 3"""
            # goods:382:
            PlayerEquipmentQuantityChange(3, 382, -50)
            PlayerEquipmentQuantityChange(2, 10183, -1)
            PlayerEquipmentQuantityChange(2, 10184, 1)
            assert t400508_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    """State 4"""
    return 0

