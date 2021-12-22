#-------------------------------------------
#-- Irina of Carim
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400260_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400260_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400260_x13()
        assert not IsClientPlayer()

def t400260_x0(z4=6000, flag4=1295, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1 or GetEventStatus(flag6) ==
                1 or GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag4) and not GetEventStatus(flag5) and not GetEventStatus(flag6) and
              not GetEventStatus(flag7) and not GetEventStatus(flag8)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 4 """
    return 0

def t400260_x1():
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

def t400260_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400260_x3(text3=_, z3=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t400260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400260_x4(text2=_, z2=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400260_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400260_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400260_x6(goods1=2119, goods2=2120, z1=2121, goods3=2144, goods4=2145, goods5=2177, goods6=2178, goods7=2121):
    """ State 0,11 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 2 """
        # Learn Miracles
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15016000, -1)
        
        # Covenant
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 7, 99062000, -1)
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 2, 15011020, -1)
        
        # Give Divine Tome
        AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1 or ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1,
                          3, 15016020, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008160) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008160) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008160) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Learn Gesture
        AddTalkListDataIf(GetEventStatus(25000306) == 0, 9, 99000960, -1)
        
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 9 """
        if GetTalkListEntryResult() == 1:
            """ State 4,10 """
            OpenRegularShop(160100, 169999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """ State 5,12 """
            OpenRegularShop(160000, 160099)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8,14 """
            assert t400260_x14(goods1=goods1, goods2=goods2, z1=z1, goods3=goods3, goods4=goods4, goods5=goods5, goods6=goods6, goods7=goods7)
        elif GetTalkListEntryResult() == 4:
            """ State 6,13 """
            assert t400260_x15()
        # Covenant
        elif GetTalkListEntryResult() == 7:
            assert t400260_x50()
            continue
        elif GetTalkListEntryResult() == 9:
            assert t400260_x23(z2=38, z3=9041, flag1=25000306)
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008160, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400260_x5(text1=10114030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                assert t400260_x5(text1=10114000, flag1=0, mode1=0)
                GetItemFromItemLot(90150)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400260_x5(text1=10114010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400260_x5(text1=10114020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400260_x5(text1=10114020, flag1=0, mode1=0)
            SetEventState(25008160, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,15 """
            assert t400260_x18()
            """ State 16 """
            return 0

def t400260_x7():
    """ State 0,1 """
    if GetEventStatus(1281) == 1:
        """ State 2 """
        if not GetEventStatus(74000350):
            """ State 3,14 """
            # talk:26001100:Oh, Champion of Ash. Welcome back.
            assert t400260_x4(text2=26001100, z2=74000350, flag2=0, mode2=1)
            """ State 16 """
            Label('L0')
            # goods:2119:Braille Divine Tome of Carim, goods:2120:Braille Divine Tome of Lothric, goods:2144:Deep Braille Divine Tome, goods:2145:Londor Braille Divine Tome
            assert t400260_x6(goods1=2119, goods2=2120, z1=2121, goods3=2144, goods4=2145, goods5=2177, goods6=2178, goods7=2121)
        else:
            """ State 5,13 """
            # talk:26001200:Oh, Champion of Ash. Welcome back.
            assert t400260_x5(text1=26001200, flag1=0, mode1=1)
            Goto('L0')
    elif GetEventStatus(1282) == 1:
        """ State 6,4,17 """
        # talk:26001800:Ahh, ahh, sweet Champion. Where have you been?
        assert t400260_x4(text2=26001800, z2=74000351, flag2=0, mode2=1)
        Goto('L0')
    else:
        """ State 7,15 """
        # talk:26002100:Ahh, ahh, someone, please, touch me.
        assert t400260_x5(text1=26002100, flag1=0, mode1=1)
        """ State 8 """
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 9 """
        # action:14016000:Touch
        AddTalkListData(1, 14016000, -1)
        # action:14016001:Ignore
        AddTalkListData(2, 14016001, -1)
        """ State 10 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 11 """
        if GetTalkListEntryResult() == 1:
            """ State 18 """
            SetEventState(74000383, 1)
            call = t400260_x21()
            def ExitPause():
                SetEventState(74000383, 0)
            if call.Get() == 1:
                pass
            elif call.Done():
                pass
        else:
            """ State 12 """
            pass
    """ State 19 """
    return 0

def t400260_x8():
    """ State 0,6 """
    assert t400260_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,8 """
        call = t400260_x20()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t400260_x1()
    else:
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t400260_x9():
    """ State 0,1 """
    if GetEventStatus(1298) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400260_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400260_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400260_x10():
    """ State 0,2,1,3 """
    return 0

def t400260_x11():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400260_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400260_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400260_x12():
    """ State 0,1 """
    while True:
        call = t400260_x16()
        assert not GetEventStatus(1281) and not GetEventStatus(1282) and not GetEventStatus(1283)
        """ State 2 """
        call = t400260_x17()
        assert GetEventStatus(1281) == 1 or GetEventStatus(1282) == 1 or GetEventStatus(1283) == 1

def t400260_x13():
    """ State 0,1 """
    assert t400260_x1()
    """ State 2 """
    return 0

def t400260_x14(goods1=2119, goods2=2120, z1=2121, goods3=2144, goods4=2145, goods5=2177, goods6=2178, goods7=2121):
    """ State 0,1 """
    ClearTalkListData()
    """ State 2 """
    # goods:2119:Braille Divine Tome of Carim, action:15016021:Give <?gdsparam@2119?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 1, 15016021, -1)
    # goods:2120:Braille Divine Tome of Lothric, action:15016022:Give <?gdsparam@2120?> 
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 2, 15016022, -1)
    
    # Angelic Braille Divine Tome
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1, 3, 15016026, -1)
    # Heavenly Braille Divine Tome
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1, 4, 15016027, -1)
    # Braille Divine Tome of Sunlight
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1, 5, 15016028, -1)
    
    # action:15000180:Quit
    AddTalkListData(99, 15000180, -1)
    """ State 3 """
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 6 """
    if GetTalkListEntryResult() == 1:
        """ State 4 """
        SetEventState(70000350, 1)
        # goods:2119:Braille Divine Tome of Carim
        PlayerEquipmentQuantityChange(3, goods1, -1)
        """ State 11 """
        Label('L0')
        if GetEventStatus(1281) == 1:
            """ State 12 """
            if GetTalkListEntryResult() == 1:
                """ State 13 """
                Label('L1')
                # talk:26001500:Ahh, you've brought me a braille Divine Tome.
                assert t400260_x5(text1=26001500, flag1=0, mode1=1)
            elif GetTalkListEntryResult() == 2:
                Goto('L1')
            elif GetTalkListEntryResult() == 3:
                """ State 14 """
                Label('L2')
                # talk:26001700:Oh, what's this...
                assert t400260_x5(text1=26001500, flag1=0, mode1=1)
            elif GetTalkListEntryResult() == 4:
                Goto('L2')
            elif GetTalkListEntryResult() == 5:
                Goto('L2')
        else:
            """ State 9,15 """
            # talk:26002000:Ahh, you've brought me a braille Divine Tome.
            assert t400260_x5(text1=26002000, flag1=0, mode1=1)
    elif GetTalkListEntryResult() == 2:
        """ State 8 """
        SetEventState(70000351, 1)
        # goods:2120:Braille Divine Tome of Lothric
        PlayerEquipmentQuantityChange(3, goods2, -1)
        Goto('L0')
    elif GetTalkListEntryResult() == 3:
        SetEventState(70000358, 1)
        PlayerEquipmentQuantityChange(3, goods5, -1)
        Goto('L0')
    elif GetTalkListEntryResult() == 4:
        SetEventState(70000357, 1)
        PlayerEquipmentQuantityChange(3, goods6, -1)
        Goto('L0')
    elif GetTalkListEntryResult() == 5:
        SetEventState(70000356, 1)
        PlayerEquipmentQuantityChange(3, goods7, -1)
        Goto('L0')
    else:
        """ State 7 """
        pass
    """ State 16 """
    return 0

def t400260_x15():
    """ State 0,1 """
    if GetEventStatus(1282) == 1:
        """ State 2 """
        if (GetEventStatus(70000350) == 1 and GetEventStatus(70000351) == 1 and (GetEventStatus(70000352)
            == 1 or GetEventStatus(70000302) == 1) and (GetEventStatus(70000353) == 1 or GetEventStatus(70000303)
            == 1)):
            """ State 7 """
            # talk:26002001:Now I can tell you tales of miracles, forever and ever...
            assert t400260_x5(text1=26002001, flag1=0, mode1=1)
        else:
            """ State 4 """
            Label('L0')
            # talk:26001400:You know, in my home of Carim, I was a nun.
            assert t400260_x5(text1=26001400, flag1=0, mode1=1)
    else:
        """ State 3 """
        if (GetEventStatus(70000350) == 1 and GetEventStatus(70000351) == 1 and GetEventStatus(70000302)
            == 1 and GetEventStatus(70000303) == 1):
            """ State 6 """
            # talk:26001101:I was not meant to be a Fire Keeper, but I am honoured to serve you beside the Bonfire.
            assert t400260_x5(text1=26001101, flag1=0, mode1=1)
        elif (GetEventStatus(70000350) == 1 and GetEventStatus(70000351) == 1 and (GetEventStatus(70000352)
              == 1 or GetEventStatus(70000302) == 1) and (GetEventStatus(70000353) == 1 or GetEventStatus(70000303)
              == 1)):
            """ State 5 """
            # talk:26001702:These are dark tales of things that lurk deep within men... These stories would not please you...
            assert t400260_x5(text1=26001702, flag1=0, mode1=1)
        else:
            Goto('L0')
    """ State 8 """
    return 0

def t400260_x16():
    """ State 0,2 """
    call = t400260_x22()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400260_x9()

def t400260_x17():
    """ State 0 """

def t400260_x18():
    """ State 0,1 """
    if GetEventStatus(1282) == 1:
        """ State 3,5 """
        # talk:26001900:Ahh, sweet Champion. Leaving so soon?
        assert t400260_x5(text1=26001900, flag1=0, mode1=1)
    else:
        """ State 2 """
        if GetEventStatus(9210) == 1:
            """ State 6 """
            # talk:26002800:Godspeed, Champion of Ash.
            assert t400260_x5(text1=26002800, flag1=0, mode1=1)
        elif GetEventStatus(74000380) == 1:
            """ State 7 """
            # talk:26002700:Thank you ever so much, sweet Champion.
            assert t400260_x5(text1=26002700, flag1=0, mode1=1)
        else:
            """ State 4 """
            # talk:26001300:Have a pleasant journey, Champion of Ash.
            assert t400260_x5(text1=26001300, flag1=0, mode1=1)
    """ State 8 """
    return 0

def t400260_x19():
    """ State 0,1 """
    if GetEventStatus(1283) == 1:
        """ State 2 """
        if GetEventStatus(74000352) == 1:
            """ State 4 """
            # talk:26003300:Ohh, a knight of Carim...
            assert t400260_x5(text1=26003300, flag1=0, mode1=1)
        else:
            """ State 5 """
            # talk:26003200:Ahh, thank you ever so much.
            assert t400260_x5(text1=26003200, flag1=0, mode1=1)
    else:
        """ State 3,6 """
        # talk:26002600:What have you done, sweet Champion of Ash...
        assert t400260_x5(text1=26002600, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t400260_x20():
    """ State 0,3 """
    if GetEventStatus(74000352) == 1:
        """ State 4 """
        if not GetEventStatus(74000371):
            """ State 6 """
            # talk:26002200: 
            assert t400260_x3(text3=26002200, z3=74000371, flag3=0, mode3=1)
        else:
            """ State 2 """
            SetEventState(74000371, 0)
            SetEventState(74000372, 0)
            SetEventState(74000373, 0)
            """ State 7 """
            # talk:26002300: 
            assert t400260_x3(text3=26002300, z3=74000372, flag3=0, mode3=1)
    else:
        """ State 5 """
        if not GetEventStatus(74000373):
            """ State 8 """
            # talk:26002400:Have mercy, please!
            assert t400260_x3(text3=26002400, z3=74000373, flag3=0, mode3=1)
        else:
            """ State 1 """
            SetEventState(74000371, 0)
            SetEventState(74000372, 0)
            SetEventState(74000373, 0)
            """ State 9 """
            # talk:26002500:Please, stop this, sweet Champion!
            assert t400260_x5(text1=26002500, flag1=0, mode1=1)
    """ State 10 """
    return 0

def t400260_x21():
    """ State 0,1 """
    if GetEventStatus(74000384) == 1:
        pass
    elif not GetEventStatus(74000383):
        Goto('L0')
    """ State 2 """
    assert GetCurrentStateElapsedTime() > 5
    """ State 3 """
    if IsEquipmentIDEquipped(1, 24502000) == 1:
        """ State 4 """
        # talk:26003000:Ohh, you again, touch me, one last time.
        assert t400260_x4(text2=26003000, z2=74000352, flag2=0, mode2=1)
    else:
        """ State 5 """
        # talk:26002900:Ohh, is there no one near to touch me?
        assert t400260_x5(text1=26002900, flag1=0, mode1=1)
    """ State 6 """
    return 0
    """ State 7 """
    Label('L0')
    return 1

def t400260_x22():
    """ State 0,5 """
    while True:
        call = t400260_x0(z4=6000, flag4=1295, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t400260_x7()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400260_x8()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400260_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400260_x10()

def t400260_x23(z2=_, z3=_, flag1=_):
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
    
#----------------------------------------------------
# Covenant
#----------------------------------------------------
def t400260_x50():
    c1110()
    while True:
        ClearTalkListData()

        # Form Covenant
        AddTalkListDataIf(IsEquipmentIDObtained(2, 10120) == 0 and 
        IsEquipmentIDObtained(2, 10121) == 0 and 
        IsEquipmentIDObtained(2, 10122) == 0 and 
        IsEquipmentIDObtained(2, 10123) == 0 and 
        IsEquipmentIDObtained(2, 10124) == 0, 1, 15003019, -1)
        
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # Strengthen Bond - II
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10120) == 1, 3, 99062001, -1)
        
        # Strengthen Bond - III
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10121) == 1, 4, 99062001, -1)
        
        # Strengthen Bond - IV
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10122) == 1, 5, 99062001, -1)
        
        # Strengthen Bond - V
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10123) == 1, 6, 99062001, -1)
        
        # Strengthen Bond - None
        AddTalkListDataIf(IsEquipmentIDEquipped(2, 10120) == 0 and 
        IsEquipmentIDEquipped(2, 10121) == 0 and 
        IsEquipmentIDEquipped(2, 10122) == 0 and 
        IsEquipmentIDEquipped(2, 10123) == 0 and 
        IsEquipmentIDEquipped(2, 10124) == 0, 7, 99062001, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001080)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            c1111(22800, 22899)
            continue
        # Strengthen Bond - II
        elif GetTalkListEntryResult() == 3:
            assert t400260_x60()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - III
        elif GetTalkListEntryResult() == 4:
            assert t400260_x61()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - IV
        elif GetTalkListEntryResult() == 5:
            assert t400260_x62()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - V
        elif GetTalkListEntryResult() == 6:
            assert t400260_x63()
            ReportConversationEndToHavokBehavior()
            return 0
        # Strengthen Bond - None
        elif GetTalkListEntryResult() == 7:
            assert t400260_x52(action1=99062005)
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif GetTalkListEntryResult() == 99:
            ReportConversationEndToHavokBehavior()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400260_x51(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
def t400260_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0
    
# Strengthen Bond - II
def t400260_x60():
    call = t400260_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1090, 3, 9, 0) == 1:
            assert t400260_x52(action1=99062210)
        else:
            PlayerEquipmentQuantityChange(3, 1090, -10)
            PlayerEquipmentQuantityChange(2, 10120, -1)
            PlayerEquipmentQuantityChange(2, 10121, 1)
            
            assert t400260_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - III
def t400260_x61():
    call = t400260_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1090, 3, 19, 0) == 1:
            assert t400260_x52(action1=99062211)
        else:
            PlayerEquipmentQuantityChange(3, 1090, -20)
            PlayerEquipmentQuantityChange(2, 10121, -1)
            PlayerEquipmentQuantityChange(2, 10122, 1)
            
            assert t400260_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - IV
def t400260_x62():
    call = t400260_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1090, 3, 29, 0) == 1:
            assert t400260_x52(action1=99062212)
        else:
            PlayerEquipmentQuantityChange(3, 1090, -30)
            PlayerEquipmentQuantityChange(2, 10122, -1)
            PlayerEquipmentQuantityChange(2, 10123, 1)
            
            assert t400260_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    
# Strengthen Bond - V
def t400260_x63():
    call = t400260_x51(action2=99062004)
    
    if call.Get() == 0:
        if ComparePlayerInventoryNumber(3, 1090, 3, 49, 0) == 1:
            assert t400260_x52(action1=99062213)
        else:
            PlayerEquipmentQuantityChange(3, 1090, -50)
            PlayerEquipmentQuantityChange(2, 10123, -1)
            PlayerEquipmentQuantityChange(2, 10124, 1)
            
            assert t400260_x52(action1=99062002)
    elif call.Get() == 1:
        pass
    return 0
    

