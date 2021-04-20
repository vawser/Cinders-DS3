#-------------------------------------------
#-- Company Captain Yorshka
#-------------------------------------------
# -*- coding: utf-8 -*-
def t370160_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t370160_x15()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t370160_x16()
        assert not IsClientPlayer()

def t370160_x0(action2=12006001):
    """ State 0,1 """
    # action:12006001:Give <?gdsparam@2136?>?
    OpenGenericDialog(8, action2, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t370160_x1(z9=_, flag5=1095, flag6=6000, flag7=6000, flag8=6000, flag9=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
              not GetEventStatus(flag8) and not GetEventStatus(flag9)):
            pass
        elif CheckActionButtonArea(z9):
            break
    """ State 4 """
    return 0

def t370160_x2():
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

def t370160_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t370160_x4(text5=_, z8=_, flag4=0, mode3=1):
    """ State 0,5 """
    assert t370160_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z8, 1)
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t370160_x5(text4=_, z7=73700102, flag3=0, mode2=1):
    """ State 0,5 """
    assert t370160_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z7, 1)
    """ State 6 """
    return 0

def t370160_x6(text2=_, flag2=0, mode1=1):
    """ State 0,4 """
    assert t370160_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t370160_x7(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t370160_x8(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t370160_x9(goods1=372, z6=12000005):
    """ State 0,2 """
    ClearQuantityValueOfChooseQuantityDialog()
    """ State 1 """
    OpenChooseQuantityDialog(goods1, z6)
    if GetValueFromNumberSelectDialog() >= 0:
        """ State 3,5 """
        return 0
    elif not (CheckSpecificPersonMenuIsOpen(13, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 4,6 """
        return 1

def t370160_x10():
    """ State 0,8 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        # action:15003004:Offerings
        AddTalkListData(2, 15003004, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008060) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008060) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008060) == 1, 12, 15015042, -1)
        
        # action:15000000:Talk
        AddTalkListData(3, 15000000, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 9 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 3 """
        if GetTalkListEntryResult() == 1:
            """ State 4,11 """
            assert t370160_x23()
        elif GetTalkListEntryResult() == 2:
            """ State 5,13 """
            c1111(21000, 21199)
            return 0
        elif GetTalkListEntryResult() == 3:
            """ State 7,12 """
            assert t370160_x24()
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008060, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012055, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012050, 0, 0, 0)
                GetItemFromItemLot(90050)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012051, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99012052, 0, 0, 0)
            return 0
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008060, 0)
            GetItemFromItemLot(91000)
            OpenGenericDialog(1, 99012052, 0, 0, 0)
            continue
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6,10 """
            assert t370160_x21()
            """ State 14 """
            return 0

def t370160_x11():
    """ State 0,1,2 """
    if not GetEventStatus(6750):
        """ State 4,5 """
        SetEventState(73700122, 1)
        def ExitPause():
            SetEventState(73700110, 0)
            SetEventState(73700122, 0)
        assert t370160_x22()
    else:
        """ State 3,6 """
        SetEventState(73700118, 1)
        SetEventState(73700122, 1)
        SetEventState(73700122, 1)
        def ExitPause():
            SetEventState(73700118, 0)
            SetEventState(73700122, 0)
            SetEventState(73700122, 0)
        assert t370160_x33()
    """ State 7 """
    return 0

def t370160_x12():
    """ State 0,9 """
    assert t370160_x2()
    """ State 4 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1096) and not GetEventStatus(1097)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,11 """
        call = t370160_x19()
        if call.Done():
            pass
        elif GetEventStatus(1096) == 1 or GetEventStatus(1097) == 1:
            """ State 3 """
            if GetDistanceToPlayer() < 10:
                """ State 7,12 """
                call = t370160_x20()
                if call.Done():
                    pass
                elif GetDistanceToPlayer() > 12:
                    """ State 10 """
                    Label('L0')
                    assert t370160_x2()
            elif not GetEventStatus(1096) and not GetEventStatus(1097):
                """ State 8 """
                pass
        elif GetDistanceToPlayer() > 12:
            Goto('L0')
    else:
        """ State 6 """
        pass
    """ State 13 """
    return 0

def t370160_x13():
    """ State 0,1 """
    if GetEventStatus(1098) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            if GetEventStatus(6750) == 1:
                """ State 7 """
                # talk:16002300:Dear brother, forgive me...
                call = t370160_x6(text2=16002300, flag2=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            else:
                """ State 8 """
                # talk:16001700:Dear brother, forgive me...
                call = t370160_x6(text2=16001700, flag2=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            """ State 6 """
            assert t370160_x2()
        else:
            """ State 5 """
            pass
    """ State 9 """
    Label('L0')
    return 0

def t370160_x14():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t370160_x21()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t370160_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t370160_x15():
    """ State 0,1 """
    while True:
        call = t370160_x17()
        assert not GetEventStatus(1095)
        """ State 2 """
        call = t370160_x18()
        assert GetEventStatus(1095) == 1

def t370160_x16():
    """ State 0,1 """
    assert t370160_x2()
    """ State 2 """
    return 0

def t370160_x17():
    """ State 0,2 """
    call = t370160_x28()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t370160_x13()

def t370160_x18():
    """ State 0 """

def t370160_x19():
    """ State 0,1 """
    if not GetEventStatus(73700146):
        """ State 5 """
        # talk:16001800: 
        assert t370160_x4(text5=16001800, z8=73700146, flag4=0, mode3=1)
    elif not GetEventStatus(73700147):
        """ State 6 """
        # talk:16001900: 
        assert t370160_x4(text5=16001900, z8=73700147, flag4=0, mode3=1)
    elif not GetEventStatus(73700148):
        """ State 7 """
        # talk:16002100:Please, stop this!
        assert t370160_x4(text5=16002100, z8=73700148, flag4=0, mode3=1)
        """ State 3 """
        if GetEventStatus(6750) == 1:
            pass
        else:
            """ State 4 """
            SetEventState(73700146, 0)
            SetEventState(73700147, 0)
            SetEventState(73700148, 0)
    else:
        """ State 8 """
        # talk:16002200:Thou'rt no true knight!
        assert t370160_x4(text5=16002200, z8=73700149, flag4=0, mode3=1)
        """ State 2 """
        SetEventState(73700146, 0)
        SetEventState(73700147, 0)
        SetEventState(73700148, 0)
        SetEventState(73700149, 0)
    """ State 9 """
    return 0

def t370160_x20():
    """ State 0,4 """
    if not GetEventStatus(6751):
        """ State 1,5 """
        # talk:16000000:Name thyself, stranger.
        assert t370160_x4(text5=16000000, z8=-1, flag4=0, mode3=1)
    elif not GetEventStatus(6752) and GetSelfHP() < 50:
        """ State 2,6 """
        # talk:16000000:Name thyself, stranger.
        assert t370160_x4(text5=16000000, z8=-1, flag4=0, mode3=1)
    else:
        """ State 3 """
        pass
    """ State 7 """
    return 0

def t370160_x21():
    """ State 0,1 """
    # talk:16000600:Off so soon?
    assert t370160_x6(text2=16000600, flag2=0, mode1=1)
    """ State 2 """
    return 0

def t370160_x22():
    """ State 0,7 """
    if not GetEventStatus(73700117):
        """ State 1 """
        if GetEventStatus(73700102) == 1:
            """ State 10 """
            # talk:16000300:Thou think'st to remain?
            assert t370160_x6(text2=16000300, flag2=0, mode1=1)
        else:
            """ State 9 """
            # talk:16000000:Name thyself, stranger.
            assert t370160_x6(text2=16000000, flag2=0, mode1=1)
        """ State 5 """
        ClearTalkListData()
        """ State 2 """
        # action:14006000:Perform Darkmoon Loyalty
        AddTalkListData(1, 14006000, -1)
        # action:14006001:Do nothing
        AddTalkListData(2, 14006001, -1)
        """ State 3 """
        OpenConversationChoicesMenu(0)
        """ State 4 """
        if GetTalkListEntryResult() == 1:
            """ State 6 """
            SetEventState(73700111, 0)
            SetEventState(73700112, 0)
            SetEventState(73700110, 0)
            """ State 15 """
            SetEventState(73700115, 1)
            def ExitPause():
                SetEventState(73700115, 0)
            assert t370160_x31()
            Goto('L0')
        elif GetTalkListEntryResult() == 2:
            """ State 8 """
            if not GetEventStatus(73700102):
                """ State 11 """
                # talk:16000200:If thou'st come stumbling here in error, I bid thee leave anon.
                assert t370160_x5(text4=16000200, z7=73700102, flag3=0, mode2=1)
            else:
                """ State 14 """
                # talk:16000310:May the Darkmoon watch over thee.
                assert t370160_x5(text4=16000310, z7=73700102, flag3=0, mode2=1)
        elif not GetTalkListEntryResult():
            pass
        """ State 17 """
        return 1
    else:
        pass
    """ State 13 """
    Label('L0')
    # talk:16000120:Thou'rt now a Blade of the Darkmoon.
    assert t370160_x4(text5=16000120, z8=73700117, flag4=0, mode3=1)
    """ State 12 """
    # lot:60600:Blade of the Darkmoon
    assert t370160_x7(lot1=60600)
    """ State 16 """
    return 0

def t370160_x23():
    """ State 0,6 """
    # action:12006001:Give <?gdsparam@2136?>?
    call = t370160_x0(action2=12006001)
    if call.Get() == 0:
        """ State 3 """
        # talk:16001200:Oh, this is...my brother's...finger.
        assert t370160_x6(text2=16001200, flag2=0, mode1=1)
        """ State 4 """
        # talk:16001300:Oh, my thanks. I'm certain thou'st given my brother peace.
        assert t370160_x4(text5=16001300, z8=73700106, flag4=0, mode3=1)
        """ State 5 """
        # lot:60640:Kukri
        assert t370160_x7(lot1=60640)
        """ State 1 """
        # goods:2136:Gwyndolin's Finger
        PlayerEquipmentQuantityChange(3, 2136, -1)
        """ State 2 """
        SetEventState(73700105, 1)
    elif call.Get() == 1:
        pass
    """ State 7 """
    return 0

def t370160_x24():
    """ State 0,1 """
    while True:
        if not GetEventStatus(73700130):
            """ State 9 """
            # talk:16000700:Long ago, our father Gwyn, lamenting the waning of the fire, became cinder of his own will.
            assert t370160_x6(text2=16000700, flag2=0, mode1=1)
            """ State 4 """
            SetEventState(73700130, 1)
        elif not GetEventStatus(73700131):
            """ State 10 """
            # talk:16000800:May I pose thee a question?
            assert t370160_x6(text2=16000800, flag2=0, mode1=1)
            """ State 7 """
            ClearTalkListData()
            """ State 2 """
            # action:14006010:Yes, I can fly
            AddTalkListData(1, 14006010, -1)
            # action:14006011:No, I can't fly
            AddTalkListData(2, 14006011, -1)
            """ State 3 """
            OpenConversationChoicesMenu(0)
            if GetTalkListEntryResult() == 1:
                """ State 11 """
                # talk:16000900:Oh, my! I imagined it might be so.
                assert t370160_x6(text2=16000900, flag2=0, mode1=1)
                """ State 5 """
                Label('L0')
                SetEventState(73700131, 1)
            elif GetTalkListEntryResult() == 2:
                """ State 12 """
                # talk:16001000:No, of course not.
                assert t370160_x6(text2=16001000, flag2=0, mode1=1)
                Goto('L0')
            elif not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
                pass
        elif GetEventStatus(6751) == 1 and not GetEventStatus(73700132):
            break
        else:
            """ State 8 """
            SetEventState(73700132, 0)
            SetEventState(73700130, 0)
            continue
        """ State 14 """
        Label('L1')
        return 0
    """ State 13 """
    # talk:16001100:The Darkmoon Knights were once led by my elder brother, the Dark Sun Gwyndolin.
    assert t370160_x6(text2=16001100, flag2=0, mode1=1)
    """ State 6 """
    SetEventState(73700132, 1)
    Goto('L1')

def t370160_x25():
    """ State 0,1 """
    # goods:372:Proof of a Concord Kept, talk:16002400:My Blade of the Darkmoon, thy deeds merit great worship., talk:16002500:My Blade of the Darkmoon, thy deeds merit great worship., lot:60610:Darkmoon Ring, lot:60630:Darkmoon Ring
    assert (t370160_x26(goods1=372, z1=12006000, z2=13006000, text1=16002400, text2=16002500, text3=16002550,
            z3=6751, flag1=6752, lot1=60610, lot2=60630, val1=99, z4=17, z5=24))
    """ State 2 """
    return 0

def t370160_x26(goods1=372, z1=12006000, z2=13006000, text1=16002400, text2=16002500, text3=16002550,
                z3=6751, flag1=6752, lot1=60610, lot2=60630, val1=99, z4=17, z5=24):
    """ State 0,1,11 """
    # goods:372:Proof of a Concord Kept
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 1:
        """ State 12,9 """
        SetWorkValue(0, GetPlayerStatus(z5))
        """ State 31 """
        call = t370160_x9(goods1=goods1, z6=12000005)
        if call.Get() == 0:
            """ State 3 """
            SetEventState(73700119, 1)
            """ State 16 """
            TurnCharacterToFaceEntity(20005, 3700700, 10000)
            """ State 19 """
            # goods:372:Proof of a Concord Kept
            PlayerEquipmentQuantityChange(3, goods1, -1 * GetValueFromNumberSelectDialog())
            """ State 18 """
            ChangePlayerStats(z4, 0, GetValueFromNumberSelectDialog() * 1)
            """ State 26 """
            AddRankingPoints(5, GetValueFromNumberSelectDialog())
            assert GetCurrentStateElapsedTime() > 3.5
            """ State 27 """
            if GetWorkValue(0) > 2:
                pass
            else:
                """ State 17 """
                if ComparePlayerStatus(z5, 2, GetWorkValue(0)):
                    """ State 7,28 """
                    # action:13000015:Covenant allegiance deepened. Rank gained.
                    assert t370160_x8(action1=13000015)
                    """ State 13 """
                    if ComparePlayerStatus(z5, 3, 1) == 1:
                        """ State 20,37 """
                        assert t370160_x6(text2=text1, flag2=0, mode1=1)
                        """ State 33 """
                        assert t370160_x7(lot1=lot1)
                        Goto('L0')
                    elif ComparePlayerStatus(z5, 3, 2) == 1:
                        """ State 21 """
                        pass
                    else:
                        """ State 22 """
                        if not GetEventStatus(flag1):
                            """ State 23 """
                            pass
                        else:
                            """ State 24 """
                            Goto('L0')
                    """ State 14,35 """
                    assert t370160_x6(text2=text2, flag2=0, mode1=1)
                    """ State 34 """
                    assert t370160_x7(lot1=lot2)
                    Goto('L0')
                else:
                    pass
            """ State 8,30 """
            # action:13000005:Covenant allegiance deepened
            assert t370160_x8(action1=13000005)
        elif call.Get() == 1:
            """ State 4 """
            pass
    else:
        """ State 5,29 """
        # action:13000035:No <?gdsparam@372?> in inventory
        assert t370160_x8(action1=13000035)
    """ State 38 """
    Label('L0')
    return 0

def t370160_x27():
    """ State 0,4 """
    assert GetEventStatus(73700123) == 1
    """ State 1 """
    if ComparePlayerStatus(24, 0, 1) == 1 and not GetEventStatus(6751):
        """ State 8 """
        # talk:16002400:My Blade of the Darkmoon, thy deeds merit great worship.
        assert t370160_x6(text2=16002400, flag2=0, mode1=1)
        """ State 6 """
        # lot:60610:Darkmoon Ring
        assert t370160_x7(lot1=60610)
    else:
        """ State 2 """
        if ComparePlayerStatus(24, 4, 2) == 1 and not GetEventStatus(6752):
            """ State 3,9 """
            # talk:16002500:My Blade of the Darkmoon, thy deeds merit great worship.
            assert t370160_x6(text2=16002500, flag2=0, mode1=1)
            """ State 7 """
            # lot:60630:Darkmoon Ring
            assert t370160_x7(lot1=60630)
        else:
            """ State 5 """
            # talk:16000500:Oh, good Blade of the Darkmoon, welcome home.
            assert t370160_x6(text2=16000500, flag2=0, mode1=1)
    """ State 11 """
    return 0

def t370160_x28():
    """ State 0,4 """
    while True:
        call = t370160_x29()
        if call.Done():
            """ State 2 """
            ClearPlayerDamageInfo()
            call = t370160_x11()
            if call.Done():
                continue
            elif IsAttackedBySomeone() == 1:
                pass
            elif GetDistanceToPlayer() > 5:
                """ State 3 """
                call = t370160_x14()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    continue
                elif IsAttackedBySomeone() == 1:
                    pass
            elif HasPlayerBeenAttacked() == 1:
                """ State 5 """
                assert t370160_x30()
                continue
        elif IsAttackedBySomeone() == 1:
            pass
        """ State 1 """
        def ExitPause():
            RemoveMyAggro()
        assert t370160_x12()

def t370160_x29():
    """ State 0,1 """
    if not GetEventStatus(6750):
        """ State 2 """
        assert t370160_x1(z9=6160, flag5=1095, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
    else:
        """ State 3 """
        assert t370160_x1(z9=6161, flag5=1095, flag6=6000, flag7=6000, flag8=6000, flag9=6000)
    """ State 4 """
    return 0

def t370160_x30():
    """ State 0,2 """
    assert t370160_x2()
    """ State 1 """
    SetEventState(73700118, 0)
    SetEventState(73700115, 0)
    SetEventState(73700122, 0)
    SetEventState(73700110, 0)
    """ State 3 """
    return 0

def t370160_x31():
    """ State 0,1 """
    call = t370160_x32()
    if call.Done():
        """ State 3 """
        return 0
    elif not GetEventStatus(73700115):
        """ State 2 """
        assert t370160_x2()
        """ State 4 """
        return 1

def t370160_x32():
    """ State 0,4 """
    assert GetEventStatus(73700116) == 1
    """ State 1 """
    assert GetCurrentStateElapsedTime() > 1.7000000000000002
    """ State 5 """
    SetEventState(73700122, 0)
    # talk:16000100:Thou think'st to-
    assert t370160_x6(text2=16000100, flag2=0, mode1=1)
    """ State 2 """
    SetEventState(73700110, 1)
    assert GetEventStatus(73700111) == 1
    """ State 6 """
    # talk:16000110:Thou'st journeyed far; hear my voice.
    assert t370160_x6(text2=16000110, flag2=0, mode1=1)
    """ State 3 """
    SetEventState(73700110, 0)
    assert GetEventStatus(73700112) == 1
    """ State 7 """
    return 0

def t370160_x33():
    """ State 0,1 """
    call = t370160_x34()
    if call.Done():
        pass
    elif not GetEventStatus(73700118):
        """ State 2 """
        assert t370160_x2()
    """ State 3 """
    return 0

def t370160_x34():
    """ State 0,1 """
    assert GetEventStatus(73700121) == 1
    """ State 2 """
    assert GetCurrentStateElapsedTime() > 1.7000000000000002
    """ State 4 """
    assert t370160_x27()
    """ State 3 """
    assert t370160_x10()
    """ State 5 """
    return 0

