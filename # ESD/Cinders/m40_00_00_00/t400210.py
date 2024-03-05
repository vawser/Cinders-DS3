# -*- coding: utf-8 -*-
def t400210_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400210_x11()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400210_x12()
        assert not IsClientPlayer()

def t400210_x0(actionbutton1=6210, flag5=1195, flag6=1196, flag7=6000, flag8=6000, flag9=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t400210_x1():
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

def t400210_x2():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t400210_x3(text3=_, z43=_, flag4=0, mode3=_):
    """State 0,5"""
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 2"""
    SetEventState(z43, 1)
    """State 1"""
    TalkToPlayer(text3, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode3:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

def t400210_x4(text2=_, z42=_, flag3=0, mode2=_):
    """State 0,5"""
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text2, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode2:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 2"""
    SetEventState(z42, 1)
    """State 6"""
    return 0

def t400210_x5(text1=_, flag2=0, mode1=_):
    """State 0,4"""
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400210_x6():
    """State 0,1"""
    if GetEventStatus(74000251) == 1:
        """State 5,14"""
        # talk:21001300:" "
        assert t400210_x5(text1=21001300, flag2=0, mode1=0)
        """State 7"""
        SetEventState(74000251, 0)
        SetEventState(74000250, 1)
        """State 17"""
        Label('L0')
        assert (t400210_x15(z1=2107, z2=2108, z3=2109, z4=2110, z5=2111, z6=2112, z7=2113, z8=2114, z9=2115,
                z10=2150, z11=2146, z12=2147, z13=2148, z14=2149, z15=2151, z16=2116, z17=2152, z18=2154,
                z19=2157, z20=2172))
    elif GetEventStatus(70000101) == 1 and not GetEventStatus(74000253) and not GetEventStatus(74000254):
        """State 6,18"""
        # talk:21000600:"Ashen One, what woeful umbral ash is this."
        assert t400210_x5(text1=21000600, flag2=0, mode1=1)
        """State 9"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 10"""
        # action:14011000:"Tell her where you found the ash"
        AddTalkListData(1, 14011000, -1)
        # action:14011001:"Say nothing"
        AddTalkListData(2, 14011001, -1)
        """State 8"""
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """State 11"""
        if GetTalkListEntryResult() == 1:
            """State 19"""
            # talk:21000700:"Oh, yes, I see..."
            assert t400210_x4(text2=21000700, z42=74000253, flag3=0, mode2=1)
            """State 13"""
            SetEventState(70000117, 1)
            Goto('L0')
        elif GetTalkListEntryResult() == 2:
            """State 20"""
            # talk:21000800:"As the Ashen One ought be..."
            assert t400210_x4(text2=21000800, z42=74000253, flag3=0, mode2=1)
            Goto('L0')
        else:
            pass
    else:
        """State 2"""
        if not GetEventStatus(74000250):
            """State 3"""
            if GetEventStatus(74000260) == 1:
                """State 21"""
                # talk:21000050:"Oh thou'rt..."
                assert t400210_x4(text2=21000050, z42=74000250, flag3=0, mode2=0)
            else:
                """State 16"""
                # talk:21000000:"A pleasure to make thine acquaintance, Ashen One."
                assert t400210_x4(text2=21000000, z42=74000250, flag3=0, mode2=0)
        else:
            """State 4"""
            if GetEventStatus(74000269) == 1:
                """State 22"""
                # talk:21001400:"Oh, you've picked a fine time to visit."
                assert t400210_x5(text1=21001400, flag2=0, mode1=0)
            else:
                """State 15"""
                # talk:21000100:"Ahh, well met, Ashen One."
                assert t400210_x5(text1=21000100, flag2=0, mode1=0)
                Goto('L0')
        """State 12"""
        SetEventState(74000269, 0)
        Goto('L0')
    """State 23"""
    return 0

def t400210_x7():
    """State 0,5"""
    assert t400210_x1()
    """State 2"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    if GetDistanceToPlayer() < 10:
        """State 3,7"""
        call = t400210_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 6"""
            assert t400210_x1()
    else:
        """State 4"""
        pass
    """State 8"""
    return 0

def t400210_x8():
    """State 0,1"""
    if GetEventStatus(1198) == 1:
        """State 2"""
        pass
    else:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            # talk:21001200:"Vile brute. I'm but a poor old woman..."
            call = t400210_x5(text1=21001200, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400210_x1()
        else:
            """State 5"""
            pass
    """State 8"""
    return 0

def t400210_x9():
    """State 0,2,1,3"""
    return 0

def t400210_x10():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        call = t400210_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t400210_x1()
    else:
        """State 3"""
        Goto('L0')
    """State 6"""
    return 0

def t400210_x11():
    """State 0"""
    while True:
        """State 1"""
        call = t400210_x16()
        assert not GetEventStatus(1180)
        """State 2"""
        call = t400210_x17()
        assert GetEventStatus(1180) == 1

def t400210_x12():
    """State 0,1"""
    assert t400210_x1()
    """State 2"""
    return 0

def t400210_x13(z23=_, z24=_, z25=_, z26=_, z27=_, z28=_, z29=_, z30=_, z31=_, z32=_, z33=_, z34=_, z35=_,
                z36=_, z37=_, z38=_, z39=_, z40=_, z41=_):
    """State 0,1"""
    ClearTalkListData()
    """State 9"""
    # action:15011001:"Give <?gdsparam@2107?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z23, 2, 0, 0) == 1, 1, 15011001, -1)
    # action:15011002:"Give <?gdsparam@2108?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z24, 2, 0, 0) == 1, 2, 15011002, -1)
    # action:15011003:"Give <?gdsparam@2109?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z25, 2, 0, 0) == 1, 3, 15011003, -1)
    # action:15011004:"Give <?gdsparam@2110?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z26, 2, 0, 0) == 1, 4, 15011004, -1)
    # action:15011011:"Give <?gdsparam@2146?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z33, 2, 0, 0) == 1, 11, 15011011, -1)
    # action:15011012:"Give <?gdsparam@2147?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z34, 2, 0, 0) == 1, 12, 15011012, -1)
    # action:15011013:"Give <?gdsparam@2148?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z35, 2, 0, 0) == 1, 13, 15011013, -1)
    # action:15011016:"Give <?gdsparam@2151?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z37, 2, 0, 0) == 1, 16, 15011016, -1)
    # action:15011017:"Give <?gdsparam@2152?> "
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z39, 2, 0, 0) == 1, 17, 15011017, -1)
    # action:15011018:""
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z40, 2, 0, 0) == 1, 18, 15011018, -1)
    # action:15011014:"Give <?gdsparam@2149?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z36, 2, 0, 0) == 1, 14, 15011014, -1)
    # action:15011010:"Give <?gdsparam@2116?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z38, 2, 0, 0) == 1, 10, 15011010, -1)
    # action:15011005:"Give <?gdsparam@2111?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z27, 2, 0, 0) == 1, 5, 15011005, -1)
    # action:15011006:"Give <?gdsparam@2112?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z28, 2, 0, 0) == 1, 6, 15011006, -1)
    # action:15011007:"Give <?gdsparam@2113?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z29, 2, 0, 0) == 1, 7, 15011007, -1)
    # action:15011008:"Give <?gdsparam@2114?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z30, 2, 0, 0) == 1, 8, 15011008, -1)
    # action:15011009:"Give <?gdsparam@2115?> "
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z31, 2, 0, 0) == 1, 9, 15011009, -1)
    # action:15011015:"Give <?gdsparam@2150?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z32, 2, 0, 0) == 1, 15, 15011015, -1)
    # action:15011019:""
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, z41, 2, 0, 0) == 1, 19, 15011019, -1)
    # action:15000180:"Quit"
    AddTalkListData(99, 15000180, -1)
    """State 2"""
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """State 7"""
    if GetTalkListEntryResult() == 1:
        """State 10"""
        PlayerEquipmentQuantityChange(3, z23, -1)
        SetEventState(70000100, 1)
        SetEventState(70000130, 1)
        """State 31"""
        Label('L0')
        # talk:21000400:"Gracious. Passing fine ash thou'st given."
        assert t400210_x5(text1=21000400, flag2=0, mode1=0)
    elif GetTalkListEntryResult() == 2:
        """State 11"""
        PlayerEquipmentQuantityChange(3, z24, -1)
        SetEventState(70000101, 1)
        SetEventState(70000126, 1)
        SetEventState(70000131, 1)
        """State 33"""
        # talk:21000600:"Ashen One, what woeful umbral ash is this."
        assert t400210_x5(text1=21000600, flag2=0, mode1=1)
        """State 5"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 6"""
        # action:14011000:"Tell her where you found the ash"
        AddTalkListData(1, 14011000, -1)
        # action:14011001:"Say nothing"
        AddTalkListData(2, 14011001, -1)
        """State 4"""
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """State 8"""
        if GetTalkListEntryResult() == 1:
            """State 34"""
            # talk:21000700:"Oh, yes, I see..."
            assert t400210_x4(text2=21000700, z42=74000253, flag3=0, mode2=1)
            """State 28"""
            SetEventState(70000117, 1)
        elif GetTalkListEntryResult() == 2:
            """State 35"""
            # talk:21000800:"As the Ashen One ought be..."
            assert t400210_x4(text2=21000800, z42=74000253, flag3=0, mode2=1)
        else:
            """State 38"""
            return 1
    elif GetTalkListEntryResult() == 3:
        """State 12"""
        PlayerEquipmentQuantityChange(3, z25, -1)
        SetEventState(70000102, 1)
        SetEventState(70000127, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 4:
        """State 13"""
        PlayerEquipmentQuantityChange(3, z26, -1)
        SetEventState(70000103, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 5:
        """State 14"""
        PlayerEquipmentQuantityChange(3, z27, -1)
        SetEventState(70000110, 1)
        SetEventState(70000175, GetEventStatus(70000150))
        SetEventState(70000176, GetEventStatus(70000151))
        SetEventState(70000177, GetEventStatus(70000152))
        SetEventState(70000178, GetEventStatus(70000153))
        """State 20"""
        Label('L1')
        if not GetEventStatus(74000256):
            """State 36"""
            # talk:21000500:"Gracious. Passing fine ash thou'st given."
            assert t400210_x3(text3=21000500, z43=74000256, flag4=0, mode3=0)
        else:
            """State 32"""
            # talk:21002000:"Well, well, what warm umbral ash have we here."
            assert t400210_x5(text1=21002000, flag2=0, mode1=0)
    elif GetTalkListEntryResult() == 6:
        """State 15"""
        PlayerEquipmentQuantityChange(3, z28, -1)
        SetEventState(70000111, 1)
        SetEventState(70000225, GetEventStatus(70000200))
        SetEventState(70000226, GetEventStatus(70000201))
        SetEventState(70000227, GetEventStatus(70000202))
        SetEventState(70000228, GetEventStatus(70000203))
        SetEventState(70000229, GetEventStatus(70000204))
        Goto('L1')
    elif GetTalkListEntryResult() == 7:
        """State 16"""
        PlayerEquipmentQuantityChange(3, z29, -1)
        SetEventState(70000112, 1)
        SetEventState(70000275, GetEventStatus(70000250))
        SetEventState(70000276, GetEventStatus(70000251))
        SetEventState(70000277, GetEventStatus(70000252))
        Goto('L1')
    elif GetTalkListEntryResult() == 8:
        """State 17"""
        PlayerEquipmentQuantityChange(3, z30, -1)
        SetEventState(70000113, 1)
        SetEventState(70000325, GetEventStatus(70000300))
        SetEventState(70000326, GetEventStatus(70000301))
        SetEventState(70000327, GetEventStatus(70000302))
        SetEventState(70000328, GetEventStatus(70000303))
        Goto('L1')
    elif GetTalkListEntryResult() == 9:
        """State 18"""
        PlayerEquipmentQuantityChange(3, z31, -1)
        SetEventState(70000114, 1)
        SetEventState(70000375, GetEventStatus(70000350))
        SetEventState(70000376, GetEventStatus(70000351))
        SetEventState(70000377, GetEventStatus(70000352))
        SetEventState(70000378, GetEventStatus(70000353))
        Goto('L1')
    elif GetTalkListEntryResult() == 10:
        """State 26"""
        PlayerEquipmentQuantityChange(3, z38, -1)
        SetEventState(70000116, 1)
        SetEventState(70000475, GetEventStatus(70000450))
        Goto('L1')
    elif GetTalkListEntryResult() == 11:
        """State 21"""
        PlayerEquipmentQuantityChange(3, z33, -1)
        SetEventState(70000104, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 12:
        """State 22"""
        PlayerEquipmentQuantityChange(3, z34, -1)
        SetEventState(70000105, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 13:
        """State 23"""
        PlayerEquipmentQuantityChange(3, z35, -1)
        SetEventState(70000106, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 14:
        """State 24"""
        PlayerEquipmentQuantityChange(3, z36, -1)
        SetEventState(70000107, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 15:
        """State 19"""
        PlayerEquipmentQuantityChange(3, z32, -1)
        SetEventState(70000115, 1)
        SetEventState(70000425, GetEventStatus(70000400))
        SetEventState(70000426, GetEventStatus(70000401))
        SetEventState(70000427, GetEventStatus(70000402))
        SetEventState(70000428, GetEventStatus(70000403))
        Goto('L1')
    elif GetTalkListEntryResult() == 16:
        """State 25"""
        PlayerEquipmentQuantityChange(3, z37, -1)
        SetEventState(70000108, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 17:
        """State 27"""
        PlayerEquipmentQuantityChange(3, z39, -1)
        SetEventState(70000109, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 18:
        """State 29"""
        PlayerEquipmentQuantityChange(3, z40, -1)
        SetEventState(70000120, 1)
        SetEventState(70000132, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 19:
        """State 30"""
        PlayerEquipmentQuantityChange(3, z41, -1)
        SetEventState(70000121, 1)
        SetEventState(70000133, 1)
        Goto('L1')
    else:
        """State 3"""
        pass
    """State 37"""
    return 0

def t400210_x14():
    """State 0,1"""
    if GetEventStatus(74000280) == 1:
        """State 5"""
        # talk:21001950:"Knowest thou of that soppy gossip?"
        assert t400210_x5(text1=21001950, flag2=0, mode1=0)
    elif not GetEventStatus(6800) and GetEventStatus(74000255) == 1:
        """State 4"""
        # talk:21001900:"Knowest thou of that soppy gossip?"
        assert t400210_x5(text1=21001900, flag2=0, mode1=0)
        """State 2"""
        SetEventState(74000255, 0)
    else:
        """State 3"""
        # talk:21000300:"Ashen One, if my wares are not to thy satisfaction,"
        assert t400210_x4(text2=21000300, z42=74000255, flag3=0, mode2=0)
    """State 6"""
    return 0

def t400210_x15(z1=2107, z2=2108, z3=2109, z4=2110, z5=2111, z6=2112, z7=2113, z8=2114, z9=2115, z10=2150,
                z11=2146, z12=2147, z13=2148, z14=2149, z15=2151, z16=2116, z17=2152, z18=2154, z19=2157,
                z20=2172):
    """State 0,12"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 11"""
        
        # Purchase Item
        AddTalkListDataIf(not GetEventStatus(25009850), 1, 15011020, -1)
        
        # Sell Item
        AddTalkListDataIf(not GetEventStatus(25009850), 2, 15000012, -1)
        
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008140) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          30, 15015040, -1)
                          
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008140) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008140) == 1, 32, 15015042, -1)
        
        # Learn Gesture
        AddTalkListDataIf(not GetEventStatus(25000301), 9, 99000960, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 2"""
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """State 10"""
        # Purchase Item
        if GetTalkListEntryResult() == 1:
            """State 3,8"""
            OpenRegularShop(110000, 119899)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        # Sell Item
        elif GetTalkListEntryResult() == 2:
            """State 4,9"""
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        # Talk
        elif GetTalkListEntryResult() == 4:
            """State 5,18"""
            assert t400210_x14()
        # Learn Gesture
        elif GetTalkListEntryResult() == 9:
            """State 7"""
            assert t400210_x21(gesture1=21, z22=9037, flag1=25000301)
            """State 13"""
            return 0
        # Propose Marriage
        elif GetTalkListEntryResult() == 30:
            """State 14"""
            SetEventState(25008140, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400210_x5(text1=10112030, flag2=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            """State 15"""
            if GetEventStatus(25008900):
                """State 16"""
                assert t400210_x5(text1=10112000, flag2=0, mode1=0)
                """State 17"""
                GetItemFromItemLot(90130)
                continue
            elif GetEventStatus(25008901):
                """State 21"""
                assert t400210_x5(text1=10112010, flag2=0, mode1=0)
                continue
            elif GetEventStatus(25008902):
                """State 22"""
                assert t400210_x5(text1=10112020, flag2=0, mode1=0)
                continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            """State 23"""
            assert t400210_x5(text1=10112020, flag2=0, mode1=0)
            """State 24"""
            SetEventState(25008140, 0)
            return 0
        # Leave
        else:
            """State 6,19"""
            assert t400210_x19()
        """State 20"""
        return 0

def t400210_x16():
    """State 0,2"""
    call = t400210_x20()
    assert CheckSelfDeath() == 1
    """State 1"""
    t400210_x8()
    Quit()

def t400210_x17():
    """State 0"""
    Quit()

def t400210_x18():
    """State 0,2"""
    if not GetEventStatus(74000271):
        """State 1,6"""
        # talk:21000900:" "
        assert t400210_x3(text3=21000900, z43=74000271, flag4=0, mode3=1)
    elif not GetEventStatus(74000272):
        """State 3,7"""
        # talk:21001000:" "
        assert t400210_x3(text3=21001000, z43=74000272, flag4=0, mode3=1)
    else:
        """State 4,5"""
        SetEventState(74000271, 0)
        SetEventState(74000272, 0)
        """State 8"""
        # talk:21001100:"Stop that!"
        assert t400210_x5(text1=21001100, flag2=0, mode1=1)
    """State 9"""
    return 0

def t400210_x19():
    """State 0,1"""
    # talk:21000200:"Ashen One, be sure to bring more souls."
    assert t400210_x5(text1=21000200, flag2=0, mode1=1)
    """State 2"""
    return 0

def t400210_x20():
    """State 0"""
    while True:
        """State 5"""
        call = t400210_x0(actionbutton1=6210, flag5=1195, flag6=1196, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """State 3"""
            call = t400210_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t400210_x7()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """State 4"""
                call = t400210_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400210_x9()
    Quit()

def t400210_x21(gesture1=21, z22=9037, flag1=25000301):
    """State 0,1"""
    if GetEventStatus(flag1) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture1)
        OpenItemAcquisitionMenu(3, z22, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

