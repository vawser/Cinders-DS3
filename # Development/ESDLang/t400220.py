#-------------------------------------------
#-- Greirat of the Undead Settlement
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400220_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400220_x13()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400220_x14()
        assert not IsClientPlayer()

def t400220_x0(action1=12012000):
    """State 0,1"""
    # action:12012000:"Give <?gdsparam@2118?>?"
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t400220_x1(z5=6000, flag5=1215, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
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
        elif CheckActionButtonArea(z5):
            break
    """State 4"""
    return 0

def t400220_x2():
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

def t400220_x3():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t400220_x4(text3=_, z4=_, flag4=0, mode3=1):
    """State 0,5"""
    assert t400220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 2"""
    SetEventState(z4, 1)
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

def t400220_x5(text2=_, z3=_, flag3=0, mode2=1):
    """State 0,5"""
    assert t400220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z3, 1)
    """State 6"""
    return 0

def t400220_x6(text1=_, flag2=0, mode1=1):
    """State 0,4"""
    assert t400220_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400220_x7(z1=22, z2=9023, flag1=6072):
    """State 0,1"""
    if GetEventStatus(flag1) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(z1)
        OpenItemAcquisitionMenu(3, z2, 1)
        SetEventState(flag1, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t400220_x8():
    """State 0,34"""
    if not GetEventStatus(74000324):
        """State 1"""
        if GetEventStatus(1201) == 1:
            """State 2"""
            if not GetEventStatus(74000300):
                """State 3,40"""
                # talk:22000900:"Oh, hello, you're back."
                assert t400220_x5(text2=22000900, z3=74000300, flag3=0, mode2=1)
            elif (GetEventStatus(74000301) == 1 and not GetEventStatus(74000302) and GetEventStatus(74000325)
                  == 1):
                """State 5,36"""
                # talk:22001600:"Ahh, there you are. I was thinking..."
                assert t400220_x6(text1=22001600, flag2=0, mode1=1)
                """State 6"""
                ClearTalkListData()
                assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                        2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
                """State 7"""
                # action:14012002:"Send him to pillage"
                AddTalkListData(5, 14012002, -1)
                # action:14012003:"Refuse"
                AddTalkListData(6, 14012003, -1)
                """State 8"""
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """State 9"""
                if GetTalkListEntryResult() == 5:
                    """State 10,39"""
                    # talk:22001700:"Thank you. You will not be disappointed."
                    assert t400220_x5(text2=22001700, z3=74000303, flag3=0, mode2=1)
                    """State 13"""
                    Label('L0')
                    SetEventState(74000302, 1)
                elif GetTalkListEntryResult() == 6:
                    """State 11,38"""
                    # talk:22001800:"All right, fine and well."
                    assert t400220_x6(text1=22001800, flag2=0, mode1=1)
                    Goto('L0')
                else:
                    """State 12"""
                    Label('L1')
                    Goto('L5')
            else:
                """State 4"""
                Label('L2')
                """State 35"""
                # talk:22001000:"Oh, hello, you're back."
                assert t400220_x6(text1=22001000, flag2=0, mode1=1)
        elif GetEventStatus(1203) == 1:
            """State 14"""
            if not GetEventStatus(74000304):
                """State 17,41"""
                # talk:22001100:"Oh, hello, you've come at a good time."
                assert t400220_x5(text2=22001100, z3=74000304, flag3=0, mode2=1)
            elif GetEventStatus(138) == 1 and GetEventStatus(9311) == 1 and not GetEventStatus(74000305):
                """State 16,42"""
                # talk:22002000:"Ahh, hello, fine work, I say."
                assert t400220_x6(text1=22002000, flag2=0, mode1=1)
                """State 18"""
                ClearTalkListData()
                assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                        2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
                """State 19"""
                # action:14012004:"Send him to pillage"
                AddTalkListData(5, 14012004, -1)
                # action:14012005:"Refuse"
                AddTalkListData(6, 14012005, -1)
                """State 20"""
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """State 21"""
                if GetTalkListEntryResult() == 5:
                    """State 22,44"""
                    # talk:22002100:"Mm, a fine choice!"
                    assert t400220_x5(text2=22002100, z3=74000306, flag3=0, mode2=1)
                    """State 24"""
                    Label('L3')
                    SetEventState(74000305, 1)
                elif GetTalkListEntryResult() == 6:
                    """State 23,43"""
                    # talk:22002200:"All right, fine and well."
                    assert t400220_x6(text1=22002200, flag2=0, mode1=1)
                    Goto('L3')
                else:
                    Goto('L1')
            else:
                Goto('L2')
        else:
            """State 15"""
            if not GetEventStatus(74000307):
                """State 33,48"""
                # talk:22001200:"Oh, then, we are both safe and sound."
                assert t400220_x5(text2=22001200, z3=74000307, flag3=0, mode2=1)
            elif GetEventStatus(142) == 1 and not GetEventStatus(74000308):
                """State 32,47"""
                # talk:22002400:"You know, I was thinking..."
                assert t400220_x6(text1=22002400, flag2=0, mode1=1)
                """State 25"""
                ClearTalkListData()
                assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                        2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
                """State 26"""
                # action:14012006:"Send him to pillage"
                AddTalkListData(5, 14012006, -1)
                # action:14012007:"Refuse"
                AddTalkListData(6, 14012007, -1)
                """State 27"""
                OpenConversationChoicesMenu(0)
                assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                """State 28"""
                if GetTalkListEntryResult() == 5:
                    """State 29,46"""
                    # talk:22002500:"Thank you, for placing your trust in me."
                    assert t400220_x5(text2=22002500, z3=74000309, flag3=0, mode2=1)
                    """State 31"""
                    Label('L4')
                    SetEventState(74000308, 1)
                elif GetTalkListEntryResult() == 6:
                    """State 30,45"""
                    # talk:22002600:"Right, fine. You're very thoughtful, you are."
                    assert t400220_x6(text1=22002600, flag2=0, mode1=1)
                    Goto('L4')
                else:
                    Goto('L1')
            else:
                Goto('L2')
        """State 37"""
        # goods:2118:Loretta's Bone
        assert t400220_x15(goods1=2118)
    else:
        """State 50"""
        # talk:22003900:"Heavens, she was already dead..."
        assert t400220_x6(text1=22003900, flag2=0, mode1=1)
        """State 49"""
        SetEventState(74000325, 1)
        assert t400220_x7(z1=22, z2=9023, flag1=6072)
    """State 51"""
    Label('L5')
    return 0

def t400220_x9():
    """State 0,9"""
    assert t400220_x2()
    """State 4"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    if not GetEventStatus(1216) and not GetEventStatus(1217):
        """State 2"""
        if GetDistanceToPlayer() < 10:
            """State 5,11"""
            call = t400220_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 10"""
                Label('L0')
                assert t400220_x2()
            elif GetEventStatus(1217) == 1 or GetEventStatus(1216) == 1:
                """State 3"""
                Label('L1')
                if GetDistanceToPlayer() < 10:
                    """State 7,12"""
                    call = t400220_x20()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12:
                        Goto('L0')
                elif not GetEventStatus(1216) and not GetEventStatus(1217):
                    """State 8"""
                    pass
        else:
            """State 6"""
            pass
    else:
        Goto('L1')
    """State 13"""
    return 0

def t400220_x10():
    """State 0,1"""
    if GetEventStatus(1218) == 1:
        """State 2"""
        pass
    else:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            # talk:22003300:" "
            call = t400220_x6(text1=22003300, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400220_x2()
        else:
            """State 5"""
            pass
    """State 8"""
    return 0

def t400220_x11():
    """State 0,3"""
    if GetEventStatus(1216) == 1 or GetEventStatus(1217) == 1:
        """State 1"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            # talk:22003700:"Cold piss, why did it come to this..."
            call = t400220_x6(text1=22003700, flag2=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400220_x2()
        else:
            """State 5"""
            pass
    else:
        """State 2"""
        pass
    """State 8"""
    return 0

def t400220_x12():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 3,5"""
        call = t400220_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t400220_x2()
    else:
        """State 2"""
        Goto('L0')
    """State 6"""
    return 0

def t400220_x13():
    """State 0"""
    while True:
        """State 1"""
        call = t400220_x17()
        assert not GetEventStatus(1201) and not GetEventStatus(1203) and not GetEventStatus(1206)
        """State 2"""
        call = t400220_x18()
        assert GetEventStatus(1201) == 1 or GetEventStatus(1203) == 1 or GetEventStatus(1206) == 1

def t400220_x14():
    """State 0,1"""
    assert t400220_x2()
    """State 2"""
    return 0

def t400220_x15(goods1=2118):
    """State 0"""
    while True:
        """State 1"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 2 """
        
        # Purchase Item
        AddTalkListData(1, 15010004, -1)
        
        # Sell Item
        AddTalkListDataIf(GetEventStatus(25000055) == 0, 2, 15000012, -1)
        
        # Give Loretta's Bone
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 and not GetEventStatus(74000301), 3, 15012000, -1)
                          
        # Form Covenant
        AddTalkListDataIf(GetEventStatus(25000200) == 0, 7, 15003019, -1)

        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008200) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008200) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008200) == 1, 32, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Learn Gesture
        AddTalkListDataIf(GetEventStatus(25000308) == 0, 9, 99000960, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 3"""
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """State 4"""
        if GetTalkListEntryResult() == 1:
            """State 5,10"""
            OpenRegularShop(120000, 129999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """State 6,11"""
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """State 7,15"""
            # action:12012000:"Give <?gdsparam@2118?>?"
            call = t400220_x0(action1=12012000)
            if call.Get() == 0:
                """State 12,14"""
                SetEventState(74000301, 1)
                # goods:2118:Loretta's Bone
                PlayerEquipmentQuantityChange(3, goods1, -1)
                """State 16"""
                # talk:22002800:"Heavens, she was already dead..."
                assert t400220_x6(text1=22002800, flag2=0, mode1=1)
            elif call.Done():
                """State 13"""
                pass
        elif GetTalkListEntryResult() == 4:
            """State 8,17"""
            assert t400220_x16()
        elif GetTalkListEntryResult() == 7:
            """ State 32,33 """
            SetEventState(25000200, 1)
            GetItemFromItemLot(800001000)
            return 0
        elif GetTalkListEntryResult() == 9:
            assert t400220_x23(z2=40, z3=9043, flag1=25000308)
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008200, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012195, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012190, 0, 0, 0)
                GetItemFromItemLot(90190)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012191, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99012192, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            SetEventState(25008200, 0)
            GetItemFromItemLot(91000)
            OpenGenericDialog(1, 99012192, 0, 0, 0)
            return 0
        else:
            """State 9,18"""
            assert t400220_x21()
            """State 19"""
            return 0

def t400220_x16():
    """State 0,1"""
    if GetEventStatus(1206) == 1 and GetEventStatus(74000308) == 1:
        """State 10"""
        if GetEventStatus(74000309) == 1:
            """State 11,42"""
            # talk:22002501:"Oh, don't you worry. I know Lothric like the back of my hand."
            assert t400220_x6(text1=22002501, flag2=0, mode1=1)
        else:
            """State 12,44"""
            # talk:22002700:"Changed your mind?"
            assert t400220_x6(text1=22002700, flag2=0, mode1=1)
            """State 28"""
            ClearTalkListData()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            """State 29"""
            # action:14012006:"Send him to pillage"
            AddTalkListData(5, 14012006, -1)
            # action:14012007:"Refuse"
            AddTalkListData(6, 14012007, -1)
            """State 30"""
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """State 31"""
            if GetTalkListEntryResult() == 5:
                """State 32,48"""
                # talk:22002500:"Thank you, for placing your trust in me."
                assert t400220_x5(text2=22002500, z3=74000309, flag3=0, mode2=1)
            elif GetTalkListEntryResult() == 6:
                """State 33,47"""
                # talk:22002600:"Right, fine. You're very thoughtful, you are."
                assert t400220_x6(text1=22002600, flag2=0, mode1=1)
            else:
                """State 34"""
                pass
    elif GetEventStatus(1203) == 1 and GetEventStatus(74000305) == 1:
        """State 7"""
        if GetEventStatus(74000306) == 1:
            """State 9,41"""
            # talk:22002101:"I am Greirat, the thief. What I bring back will be worthy of that name."
            assert t400220_x6(text1=22002101, flag2=0, mode1=1)
        else:
            """State 8,43"""
            # talk:22002300:"What is it? Changed your mind?"
            assert t400220_x6(text1=22002300, flag2=0, mode1=1)
            """State 21"""
            ClearTalkListData()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            """State 22"""
            # action:14012004:"Send him to pillage"
            AddTalkListData(5, 14012004, -1)
            # action:14012005:"Refuse"
            AddTalkListData(6, 14012005, -1)
            """State 23"""
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """State 24"""
            if GetTalkListEntryResult() == 5:
                """State 25,46"""
                # talk:22002100:"Mm, a fine choice!"
                assert t400220_x5(text2=22002100, z3=74000306, flag3=0, mode2=1)
            elif GetTalkListEntryResult() == 6:
                """State 26,45"""
                # talk:22002200:"All right, fine and well."
                assert t400220_x6(text1=22002200, flag2=0, mode1=1)
            else:
                """State 27"""
                pass
    elif GetEventStatus(1201) == 1 and GetEventStatus(74000302) == 1:
        """State 4"""
        if GetEventStatus(74000303) == 1:
            """State 6,40"""
            # talk:22001701:"Greirat the Thief was once a well-known name."
            assert t400220_x6(text1=22001701, flag2=0, mode1=1)
        else:
            """State 5,37"""
            # talk:22001900:"What is it? Have you changed your mind?"
            assert t400220_x6(text1=22001900, flag2=0, mode1=1)
            """State 13"""
            ClearTalkListData()
            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
            """State 14"""
            # action:14012002:"Send him to pillage"
            AddTalkListData(5, 14012002, -1)
            # action:14012003:"Refuse"
            AddTalkListData(6, 14012003, -1)
            """State 15"""
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """State 16"""
            if GetTalkListEntryResult() == 5:
                """State 17,39"""
                # talk:22001700:"Thank you. You will not be disappointed."
                assert t400220_x5(text2=22001700, z3=74000303, flag3=0, mode2=1)
            elif GetTalkListEntryResult() == 6:
                """State 18,38"""
                # talk:22001800:"All right, fine and well."
                assert t400220_x6(text1=22001800, flag2=0, mode1=1)
            else:
                """State 19"""
                pass
    else:
        """State 2"""
        if GetEventStatus(74000301) == 1:
            """State 3,36"""
            # talk:22002803:"You can keep the ring."
            assert t400220_x6(text1=22002803, flag2=0, mode1=1)
        else:
            """State 20,35"""
            # talk:22001500:"Do me a favour, and don't forget our promise."
            assert t400220_x6(text1=22001500, flag2=0, mode1=1)
    """State 49"""
    return 0

def t400220_x17():
    """State 0,2"""
    call = t400220_x22()
    assert CheckSelfDeath() == 1
    """State 1"""
    t400220_x10()

def t400220_x18():
    """State 0"""

def t400220_x19():
    """State 0,1"""
    if not GetEventStatus(74000321):
        """State 3"""
        # talk:22002900:" "
        assert t400220_x4(text3=22002900, z4=74000321, flag4=0, mode3=1)
    elif not GetEventStatus(74000322):
        """State 4"""
        # talk:22003000:" "
        assert t400220_x4(text3=22003000, z4=74000322, flag4=0, mode3=1)
    elif not GetEventStatus(74000323):
        """State 5"""
        # talk:22003100:"What's got into you?"
        assert t400220_x4(text3=22003100, z4=74000323, flag4=0, mode3=1)
    else:
        """State 2"""
        SetEventState(74000321, 0)
        SetEventState(74000322, 0)
        SetEventState(74000323, 0)
        """State 6"""
        # talk:22003200:"Stop that, please, stop!"
        assert t400220_x6(text1=22003200, flag2=0, mode1=1)
    """State 7"""
    return 0

def t400220_x20():
    """State 0,1"""
    if not GetEventStatus(74000320):
        """State 3"""
        # talk:22003600:"You're headed for the brink, aren't you?"
        assert t400220_x4(text3=22003600, z4=74000320, flag4=0, mode3=1)
    else:
        """State 2"""
        pass
    """State 4"""
    return 0

def t400220_x21():
    """State 0,1"""
    if GetEventStatus(1201) == 1 and GetEventStatus(74000303) == 1:
        """State 3,6"""
        Label('L0')
        # talk:22001400:"Good-bye. I will leave for some time. So long for now."
        assert t400220_x6(text1=22001400, flag2=0, mode1=1)
    elif GetEventStatus(1203) == 1 and GetEventStatus(74000306) == 1:
        """State 4"""
        Goto('L0')
    elif GetEventStatus(1206) == 1 and GetEventStatus(74000309) == 1:
        """State 5"""
        Goto('L0')
    else:
        """State 2,7"""
        # talk:22001300:"Goodbye, and stay safe."
        assert t400220_x6(text1=22001300, flag2=0, mode1=1)
    """State 8"""
    return 0

def t400220_x22():
    """State 0"""
    while True:
        """State 5"""
        call = t400220_x1(z5=6000, flag5=1215, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
        if call.Done():
            """State 3"""
            call = t400220_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """State 4"""
                call = t400220_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """State 1"""
                    Label('L0')
                    call = t400220_x9()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1216) == 1 and not GetEventStatus(74000320)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1216) == 1 and not GetEventStatus(74000320)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400220_x11()

def t400220_x23(z2=_, z3=_, flag1=_):
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
