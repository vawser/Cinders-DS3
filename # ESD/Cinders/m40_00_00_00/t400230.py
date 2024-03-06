# -*- coding: utf-8 -*-
def t400230_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400230_x14()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400230_x15()
        assert not IsClientPlayer()

def t400230_x0(actionbutton1=6230, flag5=1235, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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

def t400230_x1():
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

def t400230_x2():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t400230_x3(text3=_, z3=_, flag4=0, mode3=1):
    """State 0,5"""
    assert t400230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 2"""
    SetEventState(z3, 1)
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

def t400230_x4(text2=_, z2=_, flag3=0, mode2=1):
    """State 0,5"""
    assert t400230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z2, 1)
    """State 6"""
    return 0

def t400230_x5(text1=_, flag2=0, mode1=_):
    """State 0,4"""
    assert t400230_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400230_x6(lot1=_):
    """State 0,1"""
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t400230_x7(gesture1=34, z1=9035, flag1=6084):
    """State 0,1"""
    if GetEventStatus(flag1) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture1)
        OpenItemAcquisitionMenu(3, z1, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

# Main Menu
def t400230_x8(goods1=2132, goods2=2133, goods3=2134, goods4=2140):
    """State 0"""
    while True:
        """State 1"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 2"""
        
        # Learn Sorceries
        AddTalkListData(1, 15013000, -1)
        
        # Vinheim Scholars
        AddTalkListData(7, 99062000, -1)
        
        # Purchase Item
        AddTalkListData(2, 15011020, -1)
        
        # Give Sorcery Scroll
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1,
                          3, 15013020, -1)
                          
        # Propose Marriage
        AddTalkListDataIf(not GetEventStatus(25008120) and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1,
                          10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008120) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008120) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        """State 3"""
        ShowShopMessage(1)
        
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        """State 8"""
        # Learn Sorceries
        if GetTalkListEntryResult() == 1:
            """State 4,9"""
            OpenRegularShop(130100, 139999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Purchase Item
        elif GetTalkListEntryResult() == 2:
            """State 10,11"""
            OpenRegularShop(130000, 130099)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Give Sorcery Scroll
        elif GetTalkListEntryResult() == 3:
            """State 7,13"""
            assert t400230_x16(goods1=goods1, goods2=goods2, goods3=goods3, goods4=goods4)
        # Talk
        elif GetTalkListEntryResult() == 4:
            """State 5,12"""
            assert t400230_x17()
        # Vinheim Scholars
        elif GetTalkListEntryResult() == 7:
            """State 16"""
            assert t400230_x50()
        # Propose Marriage
        elif GetTalkListEntryResult() == 10:
            """State 17"""
            SetEventState(25008120, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400230_x5(text1=10110030, flag2=0, mode1=0)
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """State 18"""
            if GetEventStatus(25008900):
                """State 19"""
                assert t400230_x5(text1=10110000, flag2=0, mode1=0)
                """State 20"""
                GetItemFromItemLot(90110)
            elif GetEventStatus(25008901):
                """State 21"""
                assert t400230_x5(text1=10110010, flag2=0, mode1=0)
            elif GetEventStatus(25008902):
                """State 22"""
                assert t400230_x5(text1=10110020, flag2=0, mode1=0)
        # Divorce
        elif GetTalkListEntryResult() == 12:
            """State 23"""
            assert t400230_x5(text1=10110020, flag2=0, mode1=0)
            """State 24"""
            SetEventState(25008120, 0)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 6,14"""
            assert t400230_x20()
            """State 15"""
            return 0

def t400230_x9():
    """State 0,4"""
    if GetEventStatus(50006131) == 1 and not GetEventStatus(74000555):
        """State 16"""
        # talk:23003250:"With this, you can be sure to tell friend from foe from your very first encounter."
        assert t400230_x4(text2=23003250, z2=74000555, flag3=0, mode2=1)
    elif GetEventStatus(25001019) == 1 and GetEventStatus(70000200) == 1:
        """State 5"""
        if not GetEventStatus(74000551):
            """State 7,14"""
            # talk:23002300:"Back again, I see."
            assert t400230_x5(text1=23002300, flag2=0, mode1=1)
        else:
            """State 8"""
            if GetWorkValue(0) <= 2:
                """State 13"""
                # talk:23002400:"Oh, what is it? Forgot something?"
                assert t400230_x5(text1=23002400, flag2=0, mode1=1)
                """State 9"""
                SetWorkValue(0, GetWorkValue(0) + 1)
            else:
                """State 15"""
                # talk:23002450:"Oh, what is it? Forgot something?"
                assert t400230_x5(text1=23002450, flag2=0, mode1=1)
    else:
        """State 1"""
        if not GetEventStatus(74000550):
            """State 2,11"""
            # talk:23002100:"Oh, you're back, then."
            assert t400230_x4(text2=23002100, z2=74000550, flag3=0, mode2=1)
        else:
            """State 3,10"""
            # talk:23002200:"Back again, I see."
            assert t400230_x5(text1=23002200, flag2=0, mode1=1)
    """State 6"""
    SetEventState(74000551, 1)
    """State 12"""
    # goods:2132:Sage's Scroll, goods:2133:Logan's Scroll, goods:2134:Crystal Scroll, goods:2140:Golden Scroll
    assert t400230_x8(goods1=2132, goods2=2133, goods3=2134, goods4=2140)
    """State 17"""
    return 0

def t400230_x10():
    """State 0,9"""
    assert t400230_x1()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    if not GetEventStatus(1236) and not GetEventStatus(1237):
        """State 2"""
        if GetDistanceToPlayer() < 10:
            """State 5"""
            assert not GetEventStatus(74000572)
            """State 11"""
            call = t400230_x22()
            if call.Done():
                pass
            elif GetEventStatus(1236) == 1 or GetEventStatus(1237) == 1:
                """State 6"""
                Label('L0')
                if GetDistanceToPlayer() < 10:
                    """State 7,12"""
                    call = t400230_x23()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        """State 10"""
                        Label('L1')
                        assert t400230_x1()
                elif not GetEventStatus(1236) and not GetEventStatus(1237):
                    """State 8"""
                    pass
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
        else:
            """State 4"""
            pass
    else:
        Goto('L0')
    """State 13"""
    return 0

def t400230_x11():
    """State 0,1"""
    if GetEventStatus(1238) == 1:
        """State 2"""
        pass
    else:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            call = t400230_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400230_x1()
        else:
            """State 5"""
            pass
    """State 8"""
    return 0

def t400230_x12():
    """State 0,2"""
    if GetEventStatus(1236) == 1 or GetEventStatus(1237) == 1:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            call = t400230_x24()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400230_x1()
        else:
            """State 5"""
            pass
    else:
        """State 1"""
        pass
    """State 8"""
    return 0

def t400230_x13():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        call = t400230_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t400230_x1()
    else:
        """State 3"""
        Goto('L0')
    """State 6"""
    return 0

def t400230_x14():
    """State 0"""
    while True:
        """State 1"""
        call = t400230_x18()
        assert not GetEventStatus(1221)
        """State 2"""
        call = t400230_x19()
        assert GetEventStatus(1221) == 1

def t400230_x15():
    """State 0,1"""
    assert t400230_x1()
    """State 2"""
    return 0

def t400230_x16(goods1=2132, goods2=2133, goods3=2134, goods4=2140):
    """State 0,1"""
    ClearTalkListData()
    """State 2"""
    # goods:2132:Sage's Scroll, action:15013021:"Give <?gdsparam@2132?>"
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 1, 15013021, -1)
    # goods:2133:Logan's Scroll, action:15013022:"Give <?gdsparam@2133?> "
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 2, 15013022, -1)
    # goods:2134:Crystal Scroll, action:15013023:"Give <?gdsparam@2134?> "
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1, 3, 15013023, -1)
    # goods:2140:Golden Scroll, action:15013024:"Give <?gdsparam@2140?> "
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1, 4, 15013024, -1)
    # action:15000180:"Quit"
    AddTalkListData(99, 15000180, -1)
    """State 3"""
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """State 7"""
    if (GetTalkListEntryResult() == 1 or GetTalkListEntryResult() == 2 or GetTalkListEntryResult() ==
        3 or GetTalkListEntryResult() == 4):
        """State 10"""
        SetEventState(74000552, 0)
        SetEventState(74000591, 0)
        SetEventState(70000200, 1)
        if GetTalkListEntryResult() == 1:
            """State 4"""
            SetEventState(70000201, 1)
            # goods:2132:Sage's Scroll
            PlayerEquipmentQuantityChange(3, goods1, -1)
            """State 11"""
            # talk:23003700:"Oh, my... This is stupendous."
            assert t400230_x5(text1=23003700, flag2=0, mode1=1)
        elif GetTalkListEntryResult() == 2:
            """State 5"""
            SetEventState(70000202, 1)
            # goods:2133:Logan's Scroll
            PlayerEquipmentQuantityChange(3, goods2, -1)
            """State 12"""
            # talk:23003800:"Oh, my! You've made quite the discovery!"
            assert t400230_x5(text1=23003800, flag2=0, mode1=1)
        elif GetTalkListEntryResult() == 3:
            """State 6"""
            SetEventState(70000203, 1)
            # goods:2134:Crystal Scroll
            PlayerEquipmentQuantityChange(3, goods3, -1)
            """State 13"""
            # talk:23003900:"Unfathomable."
            assert t400230_x5(text1=23003900, flag2=0, mode1=1)
        elif GetTalkListEntryResult() == 4:
            """State 9"""
            SetEventState(70000204, 1)
            # goods:2140:Golden Scroll
            PlayerEquipmentQuantityChange(3, goods4, -1)
            """State 14"""
            # talk:23004000:"Oh, my... This is very unusual."
            assert t400230_x5(text1=23004000, flag2=0, mode1=1)
    else:
        """State 8"""
        pass
    """State 15"""
    return 0

def t400230_x17():
    """State 0,1"""
    if ((GetEventStatus(1041) == 1 or GetEventStatus(1042) == 1) and not GetEventStatus(1058) and not
        GetEventStatus(74000556)):
        """State 7"""
        # talk:23003300:"It is folly to claim lives recklessly, friend. Do not be tempted."
        assert t400230_x4(text2=23003300, z2=74000556, flag3=0, mode2=1)
    elif GetEventStatus(74000552) == 1:
        """State 3"""
        # talk:23003000:"Have you forgotten our agreement?"
        assert t400230_x5(text1=23003000, flag2=0, mode1=1)
    elif (GetEventStatus(70000200) == 1 and GetEventStatus(9306) == 1 and not GetEventStatus(74000555)
          and not GetEventStatus(74000560)):
        """State 9"""
        # talk:23003100:"Oh, I have something for you."
        assert t400230_x5(text1=23003100, flag2=0, mode1=1)
        """State 5"""
        # lot:61300:Young Dragon Ring
        assert t400230_x6(lot1=61300)
        """State 15"""
        SetEventState(74000560, 1)
    elif (GetEventStatus(70000200) == 1 and GetEventStatus(6302) == 1 and not GetEventStatus(74000555)
          and not GetEventStatus(74000561)):
        """State 12"""
        # talk:23003200:"How do you like gimmicks, friend?"
        assert t400230_x5(text1=23003200, flag2=0, mode1=1)
        """State 6"""
        assert t400230_x7(gesture1=34, z1=9035, flag1=6084)
        """State 13"""
        # lot:61310:Slumbering Dragoncrest Ring
        assert t400230_x6(lot1=61310)
        """State 11"""
        # talk:23003250:"With this, you can be sure to tell friend from foe from your very first encounter."
        assert t400230_x4(text2=23003250, z2=74000555, flag3=0, mode2=1)
        """State 16"""
        SetEventState(74000561, 1)
    elif GetEventStatus(70000202) == 1 and GetEventStatus(70000203) == 1 and not GetEventStatus(74000557):
        """State 8"""
        # talk:23003400:"In Vinheim, I was an assassin."
        assert t400230_x4(text2=23003400, z2=74000557, flag3=0, mode2=1)
    elif GetEventStatus(25001018) == 1:
        """State 4"""
        # talk:23003600:"You are no ordinary man."
        assert t400230_x5(text1=23003600, flag2=0, mode1=1)
    elif (GetEventStatus(70000201) == 1 and GetEventStatus(70000202) == 1 and GetEventStatus(70000203)
          == 1 and GetEventStatus(70000204) == 1):
        """State 10"""
        # talk:23002101:"Again, I'm Orbeck of Vinheim, here to teach you sorceries."
        assert t400230_x5(text1=23002101, flag2=0, mode1=1)
    else:
        """State 2"""
        # talk:23002900:"I don't mean to seem overbearing, but have you forgotten?"
        assert t400230_x5(text1=23002900, flag2=0, mode1=1)
    """State 14"""
    return 0

def t400230_x18():
    """State 0,2"""
    call = t400230_x25()
    assert CheckSelfDeath() == 1
    """State 1"""
    t400230_x11()
    Quit()

def t400230_x19():
    """State 0"""
    Quit()

def t400230_x20():
    """State 0,1"""
    if GetEventStatus(25001018) == 1:
        """State 3"""
        # talk:23002800:"Promise to stay safe."
        assert t400230_x5(text1=23002800, flag2=0, mode1=1)
    elif (GetEventStatus(73301160) == 1 and GetEventStatus(73301140) == 1 and GetEventStatus(73301150)
          == 1 and GetEventStatus(73301170) == 1):
        """State 4"""
        # talk:23002600:"Promise to stay safe."
        assert t400230_x5(text1=23002600, flag2=0, mode1=1)
    elif GetEventStatus(74000552) == 1:
        """State 5"""
        # talk:23002700:"Don't forget what you promised."
        assert t400230_x5(text1=23002700, flag2=0, mode1=1)
    else:
        """State 2"""
        # talk:23002500:"Come again."
        assert t400230_x5(text1=23002500, flag2=0, mode1=1)
    """State 6"""
    return 0

def t400230_x21():
    """State 0,1"""
    if (GetEventStatus(70000202) == 1 and GetEventStatus(70000203) == 1 and GetEventStatus(73301160)
        == 1 and GetEventStatus(73301140) == 1 and GetEventStatus(73301150) == 1 and GetEventStatus(73301170)
        == 1):
        """State 2"""
        # talk:23005000:" "
        assert t400230_x5(text1=23005000, flag2=0, mode1=1)
    else:
        """State 3"""
        # talk:23004900:" "
        assert t400230_x5(text1=23004900, flag2=0, mode1=1)
    """State 4"""
    return 0

def t400230_x22():
    """State 0,2"""
    if not GetEventStatus(74000573):
        """State 5"""
        # talk:23004400:"What is this about?"
        assert t400230_x3(text3=23004400, z3=74000573, flag4=0, mode3=1)
    else:
        """State 1"""
        SetEventState(74000571, 0)
        SetEventState(74000572, 0)
        SetEventState(74000573, 0)
        """State 6"""
        # talk:23004500:"Have you lost your wits?"
        assert t400230_x5(text1=23004500, flag2=0, mode1=1)
    """State 7"""
    return 0

def t400230_x23():
    """State 0,3"""
    if not GetEventStatus(74000570):
        """State 1,4"""
        # talk:23004600:"Seems it's too late."
        assert t400230_x3(text3=23004600, z3=74000570, flag4=0, mode3=1)
    else:
        """State 2"""
        pass
    """State 5"""
    return 0

def t400230_x24():
    """State 0,1"""
    if GetEventStatus(70000200) == 1 and GetEventStatus(25001019) == 1:
        """State 2"""
        # talk:23004800:"Farewell. We had a nice little school going."
        assert t400230_x5(text1=23004800, flag2=0, mode1=1)
    else:
        """State 3"""
        # talk:23004700:"Gods, what have I done..."
        assert t400230_x5(text1=23004700, flag2=0, mode1=1)
    """State 4"""
    return 0

def t400230_x25():
    """State 0"""
    while True:
        """State 5"""
        call = t400230_x0(actionbutton1=6230, flag5=1235, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """State 3"""
            call = t400230_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1236) == 1 and not GetEventStatus(74000570)):
                """State 1"""
                Label('L0')
                call = t400230_x10()
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
                call = t400230_x13()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1236) == 1 and not GetEventStatus(74000570)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400230_x12()
    Quit()

# Covenant
def t400230_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10100), 1, 15003019, -1)
        
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
            GetItemFromItemLot(800001040)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(22500, 22599)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0
            
def t400230_x51(action2=99062004):
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

def t400230_x52(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

