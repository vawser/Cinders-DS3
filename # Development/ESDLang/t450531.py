#-------------------------------------------
#-- The Painter
#-------------------------------------------
# -*- coding: utf-8 -*-
def t450531_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t450531_x12()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t450531_x13()
        assert not IsClientPlayer()

def t450531_x0(action1=12072000):
    """State 0,1"""
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t450531_x1():
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

def t450531_x2():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t450531_x3(text3=_, z5=_, flag8=0, mode3=1):
    """State 0,5"""
    assert t450531_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 2"""
    SetEventState(z5, 1)
    """State 1"""
    TalkToPlayer(text3, -1, -1, flag8)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode3:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

def t450531_x4(text2=_, z4=_, flag7=0, mode2=1):
    """State 0,5"""
    assert t450531_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text2, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode2:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 2"""
    SetEventState(z4, 1)
    """State 6"""
    return 0

def t450531_x5(text1=_, flag6=0, mode1=_):
    """State 0,4"""
    assert t450531_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t450531_x6():
    """State 0,1"""
    if GetEventStatus(74500181) == 1:
        """State 21"""
        # talk:63001300:"Ashen One, I cannot die."
        assert t450531_x5(text1=63001300, flag6=0, mode1=1)
        """State 2"""
        SetEventState(74500181, 0)
    else:
        """State 9"""
        if GetEventStatus(14505150) == 1:
            """State 10"""
            if GetEventStatus(74500158) == 1:
                """State 12"""
                if not GetEventStatus(74500159):
                    """State 31"""
                    # talk:82000200:"My thanks, Ashen One."
                    assert t450531_x5(text1=82000200, flag6=0, mode1=0)
                    """State 13"""
                    ClearTalkListData()
                    assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                            and not CheckSpecificPersonGenericDialogIsOpen(2))
                    """State 14"""
                    AddTalkListData(1, 14072000, -1)
                    AddTalkListData(2, 14072001, -1)
                    """State 15"""
                    OpenConversationChoicesMenu(0)
                    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                    """State 16"""
                    if GetTalkListEntryResult() == 1:
                        """State 17,32"""
                        # talk:82000300:"My thanks. I will paint a world of that name."
                        assert t450531_x5(text1=82000300, flag6=0, mode1=1)
                        """State 19"""
                        Label('L0')
                        SetEventState(74500159, 1)
                    elif GetTalkListEntryResult() == 2:
                        """State 18,33"""
                        # talk:82000400:"I see. We are much alike."
                        assert t450531_x5(text1=82000400, flag6=0, mode1=1)
                        Goto('L0')
                    else:
                        pass
                else:
                    """State 20"""
                    if not GetEventStatus(74500160):
                        """State 34"""
                        # talk:82000500:"I wonder when Uncle Gael intends his return."
                        assert t450531_x4(text2=82000500, z4=74500160, flag7=0, mode2=1)
                    else:
                        """State 35"""
                        # talk:82000600:"My thanks, Ashen One."
                        assert t450531_x5(text1=82000600, flag6=0, mode1=1)
            else:
                """State 11"""
                if not GetEventStatus(74500157):
                    """State 29"""
                    # talk:82000000:"Ashen One, thy gift of flame has taken root"
                    assert t450531_x4(text2=82000000, z4=74500157, flag7=0, mode2=1)
                else:
                    """State 30"""
                    # talk:82000100:"I wonder if Uncle Gael has found it?"
                    assert t450531_x5(text1=82000100, flag6=0, mode1=1)
        else:
            """State 6"""
            if GetEventStatus(74500184) == 1:
                """State 7"""
                if not GetEventStatus(74500156):
                    """State 24"""
                    # talk:63000900:"My thanks, Ashen One."
                    assert t450531_x4(text2=63000900, z4=74500156, flag7=0, mode2=1)
                else:
                    """State 25"""
                    # talk:63001000:"I wonder if uncle Gael has found it?"
                    assert t450531_x5(text1=63001000, flag6=0, mode1=1)
            else:
                """State 4"""
                if GetEventStatus(9322) == 1:
                    """State 5"""
                    if not GetEventStatus(74500155):
                        """State 23"""
                        # talk:63000700:"I can hear the fire crackle..."
                        assert t450531_x4(text2=63000700, z4=74500155, flag7=0, mode2=1)
                    else:
                        """State 26"""
                        # talk:63000800:"My thanks, Ashen One."
                        assert t450531_x5(text1=63000800, flag6=0, mode1=1)
                else:
                    """State 3"""
                    if not GetEventStatus(74500153):
                        """State 27"""
                        # talk:63000400:"Thou'rt Ash."
                        assert t450531_x5(text1=63000400, flag6=0, mode1=1)
                        """State 8"""
                        assert GetCurrentStateElapsedTime() > 0.5
                        """State 28"""
                        # talk:63000450:"Behold its size. This is my canvas."
                        assert t450531_x4(text2=63000450, z4=74500153, flag7=0, mode2=1)
                    else:
                        """State 22"""
                        # talk:63000500:"I wish to paint a picture."
                        assert t450531_x5(text1=63000500, flag6=0, mode1=1)
    """State 36"""
    return 0

def t450531_x7():
    """State 0,6"""
    assert t450531_x1()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1,2"""
    if GetDistanceToPlayer() < 10:
        """State 4,8"""
        call = t450531_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 7"""
            assert t450531_x1()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t450531_x8():
    """State 0,8"""
    assert t450531_x1()
    """State 1"""
    if GetEventStatus(1678) == 1:
        """State 2"""
        pass
    else:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            # talk:63001200:" "
            call = t450531_x5(text1=63001200, flag6=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t450531_x1()
        else:
            """State 5"""
            pass
    """State 9"""
    return 0

def t450531_x9():
    """State 0,3"""
    if GetEventStatus(1676) == 1 or GetEventStatus(1677) == 1:
        """State 1"""
        if GetDistanceToPlayer() < 10:
            """State 4"""
            pass
        else:
            """State 5"""
            pass
    else:
        """State 2"""
        pass
    """State 7"""
    return 0

def t450531_x10():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2"""
        pass
    else:
        """State 3,4"""
        assert t450531_x1()
    """State 5"""
    return 0

def t450531_x11():
    """State 0,1"""
    # talk:63000600:"Those who aren't ken to fire cannot paint a world."
    assert t450531_x3(text3=63000600, z5=74500154, flag8=0, mode3=1)
    """State 2"""
    return 0

def t450531_x12():
    """State 0"""
    while True:
        """State 1"""
        call = t450531_x14()
        assert not GetEventStatus(1661)
        """State 2"""
        call = t450531_x15()
        assert GetEventStatus(1661) == 1

def t450531_x13():
    """State 0,1"""
    assert t450531_x1()
    """State 2"""
    return 0

def t450531_x14():
    """State 0,1"""
    call = t450531_x17(z1=-1, goods1=2158)
    assert CheckSelfDeath() == 1
    """State 2"""
    t450531_x8()

def t450531_x15():
    """State 0,1"""
    assert t450531_x1()
    """State 2"""
    return 0

def t450531_x16():
    """State 0,1"""
    if not GetEventStatus(74500171):
        """State 4"""
        # talk:63001110:" "
        assert t450531_x3(text3=63001110, z5=74500171, flag8=0, mode3=1)
    elif not GetEventStatus(74500172):
        """State 5"""
        # talk:63001120:" "
        assert t450531_x3(text3=63001120, z5=74500172, flag8=0, mode3=1)
    elif not GetEventStatus(74500173):
        """State 6"""
        # talk:63001130:" "
        assert t450531_x3(text3=63001130, z5=74500173, flag8=0, mode3=1)
    else:
        """State 2"""
        SetEventState(74500171, 0)
        SetEventState(74500172, 0)
        SetEventState(74500173, 0)
        """State 3"""
        # talk:63001140:" "
        assert t450531_x5(text1=63001140, flag6=0, mode1=1)
    """State 7"""
    return 0

def t450531_x17(z1=-1, goods1=2158):
    """State 0"""
    while True:
        """State 6"""
        call = t450531_x18(z2=6630, z3=6631, flag1=1675, flag2=6000, flag3=6000, flag4=6000, flag5=6000,
                           goods1=goods1)
        if call.Get() == 1:
            """State 7"""
            call = t450531_x19(goods1=goods1)
            if call.Get() == 0:
                """State 3"""
                Label('L0')
                call = t450531_x20()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
                elif GetDistanceToPlayer() > 5:
                    """State 4"""
                    Label('L1')
                    call = t450531_x10()
                    if call.Done():
                        pass
                    elif IsAttackedBySomeone() == 1:
                        """State 1"""
                        Label('L2')
                        call = t450531_x7()
                        def ExitPause():
                            RemoveMyAggro()
                        if call.Done():
                            pass
                        elif IsPlayerDead() == 1:
                            break
                elif IsAttackedBySomeone() == 1:
                    Goto('L2')
            elif call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L2')
            elif GetDistanceToPlayer() > 5:
                Goto('L1')
            elif IsPlayerDead() == 1:
                break
        elif call.Done():
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1:
            Goto('L2')
        elif GetEventStatus(74500183) == 1 and not GetEventStatus(74500154) and not GetEventStatus(74500155):
            """State 5"""
            call = t450531_x11()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 50:
                Goto('L1')
    """State 2"""
    t450531_x9()

def t450531_x18(z2=6630, z3=6631, flag1=1675, flag2=6000, flag3=6000, flag4=6000, flag5=6000, goods1=2158):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """State 4"""
        if (ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 and not GetEventStatus(74500158) and
            GetEventStatus(14505150) == 1):
            """State 2"""
            if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())):
                pass
            elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3)
                  and not GetEventStatus(flag4) and not GetEventStatus(flag5)):
                pass
            elif (ComparePlayerInventoryNumber(3, goods1, 3, 0, 0) == 1 or GetEventStatus(74500158) ==
                  1 or not GetEventStatus(14505150)):
                pass
            elif CheckActionButtonArea(z3):
                """State 7"""
                return 1
            elif CheckActionButtonArea(z2):
                break
        else:
            """State 5"""
            if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())):
                pass
            elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3)
                  and not GetEventStatus(flag4) and not GetEventStatus(flag5)):
                pass
            elif (ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 and not GetEventStatus(74500158)
                  and GetEventStatus(14505150) == 1):
                pass
            elif CheckActionButtonArea(z2):
                break
    """State 6"""
    return 0

def t450531_x19(goods1=2158):
    """State 0,3"""
    call = t450531_x0(action1=12072000)
    if call.Get() == 0:
        """State 1,2"""
        SetEventState(74500158, 1)
        PlayerEquipmentQuantityChange(3, goods1, -1)
        SetEventState(74500181, 0)
        """State 4"""
        return 0
    elif call.Done():
        """State 5"""
        return 1

# Cinders
def t450531_x20():
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008030) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008030) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008030) == 1, 12, 15015042, -1)
        
        # Give the Blood of the Dark Soul
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, 2158, 2, 0, 0) == 1, 2, 99003600, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        
        """ State 3 """
        ShowShopMessage(1)
        
        # Give the Blood of the Dark Soul
        if GetTalkListEntryResult() == 2:
            """ State 4 """
            PlayerEquipmentQuantityChange(3, 2158, -1)
            assert t450531_x30()
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            """ State 5 """
            SetEventState(25008030, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012025, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            """ State 6 """
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012020, 0, 0, 0)
                GetItemFromItemLot(90020)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012021, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                SetEventState(25008903, 1)
                OpenGenericDialog(1, 99012022, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008030, 0)
            GetItemFromItemLot(800001300)
            OpenGenericDialog(1, 99012022, 0, 0, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Give the Blood of the Dark Soul
def t450531_x30():
    if not GetEventStatus(74500159):
        """ State 31 """
        assert t450531_x31(text1=82000200, flag1=0, mode1=0)
        """ State 13 """
        ClearTalkListData()
        assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                and not CheckSpecificPersonGenericDialogIsOpen(2))
        """ State 14 """
        AddTalkListData(1, 14072000, -1)
        AddTalkListData(2, 14072001, -1)
        """ State 15 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 16 """
        if GetTalkListEntryResult() == 1:
            """ State 17,32 """
            assert t450531_x31(text1=82000300, flag1=0, mode1=1)
            """ State 19 """
            Label('L0')
            SetEventState(74500159, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 18,33 """
            assert t450531_x31(text1=82000400, flag1=0, mode1=1)
            Goto('L0')
        else:
            pass
    else:
        """ State 20 """
        if not GetEventStatus(74500160):
            """ State 34 """
            assert t450531_x32(text2=82000500, z2=74500160, flag2=0, mode2=1)
        else:
            """ State 35 """
            assert t450531_x31(text1=82000600, flag1=0, mode1=1)
    return 0
    
def t450531_x31(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t450531_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    
def t450531_x32(text2=_, z2=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t450531_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    return 0