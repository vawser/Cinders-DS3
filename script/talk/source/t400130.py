#-------------------------------------------
#-- Ludleth
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400130_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400130_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400130_x18()
        assert not IsClientPlayer()

def t400130_x0(action2=_):
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

def t400130_x1(z5=_, flag4=1035, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400130_x2():
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

def t400130_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400130_x4(text3=_, z4=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t400130_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
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

def t400130_x5(text2=_, z3=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400130_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    SetEventState(z3, 1)
    """ State 6 """
    return 0

def t400130_x6(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400130_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400130_x7(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400130_x8(action1=13003000):
    """ State 0,1 """
    # action:13003000:The brothers' blades were made one
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400130_x9(z2=5):
    """ State 0,1 """
    ShuffleRNGSeed(z2)
    """ State 2 """
    SetRNGSeed()
    """ State 3 """
    return 0

def t400130_x10(goods1=2135, z1=390, weapon1=6260000, weapon2=6280000):
    """ State 0,9 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 15 """
        assert t400130_x28(weapon1=weapon1, weapon2=weapon2)
        """ State 2 """

        # Transpose
        AddTalkListDataIf(GetEventStatus(25009850) == 0, 1, 15003000, 74000171)
        
        # Transpose brothers' blades
        AddTalkListDataIf(GetEventStatus(25009850) == 0 and GetEventStatus(74000171) == 1 and GetEventStatus(74000182) == 1, 3, 15003002, -1)   
         
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008100) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008100) == 1, 11, 15015041, -1)
        
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008100) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(5, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """ State 3 """
        ShowShopMessage(1)
        
        # Transpose
        if GetTalkListEntryResult() == 1:
            """ State 4,6 """
            c1111(30000, 31000)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Transpose brothers' blades
        elif GetTalkListEntryResult() == 3:
            """ State 10,14 """
            assert t400130_x25(weapon1=weapon1, weapon2=weapon2)
        # alk
        elif GetTalkListEntryResult() == 5:
            """ State 8,11 """
            assert t400130_x21(weapon1=weapon1, weapon2=weapon2)
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008100, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400130_x6(text1=10108030, flag1=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400130_x6(text1=10108000, flag1=0, mode1=0)
                GetItemFromItemLot(90090)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400130_x6(text1=10108010, flag1=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400130_x6(text1=10108020, flag1=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400130_x6(text1=10108020, flag1=0, mode1=0)
            SetEventState(25008100, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 7,13 """
            assert t400130_x24(z1=z1)
            """ State 16 """
            return 0

def t400130_x11(goods1=2135, z1=390, goods2=2138):
    """ State 0,1,2 """
    if not GetEventStatus(74000150):
        """ State 3,21 """
        # talk:13000000:Oh, thou'rt unkindled, and a seeker of Lords.
        assert t400130_x4(text3=13000000, z4=74000150, flag3=0, mode3=1)
    else:
        """ State 4 """
        if GetEventStatus(74000170) == 1:
            """ State 8 """
            SetEventState(74000170, 0)
            """ State 5 """
            if not GetEventStatus(74000171):
                """ State 6,22 """
                # talk:13000200:Ahh, beg pardon. I must have dozed a while.
                assert t400130_x6(text1=13000200, flag1=0, mode1=1)
            else:
                """ State 7,23 """
                # talk:13000400:Ahh, beg pardon. I must have dozed a while.
                assert t400130_x6(text1=13000400, flag1=0, mode1=1)
        else:
            """ State 9 """
            if GetEventStatus(74000180) == 1 and not GetEventStatus(50006030):
                """ State 13,30 """
                # talk:13001900:Ahh, well met. Thou'rt at last returned.
                assert t400130_x6(text1=13001900, flag1=0, mode1=1)
                """ State 18 """
                SetEventState(74000173, 1)
                """ State 31 """
                # lot:60300:Anri's Straight Sword
                call = t400130_x7(lot1=60300)
                if call.Done() and not GetEventStatus(74000171):
                    """ State 16,32 """
                    # talk:13001920:Though gave no elucidation...
                    assert t400130_x6(text1=13001920, flag1=0, mode1=1)
                elif call.Done():
                    """ State 17,28 """
                    # talk:13001940:Though gave no elucidation...
                    assert t400130_x6(text1=13001940, flag1=0, mode1=1)
            elif GetEventStatus(9210) == 1:
                """ State 10 """
                if GetEventStatus(50006020) == 1:
                    """ State 20,25 """
                    # talk:13000500:Ahh, well met. All is as planned, is it not?
                    assert t400130_x6(text1=13000500, flag1=0, mode1=1)
                else:
                    """ State 19,33 """
                    # talk:13002000:Ahh, well met. All is as planned, is it not?
                    assert t400130_x6(text1=13002000, flag1=0, mode1=1)
            # goods:2138:Eyes of a Fire Keeper
            elif not GetEventStatus(74000151) and ComparePlayerInventoryNumber(3, goods2, 2, 0, 0) == 1:
                """ State 15,29 """
                # talk:13001720:Ahh, found her, did we?
                assert t400130_x5(text2=13001720, z3=74000151, flag2=0, mode2=1)
            else:
                """ State 14 """
                if not GetEventStatus(74000171):
                    """ State 11,26 """
                    # talk:13000100:Fret not, fret not, my feet are here firmly planted.
                    assert t400130_x6(text1=13000100, flag1=0, mode1=1)
                else:
                    """ State 12,27 """
                    # talk:13000300:Ah-hah, thou'rt returned. And a fine day it is.
                    assert t400130_x6(text1=13000300, flag1=0, mode1=1)
    """ State 24 """
    # weapon:6260000:Lorian's Greatsword, weapon:6280000:Lothric's Holy Sword
    assert t400130_x10(goods1=goods1, z1=z1, weapon1=6260000, weapon2=6280000)
    """ State 34 """
    return 0

def t400130_x12():
    """ State 0,10 """
    assert t400130_x2()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 5 """
        if not GetEventStatus(74000165):
            """ State 3,9 """
            # talk:13001300: 
            call = t400130_x4(text3=13001300, z4=74000165, flag3=0, mode3=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 11 """
                assert t400130_x2()
        else:
            """ State 7,8 """
            SetEventState(74000165, 0)
            """ State 12 """
            # talk:13001400: 
            call = t400130_x4(text3=13001400, z4=74000166, flag3=0, mode3=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 13 """
                assert t400130_x2()
    else:
        """ State 6 """
        pass
    """ State 14 """
    return 0

def t400130_x13():
    """ State 0,1,2 """
    t400130_x27()

def t400130_x14():
    """ State 0,1 """
    assert t400130_x2()
    """ State 2 """
    return 0

def t400130_x15(z1=390):
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400130_x24(z1=z1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400130_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400130_x16():
    """ State 0,1 """
    if not GetEventStatus(9308):
        """ State 3,5 """
        # talk:13001200:Ahh, it singeth, to the bone, it hurts...
        assert t400130_x4(text3=13001200, z4=74000160, flag3=0, mode3=1)
    else:
        """ State 2,4 """
        # talk:13001100:See ye not? I am a Lord...
        assert t400130_x4(text3=13001100, z4=74000160, flag3=0, mode3=1)
    """ State 6 """
    return 0

def t400130_x17():
    """ State 0,1 """
    while True:
        # goods:2135:Transposing Kiln, goods:2138:Eyes of a Fire Keeper
        call = t400130_x19(goods1=2135, z1=390, goods2=2138)
        assert not GetEventStatus(1020)
        """ State 2 """
        call = t400130_x20()
        assert GetEventStatus(1020) == 1

def t400130_x18():
    """ State 0,1 """
    assert t400130_x2()
    """ State 2 """
    return 0

def t400130_x19(goods1=2135, z1=390, goods2=2138):
    """ State 0,1 """
    call = t400130_x26(goods1=goods1, z1=z1, goods2=goods2)
    assert CheckSelfDeath() == 1
    """ State 2 """
    t400130_x13()

def t400130_x20():
    """ State 0 """

def t400130_x21(weapon1=6260000, weapon2=6280000):
    """ State 0,15 """
    assert t400130_x28(weapon1=weapon1, weapon2=weapon2)
    """ State 7 """
    if GetEventStatus(74000171) == 1 and not GetEventStatus(74000153) and GetEventStatus(74000182) == 1:
        """ State 9,14 """
        # talk:13002500:Ahh, thou'st two most peculiar swords discover'd.
        assert t400130_x5(text2=13002500, z3=74000153, flag2=0, mode2=1)
    else:
        """ State 8,6 """
        if not GetEventStatus(54000280):
            """ State 1 """
            if not GetEventStatus(9307):
                """ State 2 """
                if GetEventStatus(132) == 1 and not GetEventStatus(74000171):
                    """ State 4,10 """
                    # talk:13000800:Listen, this might pique thine interest.
                    assert t400130_x6(text1=13000800, flag1=0, mode1=1)
                else:
                    """ State 5,11 """
                    # talk:13000700:Knowest thou of our purpose?
                    assert t400130_x5(text2=13000700, z3=74000155, flag2=0, mode2=1)
            else:
                """ State 3,12 """
                # talk:13000900:Ahh, most illustrious Lordseeker. Or should I say, Lord-slayer?
                assert t400130_x6(text1=13000900, flag1=0, mode1=1)
        else:
            """ State 13 """
            # talk:13002400:The eyes shew a world destitute of fire, a barren plane of endless darkness.
            assert t400130_x6(text1=13002400, flag1=0, mode1=1)
    """ State 16 """
    return 0

def t400130_x22(goods1=2135):
    """ State 0,5 """
    # action:12003000:Give <?gdsparam@2135?>?
    call = t400130_x0(action2=12003000)
    if call.Get() == 0:
        """ State 1,4 """
        SetEventState(74000171, 1)
        """ State 3 """
        # goods:2135:Transposing Kiln
        PlayerEquipmentQuantityChange(3, goods1, -1)
        """ State 6 """
        # talk:13001000:Oh, belike it is...a transposing kiln in thy possession.
        assert t400130_x6(text1=13001000, flag1=0, mode1=1)
    elif call.Get() == 1:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t400130_x23():
    """ State 0,1 """
    if GetEventStatus(74000181) == 1:
        """ State 2,4 """
        Label('L0')
        call = t400130_x1(z5=6130, flag4=1035, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            pass
        elif not GetEventStatus(74000181):
            """ State 5 """
            Label('L1')
            call = t400130_x1(z5=6131, flag4=1035, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
            if call.Done():
                pass
            elif GetEventStatus(74000181) == 1:
                Goto('L0')
    else:
        """ State 3 """
        Goto('L1')
    """ State 6 """
    return 0

def t400130_x24(z1=390):
    """ State 0,4 """
    if GetEventStatus(74000173) == 1:
        """ State 3,12 """
        # talk:13002300:Now, heed this little warning, from this little lord.
        assert t400130_x6(text1=13002300, flag1=0, mode1=1)
        """ State 6 """
        SetEventState(74000173, 0)
    else:
        """ State 1 """
        if not GetEventStatus(50006020):
            """ State 7,13 """
            # talk:13002200:I took the mantle of Lord of Cinder of mine own volition. I speak these words with pride.
            assert t400130_x6(text1=13002200, flag1=0, mode1=1)
        else:
            """ State 8,10 """
            call = t400130_x9(z2=5)
            if call.Done() and CompareRNGValue(1, 4) == 1:
                """ State 2,9 """
                # talk:13000600:Now, now, do not be away overlong.
                assert t400130_x6(text1=13000600, flag1=0, mode1=1)
            elif call.Done():
                """ State 5,11 """
                # talk:13002100:Treat the Fire Keeper not with discourtesy.
                assert t400130_x6(text1=13002100, flag1=0, mode1=1)
    """ State 14 """
    return 0

def t400130_x25(weapon1=6260000, weapon2=6280000):
    """ State 0,3 """
    # action:12003001:Transpose <?weaponNameId@6260000?> \nand <?weaponNameId@6280000?> into a single weapon?
    call = t400130_x0(action2=12003001)
    if call.Get() == 0:
        """ State 1,5 """
        assert t400130_x31(weapon1=weapon1, weapon2=weapon2)
        """ State 4 """
        # action:13003000:The brothers' blades were made one
        assert t400130_x8(action1=13003000)
    elif call.Done():
        """ State 2 """
        pass
    """ State 6 """
    return 0

def t400130_x26(goods1=2135, z1=390, goods2=2138):
    """ State 0,6 """
    while True:
        call = t400130_x23()
        if call.Done():
            """ State 3 """
            call = t400130_x11(goods1=goods1, z1=z1, goods2=goods2)
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400130_x12()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 6:
                """ State 4 """
                Label('L1')
                call = t400130_x15(z1=z1)
                if call.Done() and GetDistanceToPlayer() < 6:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif (GetEventStatus(1035) == 1 and GetDistanceToPlayer() < 5 and GetEventStatus(74000170) ==
              1 and not GetEventStatus(74000160) and GetEventStatus(74000150) == 1 and DoesSelfHaveSpEffect(152)
              == 1):
            """ State 5 """
            call = t400130_x16()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 8:
                Goto('L1')
        elif IsPlayerDead() == 1:
            break
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
    """ State 2 """
    t400130_x14()

def t400130_x27():
    """ State 0,1 """
    if GetEventStatus(1038) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            # talk:13001600: 
            call = t400130_x6(text1=13001600, flag1=0, mode1=1)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400130_x2()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400130_x28(weapon1=6260000, weapon2=6280000):
    """ State 0,1 """
    # weapon:6260000:Lorian's Greatsword
    if (ComparePlayerInventoryNumber(0, weapon1 + 0, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1
        + 1, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1 + 2, 0, 0, 0) and ComparePlayerInventoryNumber(0,
        weapon1 + 3, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon1 + 4, 0, 0, 0) and ComparePlayerInventoryNumber(0,
        weapon1 + 5, 0, 0, 0)):
        """ State 2,4 """
        Label('L0')
        """ State 3 """
        SetEventState(74000182, 0)
    else:
        """ State 5,6 """
        # weapon:6280000:Lothric's Holy Sword
        if (ComparePlayerInventoryNumber(0, weapon2 + 0, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 1, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon2 + 2, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 3, 0, 0, 0) and ComparePlayerInventoryNumber(0, weapon2 + 4, 0, 0, 0) and ComparePlayerInventoryNumber(0,
            weapon2 + 5, 0, 0, 0)):
            Goto('L0')
        else:
            """ State 7,8 """
            SetEventState(74000182, 1)
    """ State 9 """
    return 0

def t400130_x29(weapon1=_):
    """ State 0,2 """
    # weapon:6260000:Lorian's Greatsword, weapon:6280000:Lothric's Holy Sword
    call = t400130_x30(weapon1=weapon1, weapon3=0)
    if call.Get() == 0:
        """ State 3 """
        call = t400130_x30(weapon1=weapon1, weapon3=1)
        if call.Get() == 0:
            """ State 4 """
            call = t400130_x30(weapon1=weapon1, weapon3=2)
            if call.Get() == 0:
                """ State 5 """
                call = t400130_x30(weapon1=weapon1, weapon3=3)
                if call.Get() == 0:
                    """ State 6 """
                    call = t400130_x30(weapon1=weapon1, weapon3=4)
                    if call.Get() == 0:
                        """ State 7 """
                        call = t400130_x30(weapon1=weapon1, weapon3=5)
                        if call.Get() == 0:
                            """ State 1 """
                            Quit()
                        elif call.Done():
                            pass
                    elif call.Done():
                        pass
                elif call.Done():
                    pass
            elif call.Done():
                pass
        elif call.Done():
            pass
    elif call.Done():
        pass
    """ State 8 """
    return 0

def t400130_x30(weapon1=_, weapon3=_):
    """ State 0,2 """
    if ComparePlayerInventoryNumber(0, weapon1 + weapon3, 0, 0, 0):
        """ State 3,5 """
        return 0
    else:
        """ State 4,1 """
        PlayerEquipmentQuantityChange(0, weapon1 + weapon3, -1)
        """ State 6 """
        return 1

def t400130_x31(weapon1=6260000, weapon2=6280000):
    """ State 0,1 """
    assert t400130_x29(weapon1=weapon1)
    """ State 2 """
    assert t400130_x29(weapon1=weapon2)
    """ State 3 """
    # lot:60310:Twin Princes' Greatsword
    assert t400130_x7(lot1=60310)
    """ State 4 """
    return 0

def t400130_x32(action2=_):
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
        
def t400130_x33(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
 