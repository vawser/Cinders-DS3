#-------------------------------------------
#-- Shrine Handmaid
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400210_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400210_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400210_x12()
        assert not IsClientPlayer()

def t400210_x0(z3=6210, flag4=1195, flag5=1196, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t400210_x1():
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

def t400210_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400210_x3(text3=_, z2=_, flag3=0, mode3=_):
    """ State 0,5 """
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
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

def t400210_x4(text2=_, z1=_, flag2=0, mode2=_):
    """ State 0,5 """
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z1, 1)
    """ State 6 """
    return 0

def t400210_x5(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t400210_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400210_x6():
    """ State 0,1 """
    if GetEventStatus(74000251) == 1:
        """ State 5,14 """
        # talk:21001300: 
        assert t400210_x5(text1=21001300, flag1=0, mode1=0)
        """ State 7 """
        SetEventState(74000251, 0)
        SetEventState(74000250, 1)
        """ State 17 """
        Label('L0')
        # goods:2107:Mortician's Ashes, goods:2108:Dreamchaser's Ashes, goods:2109:Paladin's Ashes, goods:2110:Grave Warden's Ashes, goods:2111:Greirat's Ashes, goods:2112:Orbeck's Ashes, goods:2113:Cornyx's Ashes, goods:2114:Karla's Ashes, goods:2115:Irina's Ashes, goods:2150:Patches' Ashes, goods:2146:Excrement-covered Ashes, goods:2147:Prisoner Chief's Ashes, goods:2148:Xanthous Ashes, goods:2149:Hollow's Ashes, goods:2151:Dragon Chaser's Ashes, goods:2116:Yuria's Ashes, goods:2152:Easterner's Ashes
        assert (t400210_x15(goods1=2107, goods2=2108, goods3=2109, goods4=2110, goods5=2111, goods6=2112,
                goods7=2113, goods8=2114, goods9=2115, goods10=2150, goods11=2146, goods12=2147, goods13=2148,
                goods14=2149, goods15=2151, goods16=2116, goods17=2152, goods18=2154, goods19=2157, goods20=2172))
    elif GetEventStatus(70000101) == 1 and not GetEventStatus(74000253) and not GetEventStatus(74000254):
        """ State 6,18 """
        # talk:21000600:Ashen One, what woeful umbral ash is this.
        assert t400210_x5(text1=21000600, flag1=0, mode1=1)
        """ State 9 """
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 10 """
        # action:14011000:Tell her where you found the ash
        AddTalkListData(1, 14011000, -1)
        # action:14011001:Say nothing
        AddTalkListData(2, 14011001, -1)
        """ State 8 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 11 """
        if GetTalkListEntryResult() == 1:
            """ State 19 """
            # talk:21000700:Oh, yes, I see...
            assert t400210_x4(text2=21000700, z1=74000253, flag2=0, mode2=1)
            """ State 13 """
            SetEventState(70000117, 1)
            Goto('L0')
        elif GetTalkListEntryResult() == 2:
            """ State 20 """
            # talk:21000800:As the Ashen One ought be...
            assert t400210_x4(text2=21000800, z1=74000253, flag2=0, mode2=1)
            Goto('L0')
        else:
            pass
    else:
        """ State 2 """
        if not GetEventStatus(74000250):
            """ State 3 """
            if GetEventStatus(74000260) == 1:
                """ State 21 """
                # talk:21000050:Oh thou'rt...
                assert t400210_x4(text2=21000050, z1=74000250, flag2=0, mode2=0)
            else:
                """ State 16 """
                # talk:21000000:A pleasure to make thine acquaintance, Ashen One.
                assert t400210_x4(text2=21000000, z1=74000250, flag2=0, mode2=0)
        else:
            """ State 4 """
            if GetEventStatus(74000269) == 1:
                """ State 22 """
                # talk:21001400:Oh, you've picked a fine time to visit.
                assert t400210_x5(text1=21001400, flag1=0, mode1=0)
            else:
                """ State 15 """
                # talk:21000100:Ahh, well met, Ashen One.
                assert t400210_x5(text1=21000100, flag1=0, mode1=0)
                Goto('L0')
        """ State 12 """
        SetEventState(74000269, 0)
        Goto('L0')
    """ State 23 """
    return 0

def t400210_x7():
    """ State 0,5 """
    assert t400210_x1()
    """ State 2 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetDistanceToPlayer() < 10:
        """ State 3,7 """
        call = t400210_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 6 """
            assert t400210_x1()
    else:
        """ State 4 """
        pass
    """ State 8 """
    return 0

def t400210_x8():
    """ State 0,1 """
    if GetEventStatus(1198) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:21001200:Vile brute. I'm but a poor old woman...
            call = t400210_x5(text1=21001200, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400210_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400210_x9():
    """ State 0,2,1,3 """
    return 0

def t400210_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400210_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400210_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400210_x11():
    """ State 0,1 """
    while True:
        call = t400210_x16()
        assert not GetEventStatus(1180)
        """ State 2 """
        call = t400210_x17()
        assert GetEventStatus(1180) == 1

def t400210_x12():
    """ State 0,1 """
    assert t400210_x1()
    """ State 2 """
    return 0

def t400210_x13(goods1=2107, goods2=2108, goods3=2109, goods4=2110, goods5=2111, goods6=2112, goods7=2113,
                goods8=2114, goods9=2115, goods10=2150, goods11=2146, goods12=2147, goods13=2148, goods14=2149,
                goods15=2151, goods16=2116, goods17=2152, goods18=2154, goods19=2157):
    """ State 0,1 """
    ClearTalkListData()
    """ State 9 """
    # goods:2107:Mortician's Ashes, action:15011001:Give <?gdsparam@2107?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1, 1, 15011001, -1)
    # goods:2108:Dreamchaser's Ashes, action:15011002:Give <?gdsparam@2108?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1, 2, 15011002, -1)
    # goods:2109:Paladin's Ashes, action:15011003:Give <?gdsparam@2109?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods3, 2, 0, 0) == 1, 3, 15011003, -1)
    # goods:2110:Grave Warden's Ashes, action:15011004:Give <?gdsparam@2110?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods4, 2, 0, 0) == 1, 4, 15011004, -1)
    # goods:2146:Excrement-covered Ashes, action:15011011:Give <?gdsparam@2146?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods11, 2, 0, 0) == 1, 11, 15011011, -1)
    # goods:2147:Prisoner Chief's Ashes, action:15011012:Give <?gdsparam@2147?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods12, 2, 0, 0) == 1, 12, 15011012, -1)
    # goods:2148:Xanthous Ashes, action:15011013:Give <?gdsparam@2148?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods13, 2, 0, 0) == 1, 13, 15011013, -1)
    # goods:2151:Dragon Chaser's Ashes, action:15011016:Give <?gdsparam@2151?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods15, 2, 0, 0) == 1, 16, 15011016, -1)
    # goods:2152:Easterner's Ashes, action:15011017:Give <?gdsparam@2152?> 
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods17, 2, 0, 0) == 1, 17, 15011017, -1)
    # action:15011018:
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods18, 2, 0, 0) == 1, 18, 15011018, -1)
    # goods:2149:Hollow's Ashes, action:15011014:Give <?gdsparam@2149?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods14, 2, 0, 0) == 1, 14, 15011014, -1)
    # goods:2116:Yuria's Ashes, action:15011010:Give <?gdsparam@2116?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods16, 2, 0, 0) == 1, 10, 15011010, -1)
    # goods:2111:Greirat's Ashes, action:15011005:Give <?gdsparam@2111?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods5, 2, 0, 0) == 1, 5, 15011005, -1)
    # goods:2112:Orbeck's Ashes, action:15011006:Give <?gdsparam@2112?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods6, 2, 0, 0) == 1, 6, 15011006, -1)
    # goods:2113:Cornyx's Ashes, action:15011007:Give <?gdsparam@2113?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods7, 2, 0, 0) == 1, 7, 15011007, -1)
    # goods:2114:Karla's Ashes, action:15011008:Give <?gdsparam@2114?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods8, 2, 0, 0) == 1, 8, 15011008, -1)
    # goods:2115:Irina's Ashes, action:15011009:Give <?gdsparam@2115?> 
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods9, 2, 0, 0) == 1, 9, 15011009, -1)
    # goods:2150:Patches' Ashes, action:15011015:Give <?gdsparam@2150?>
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods10, 2, 0, 0) == 1, 15, 15011015, -1)
    # action:15011019:
    AddTalkListDataIf(ComparePlayerInventoryNumber(3, goods19, 2, 0, 0) == 1, 19, 15011019, -1)
    # action:15000180:Quit
    AddTalkListData(99, 15000180, -1)
    """ State 2 """
    ShowShopMessage(0)
    assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 7 """
    if GetTalkListEntryResult() == 1:
        """ State 10 """
        # goods:2107:Mortician's Ashes
        PlayerEquipmentQuantityChange(3, goods1, -1)
        SetEventState(70000100, 1)
        SetEventState(70000130, 1)
        """ State 31 """
        Label('L0')
        # talk:21000400:Gracious. Passing fine ash thou'st given.
        assert t400210_x5(text1=21000400, flag1=0, mode1=0)
    elif GetTalkListEntryResult() == 2:
        """ State 11 """
        # goods:2108:Dreamchaser's Ashes
        PlayerEquipmentQuantityChange(3, goods2, -1)
        SetEventState(70000101, 1)
        SetEventState(70000126, 1)
        SetEventState(70000131, 1)
        """ State 33 """
        # talk:21000600:Ashen One, what woeful umbral ash is this.
        assert t400210_x5(text1=21000600, flag1=0, mode1=1)
        """ State 5 """
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 6 """
        # action:14011000:Tell her where you found the ash
        AddTalkListData(1, 14011000, -1)
        # action:14011001:Say nothing
        AddTalkListData(2, 14011001, -1)
        """ State 4 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 8 """
        if GetTalkListEntryResult() == 1:
            """ State 34 """
            # talk:21000700:Oh, yes, I see...
            assert t400210_x4(text2=21000700, z1=74000253, flag2=0, mode2=1)
            """ State 28 """
            SetEventState(70000117, 1)
        elif GetTalkListEntryResult() == 2:
            """ State 35 """
            # talk:21000800:As the Ashen One ought be...
            assert t400210_x4(text2=21000800, z1=74000253, flag2=0, mode2=1)
        else:
            """ State 38 """
            return 1
    elif GetTalkListEntryResult() == 3:
        """ State 12 """
        # goods:2109:Paladin's Ashes
        PlayerEquipmentQuantityChange(3, goods3, -1)
        SetEventState(70000102, 1)
        SetEventState(70000127, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 4:
        """ State 13 """
        # goods:2110:Grave Warden's Ashes
        PlayerEquipmentQuantityChange(3, goods4, -1)
        SetEventState(70000103, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 5:
        """ State 14 """
        # goods:2111:Greirat's Ashes
        PlayerEquipmentQuantityChange(3, goods5, -1)
        SetEventState(70000110, 1)
        SetEventState(70000175, GetEventStatus(70000150))
        SetEventState(70000176, GetEventStatus(70000151))
        SetEventState(70000177, GetEventStatus(70000152))
        SetEventState(70000178, GetEventStatus(70000153))
        """ State 20 """
        Label('L1')
        if not GetEventStatus(74000256):
            """ State 36 """
            # talk:21000500:Gracious. Passing fine ash thou'st given.
            assert t400210_x3(text3=21000500, z2=74000256, flag3=0, mode3=0)
        else:
            """ State 32 """
            # talk:21002000:Well, well, what warm umbral ash have we here.
            assert t400210_x5(text1=21002000, flag1=0, mode1=0)
    elif GetTalkListEntryResult() == 6:
        """ State 15 """
        # goods:2112:Orbeck's Ashes
        PlayerEquipmentQuantityChange(3, goods6, -1)
        SetEventState(70000111, 1)
        SetEventState(70000225, GetEventStatus(70000200))
        SetEventState(70000226, GetEventStatus(70000201))
        SetEventState(70000227, GetEventStatus(70000202))
        SetEventState(70000228, GetEventStatus(70000203))
        SetEventState(70000229, GetEventStatus(70000204))
        Goto('L1')
    elif GetTalkListEntryResult() == 7:
        """ State 16 """
        # goods:2113:Cornyx's Ashes
        PlayerEquipmentQuantityChange(3, goods7, -1)
        SetEventState(70000112, 1)
        SetEventState(70000275, GetEventStatus(70000250))
        SetEventState(70000276, GetEventStatus(70000251))
        SetEventState(70000277, GetEventStatus(70000252))
        Goto('L1')
    elif GetTalkListEntryResult() == 8:
        """ State 17 """
        # goods:2114:Karla's Ashes
        PlayerEquipmentQuantityChange(3, goods8, -1)
        SetEventState(70000113, 1)
        SetEventState(70000325, GetEventStatus(70000300))
        SetEventState(70000326, GetEventStatus(70000301))
        SetEventState(70000327, GetEventStatus(70000302))
        SetEventState(70000328, GetEventStatus(70000303))
        Goto('L1')
    elif GetTalkListEntryResult() == 9:
        """ State 18 """
        # goods:2115:Irina's Ashes
        PlayerEquipmentQuantityChange(3, goods9, -1)
        SetEventState(70000114, 1)
        SetEventState(70000375, GetEventStatus(70000350))
        SetEventState(70000376, GetEventStatus(70000351))
        SetEventState(70000377, GetEventStatus(70000352))
        SetEventState(70000378, GetEventStatus(70000353))
        Goto('L1')
    elif GetTalkListEntryResult() == 10:
        """ State 26 """
        # goods:2116:Yuria's Ashes
        PlayerEquipmentQuantityChange(3, goods16, -1)
        SetEventState(70000116, 1)
        SetEventState(70000475, GetEventStatus(70000450))
        Goto('L1')
    elif GetTalkListEntryResult() == 11:
        """ State 21 """
        # goods:2146:Excrement-covered Ashes
        PlayerEquipmentQuantityChange(3, goods11, -1)
        SetEventState(70000104, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 12:
        """ State 22 """
        # goods:2147:Prisoner Chief's Ashes
        PlayerEquipmentQuantityChange(3, goods12, -1)
        SetEventState(70000105, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 13:
        """ State 23 """
        # goods:2148:Xanthous Ashes
        PlayerEquipmentQuantityChange(3, goods13, -1)
        SetEventState(70000106, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 14:
        """ State 24 """
        # goods:2149:Hollow's Ashes
        PlayerEquipmentQuantityChange(3, goods14, -1)
        SetEventState(70000107, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 15:
        """ State 19 """
        # goods:2150:Patches' Ashes
        PlayerEquipmentQuantityChange(3, goods10, -1)
        SetEventState(70000115, 1)
        SetEventState(70000425, GetEventStatus(70000400))
        SetEventState(70000426, GetEventStatus(70000401))
        SetEventState(70000427, GetEventStatus(70000402))
        SetEventState(70000428, GetEventStatus(70000403))
        Goto('L1')
    elif GetTalkListEntryResult() == 16:
        """ State 25 """
        # goods:2151:Dragon Chaser's Ashes
        PlayerEquipmentQuantityChange(3, goods15, -1)
        SetEventState(70000108, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 17:
        """ State 27 """
        # goods:2152:Easterner's Ashes
        PlayerEquipmentQuantityChange(3, goods17, -1)
        SetEventState(70000109, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 18:
        """ State 29 """
        PlayerEquipmentQuantityChange(3, goods18, -1)
        SetEventState(70000120, 1)
        SetEventState(70000132, 1)
        Goto('L0')
    elif GetTalkListEntryResult() == 19:
        """ State 30 """
        PlayerEquipmentQuantityChange(3, goods19, -1)
        SetEventState(70000121, 1)
        SetEventState(70000133, 1)
        Goto('L1')
    else:
        """ State 3 """
        pass
    """ State 37 """
    return 0

def t400210_x14():
    """ State 0,1 """
    if GetEventStatus(74000280) == 1:
        """ State 5 """
        # talk:21001950:Knowest thou of that soppy gossip?
        assert t400210_x5(text1=21001950, flag1=0, mode1=0)
    elif not GetEventStatus(6800) and GetEventStatus(74000255) == 1:
        """ State 4 """
        # talk:21001900:Knowest thou of that soppy gossip?
        assert t400210_x5(text1=21001900, flag1=0, mode1=0)
        """ State 2 """
        SetEventState(74000255, 0)
    else:
        """ State 3 """
        # talk:21000300:Ashen One, if my wares are not to thy satisfaction,
        assert t400210_x4(text2=21000300, z1=74000255, flag2=0, mode2=0)
    """ State 6 """
    return 0

def t400210_x15(goods1=2107, goods2=2108, goods3=2109, goods4=2110, goods5=2111, goods6=2112, goods7=2113,
                goods8=2114, goods9=2115, goods10=2150, goods11=2146, goods12=2147, goods13=2148, goods14=2149,
                goods15=2151, goods16=2116, goods17=2152, goods18=2154, goods19=2157, goods20=2172):
    """ State 0,12 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 11 """
        
        # Soul Coalescence
        AddTalkListData(3, 99096000, -1)
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15011020, -1)
        
        # Sell Item
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 2, 15000012, -1)
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008140) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 30, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008140) == 1, 31, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008140) == 1, 32, 15015042, -1)
        
        # Learn Gesture
        AddTalkListDataIf(GetEventStatus(25000301) == 0, 9, 99000960, -1)
        
        # Talk
        AddTalkListData(4, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 2 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 10 """
        if GetTalkListEntryResult() == 1:
            """ State 3,8 """
            OpenRegularShop(110000, 119899)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        elif GetTalkListEntryResult() == 2:
            """ State 4,9 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        elif GetTalkListEntryResult() == 4:
            """ State 5,18 """
            assert t400210_x14()
        elif GetTalkListEntryResult() == 9:
            assert t400210_x21(z2=21, z3=9037, flag1=25000301)
            return 0
        # Form Betrothal
        elif GetTalkListEntryResult() == 30:
            SetEventState(25008140, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400210_x5(text1=10112030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 31:
            # Good
            if GetEventStatus(25008900):
                assert t400210_x5(text1=10112000, flag1=0, mode1=0)
                GetItemFromItemLot(90130)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400210_x5(text1=10112010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400210_x5(text1=10112020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 32:
            assert t400210_x5(text1=10112020, flag1=0, mode1=0)
            SetEventState(25008140, 0)
            return 0
        # Soul Coalescence
        elif GetTalkListEntryResult() == 3:
            assert t400210_x30()
            continue
        else:
            """ State 6,19 """
            assert t400210_x19()
        """ State 20 """
        return 0

def t400210_x16():
    """ State 0,2 """
    call = t400210_x20()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400210_x8()

def t400210_x17():
    """ State 0 """

def t400210_x18():
    """ State 0,2 """
    if not GetEventStatus(74000271):
        """ State 1,6 """
        # talk:21000900: 
        assert t400210_x3(text3=21000900, z2=74000271, flag3=0, mode3=1)
    elif not GetEventStatus(74000272):
        """ State 3,7 """
        # talk:21001000: 
        assert t400210_x3(text3=21001000, z2=74000272, flag3=0, mode3=1)
    else:
        """ State 4,5 """
        SetEventState(74000271, 0)
        SetEventState(74000272, 0)
        """ State 8 """
        # talk:21001100:Stop that!
        assert t400210_x5(text1=21001100, flag1=0, mode1=1)
    """ State 9 """
    return 0

def t400210_x19():
    """ State 0,1 """
    # talk:21000200:Ashen One, be sure to bring more souls.
    assert t400210_x5(text1=21000200, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t400210_x20():
    """ State 0,5 """
    while True:
        call = t400210_x0(z3=6210, flag4=1195, flag5=1196, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t400210_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
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
                """ State 4 """
                call = t400210_x10()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400210_x9()

def t400210_x21(z2=_, z3=_, flag1=_):
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

#----------------------------------------------------------
# Soul Coalescence
#----------------------------------------------------------
def t400210_x30():
    c1110()
    
    while True:
        ClearTalkListData()
        
        # Coalesce Strength
        AddTalkListDataIf(GetEventStatus(25009410) == 0, 1, 99096010, -1)
        
        # Coalesce Dexterity
        AddTalkListDataIf(GetEventStatus(25009411) == 0, 2, 99096011, -1)
        
        # Coalesce Intelligence
        AddTalkListDataIf(GetEventStatus(25009412) == 0, 3, 99096012, -1)
        
        # Coalesce Faith
        AddTalkListDataIf(GetEventStatus(25009413) == 0, 4, 99096013, -1)
        
        # Coalesce Luck
        AddTalkListDataIf(GetEventStatus(25009414) == 0, 5, 99096014, -1)
        
        # Coalescence of Strength
        AddTalkListDataIf(GetEventStatus(25009410) == 1, 1, 99096020, -1)
        
        # Coalescence of Dexterity
        AddTalkListDataIf(GetEventStatus(25009411) == 1, 2, 99096021, -1)
        
        # Coalescence of Intelligence
        AddTalkListDataIf(GetEventStatus(25009412) == 1, 3, 99096022, -1)
        
        # Coalescence of Faith
        AddTalkListDataIf(GetEventStatus(25009413) == 1, 4, 99096023, -1)
        
        # Coalescence of Luck
        AddTalkListDataIf(GetEventStatus(25009414) == 1, 5, 99096024, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Sacrifice Strength
        if GetTalkListEntryResult() == 1:
            if GetEventStatus(25009410) == 0:
                if ComparePlayerStatus(3, 4, 99) == 1:
                    assert t400210_x50(25009410)
                else:
                    # Lack stats
                    OpenGenericDialog(1, 99096040, 0, 0, 0)
            elif GetEventStatus(25009410) == 1:
                # Completed, show bonus
                OpenGenericDialog(1, 99096050, 0, 0, 0)
            return 0
        # Sacrifice Dexterity
        elif GetTalkListEntryResult() == 2:
            if GetEventStatus(25009411) == 0:
                if ComparePlayerStatus(4, 4, 99) == 1:
                    assert t400210_x50(25009411)
                else:
                    # Lack stats
                    OpenGenericDialog(1, 99096041, 0, 0, 0)
            elif GetEventStatus(25009411) == 1:
                # Completed, show bonus
                OpenGenericDialog(1, 99096051, 0, 0, 0)
            return 0
        # Sacrifice Intelligence
        elif GetTalkListEntryResult() == 3:
            if GetEventStatus(25009412) == 0:
                if ComparePlayerStatus(5, 4, 99) == 1:
                    assert t400210_x50(25009412)
                else:
                    # Lack stats
                    OpenGenericDialog(1, 99096042, 0, 0, 0)
            elif GetEventStatus(25009412) == 1:
                # Completed, show bonus
                OpenGenericDialog(1, 99096052, 0, 0, 0)
            return 0
        # Sacrifice Faith
        elif GetTalkListEntryResult() == 4:
            if GetEventStatus(25009413) == 0:
                if ComparePlayerStatus(6, 4, 99) == 1:
                    assert t400210_x50(25009413)
                else:
                    # Lack stats
                    OpenGenericDialog(1, 99096043, 0, 0, 0)
            elif GetEventStatus(25009413) == 1:
                # Completed, show bonus
                OpenGenericDialog(1, 99096053, 0, 0, 0)
            return 0
        # Sacrifice Luck
        elif GetTalkListEntryResult() == 5:
            if GetEventStatus(25009414) == 0:
                if ComparePlayerStatus(7, 4, 99) == 1:
                    assert t400210_x50(25009414)
                else:
                    # Lack stats
                    OpenGenericDialog(1, 99096044, 0, 0, 0)
            elif GetEventStatus(25009414) == 1:
                # Completed, show bonus
                OpenGenericDialog(1, 99096054, 0, 0, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------------
# Utility
#----------------------------------------------------------    
def t400210_x50(flag=_):
    SetAquittalCostMessageTag(500, 1)

    call = t400210_x51(99096031)
    
    if call.Get() == 0:
        if ComparePlayerAcquittalPrice(500, 1, 2) == 1:
        
            # Insufficient souls
            assert t400210_x52(10010754)
        else:
            SubtractAcquittalCostFromPlayerSouls(500, 1)

            SetEventState(flag, 1)
            
            OpenGenericDialog(1, 99096030, 0, 0, 0)
    elif call.Get() == 1:
        pass
        
    return 0
    
def t400210_x51(action2=_):
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
        
def t400210_x52(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0