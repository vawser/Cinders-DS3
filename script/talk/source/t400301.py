#-------------------------------------------
#-- Patches
#-------------------------------------------
# -*- coding: utf-8 -*-
def t400301_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400301_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400301_x14()
        assert not IsClientPlayer()

def t400301_x0(z5=6000, flag8=1375, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) ==
                1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag8) and not GetEventStatus(flag9) and not GetEventStatus(flag10)
              and not GetEventStatus(flag11) and not GetEventStatus(flag12)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400301_x1():
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

def t400301_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400301_x3(text1=_, z1=_, flag7=0, mode3=1):
    """ State 0,5 """
    assert t400301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400301_x4(text4=_, z4=_, flag6=0, mode2=1):
    """ State 0,5 """
    assert t400301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z4, 1)
    """ State 6 """
    return 0

def t400301_x5(text3=_, flag5=0, mode1=1):
    """ State 0,4 """
    assert t400301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text3, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400301_x6(lot1=62010):
    """ State 0,1 """
    # lot:62010:Rusted Gold Coin
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t400301_x7(z2=_, z3=_, flag4=_):
    """ State 0,1 """
    if GetEventStatus(flag4) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z2)
        OpenItemAcquisitionMenu(3, z3, 1)
        SetEventState(flag4, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t400301_x8():
    """ State 0,12 """
    if DoesSelfHaveSpEffect(159) == 1:
        """ State 25 """
        assert t400301_x7(z2=27, z3=9028, flag4=6077)
    else:
        pass
    """ State 1 """
    if (GetEventStatus(1204) == 1 and not GetEventStatus(74000924) and GetEventStatus(74000916) == 1
        and not GetEventStatus(73501010) and not GetEventStatus(73501020) and not GetEventStatus(73501030)
        and not GetEventStatus(73501040)):
        """ State 6 """
        Label('L0')
        """ State 26 """
        assert t400301_x27()
    else:
        """ State 5 """
        if GetEventStatus(1207) == 1 and not GetEventStatus(74000925) and GetEventStatus(74000916) == 1:
            Goto('L0')
        else:
            """ State 2 """
            if (GetEventStatus(74000914) == 1 and not GetEventStatus(74000927) and GetEventStatus(74000916)
                == 1):
                """ State 17 """
                # talk:30002400:Well, look at you. The luckiest man in the world.
                assert t400301_x5(text3=30002400, flag5=0, mode1=1)
            else:
                """ State 3 """
                if not GetEventStatus(74000913):
                    """ State 4 """
                    if not GetEventStatus(74000910) and not GetEventStatus(74000912):
                        """ State 10 """
                        if not GetEventStatus(74000911):
                            """ State 14 """
                            # talk:30001700:Ah, oh, you, you're alive...
                            assert t400301_x5(text3=30001700, flag5=0, mode1=1)
                            """ State 7 """
                            ClearTalkListData()
                            assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                                    2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
                            """ State 8 """
                            # action:14020010:Forgive him
                            AddTalkListData(1, 14020010, -1)
                            # action:14020011:Do not forgive him
                            AddTalkListData(2, 14020011, -1)
                            """ State 9 """
                            OpenConversationChoicesMenu(0)
                            if GetTalkListEntryResult() == 1:
                                """ State 20 """
                                # talk:30001800:Oh, fantastic! A wily second chance!
                                assert t400301_x4(text4=30001800, z4=74000910, flag6=0, mode2=1)
                            elif GetTalkListEntryResult() == 2:
                                """ State 21 """
                                # talk:30001900:Oh, for heaven's sake, no need to jest with a face like that.
                                assert t400301_x4(text4=30001900, z4=74000911, flag6=0, mode2=1)
                                """ State 13 """
                                SetEventState(74000919, 1)
                                """ State 22 """
                                # lot:62010:Rusted Gold Coin
                                assert t400301_x6(lot1=62010)
                                """ State 23 """
                                Label('L1')
                                SetEventState(74000916, 1)
                                # talk:30001950:We're just a couple of outcasts, let's make the best of it!
                                assert t400301_x4(text4=30001950, z4=74000912, flag6=0, mode2=1)
                                """ State 24 """
                                assert t400301_x7(z2=7, z3=9012, flag4=6057)
                            elif not GetTalkListEntryResult():
                                Goto('L2')
                        else:
                            Goto('L1')
                        """ State 11 """
                        SetEventState(74000916, 1)
                    else:
                        """ State 15 """
                        # talk:30002000:Oh, yes yes, what can I do?
                        assert t400301_x5(text3=30002000, flag5=0, mode1=1)
                else:
                    """ State 16 """
                    # talk:30002100:Oh, hello again. Welcome to Patches' boutique of wonders.
                    assert t400301_x5(text3=30002100, flag5=0, mode1=1)
            """ State 18 """
            ClearTalkActionState()
            assert t400301_x21()
            """ State 19 """
            assert t400301_x22()
    """ State 27 """
    Label('L2')
    return 0

def t400301_x9():
    """ State 0,16 """
    assert t400301_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1376) and not GetEventStatus(1377):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(74000947):
                """ State 11,19 """
                # talk:30004650:What's happened, friend?, talk:30003850:Oi, calm down, please!
                call = t400301_x17(text1=30004650, z1=74000947, flag1=1376, flag2=1377, text2=30003850)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t400301_x18()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t400301_x1()
            else:
                """ State 7,4 """
                SetEventState(74000945, 0)
                SetEventState(74000946, 0)
                SetEventState(74000947, 0)
                """ State 20 """
                # talk:30004750:Stop this! Stop this at once!, talk:30003950:Forgive me! I'm on my hands and knees!
                call = t400301_x17(text1=30004750, z1=74000948, flag1=1376, flag2=1377, text2=30003950)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
        else:
            """ State 3 """
            pass
    else:
        """ State 12 """
        if GetDistanceToPlayer() < 10:
            """ State 13 """
            if not GetEventStatus(74000949):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1376) and not GetEventStatus(1377):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t400301_x10():
    """ State 0,1 """
    if GetEventStatus(1378) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400301_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400301_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400301_x11():
    """ State 0,3 """
    if GetEventStatus(1376) == 1 or GetEventStatus(1377) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t400301_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t400301_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t400301_x12():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t400301_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400301_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t400301_x13():
    """ State 0,1 """
    while True:
        call = t400301_x15()
        assert not GetEventStatus(1365) and not GetEventStatus(1370)
        """ State 2 """
        call = t400301_x16()
        assert GetEventStatus(1365) == 1 or GetEventStatus(1370) == 1

def t400301_x14():
    """ State 0,1 """
    assert t400301_x1()
    """ State 2 """
    return 0

def t400301_x15():
    """ State 0,2 """
    call = t400301_x25()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400301_x10()

def t400301_x16():
    """ State 0 """

def t400301_x17(text1=_, z1=_, flag1=1376, flag2=1377, text2=_):
    """ State 0,2 """
    call = t400301_x26(text1=text1, z1=z1, text2=text2, flag3=74000919)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t400301_x1()
    elif GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1:
        """ State 4 """
        return 1
    """ State 3 """
    return 0

def t400301_x18():
    """ State 0,1 """
    if not GetEventStatus(1377):
        """ State 2 """
        if not GetEventStatus(74000919):
            """ State 3 """
            # talk:30004850:Gods' spit, I knew something was wrong!
            assert t400301_x3(text1=30004850, z1=74000949, flag7=0, mode3=1)
        else:
            """ State 5 """
            # talk:30004050:Damn, you heartless, good-for-nothing oaf!
            assert t400301_x3(text1=30004050, z1=74000949, flag7=0, mode3=1)
    else:
        """ State 4 """
        # talk:30006000:Rot in hell!
        assert t400301_x3(text1=30006000, z1=74000949, flag7=0, mode3=1)
    """ State 6 """
    return 0

def t400301_x19():
    """ State 0,2 """
    if GetEventStatus(74000918) == 1:
        """ State 5 """
        # talk:30004950: 
        assert t400301_x5(text3=30004950, flag5=0, mode1=1)
    else:
        """ State 1 """
        if not GetEventStatus(74000919):
            """ State 3 """
            # talk:30004950: 
            assert t400301_x5(text3=30004950, flag5=0, mode1=1)
        else:
            """ State 4 """
            # talk:30004150:What did I ever do, anyway?
            assert t400301_x5(text3=30004150, flag5=0, mode1=1)
    """ State 6 """
    return 0

def t400301_x20():
    """ State 0,2 """
    if GetEventStatus(1370) == 1:
        """ State 5 """
        # talk:30004250:Cough 'em up, every last one of 'em.
        assert t400301_x5(text3=30004250, flag5=0, mode1=1)
    else:
        """ State 1 """
        if not GetEventStatus(74000919):
            """ State 3 """
            # talk:30005050:Close call, blimey...
            assert t400301_x5(text3=30005050, flag5=0, mode1=1)
        else:
            """ State 4 """
            # talk:30004250:Cough 'em up, every last one of 'em.
            assert t400301_x5(text3=30004250, flag5=0, mode1=1)
    """ State 6 """
    return 0

def t400301_x21():
    """ State 0,1 """
    while True:
        """ State 2 """
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        # action:15010004:Purchase Item
        AddTalkListData(1, 15010004, -1)
        # action:15000012:Sell Item
        AddTalkListDataIf(GetEventStatus(25000055) == 0, 2, 15000012, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008170) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008170) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008170) == 1, 12, 15015042, -1)
        
        # action:15000000:Talk
        AddTalkListData(3, 15000000, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 4 """
        ShowShopMessage(1)
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6 """
            OpenRegularShop(200000, 209999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """ State 7 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 8 """
            assert t400301_x24()
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008170, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            assert t400301_x5(text3=10115030, flag5=0, mode1=0)
            continue
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                assert t400301_x5(text3=10115000, flag5=0, mode1=0)
                GetItemFromItemLot(90160)
            # Neutral
            elif GetEventStatus(25008901):
                assert t400301_x5(text3=10115010, flag5=0, mode1=0)
            # Bad
            elif GetEventStatus(25008902):
                assert t400301_x5(text3=10115020, flag5=0, mode1=0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            assert t400301_x5(text3=10115020, flag5=0, mode1=0)
            SetEventState(25008170, 0)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 9 """
            return 0

def t400301_x22():
    """ State 0,3 """
    if not GetEventStatus(74000914):
        """ State 1 """
        if DidYouDoSomethingInTheMenu(11) == 1:
            """ State 8 """
            # talk:30002200:Thanks, good compeer.
            assert t400301_x5(text3=30002200, flag5=0, mode1=1)
        else:
            """ State 9 """
            # talk:30002300:Can't find anything you like?
            assert t400301_x5(text3=30002300, flag5=0, mode1=1)
    else:
        """ State 2 """
        if DidYouDoSomethingInTheMenu(11) == 1:
            """ State 5 """
            if GetEventStatus(73501070) == 1:
                """ State 11 """
                # talk:30002500:What do you say? Brilliant stuff, eh?
                assert t400301_x5(text3=30002500, flag5=0, mode1=1)
                """ State 4 """
                SetEventState(74000914, 0)
            else:
                """ State 12 """
                # talk:30002200:Thanks, good compeer.
                assert t400301_x5(text3=30002200, flag5=0, mode1=1)
        else:
            """ State 7 """
            if not GetEventStatus(74000927):
                """ State 10 """
                # talk:30002600:Now, just wait, that's the best you can do? Bloody hell.
                assert t400301_x5(text3=30002600, flag5=0, mode1=1)
            else:
                """ State 13 """
                # talk:30002300:Can't find anything you like?
                assert t400301_x5(text3=30002300, flag5=0, mode1=1)
                Goto('L0')
        """ State 6 """
        SetEventState(74000927, 1)
    """ State 14 """
    Label('L0')
    return 0

def t400301_x23():
    """ State 0,1 """
    ClearTalkListData()
    """ State 2 """
    # action:14020020:Tell him
    AddTalkListData(1, 14020020, -1)
    # action:14020021:Don't tell him
    AddTalkListData(2, 14020021, -1)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    if GetTalkListEntryResult() == 1:
        """ State 5 """
        if GetEventStatus(1204) == 1:
            """ State 8 """
            # talk:30002900:What? Gone all the way to Irithyll, has he?
            assert t400301_x4(text4=30002900, z4=74000920, flag6=0, mode2=1)
        else:
            """ State 9 """
            # talk:30003100:Hmph. Off to Lothric, the castle of no return...
            assert t400301_x4(text4=30003100, z4=74000921, flag6=0, mode2=1)
    elif GetTalkListEntryResult() == 2:
        """ State 4 """
        if GetEventStatus(1204) == 1:
            """ State 6 """
            # talk:30003300:Right, yes, I see how it is.
            assert t400301_x4(text4=30003300, z4=74000922, flag6=0, mode2=1)
        else:
            """ State 7 """
            # talk:30003300:Right, yes, I see how it is.
            assert t400301_x4(text4=30003300, z4=74000923, flag6=0, mode2=1)
    elif not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
        pass
    """ State 10 """
    return 0

def t400301_x24():
    """ State 0,1,2,3,5,4 """
    if GetEventStatus(1215) == 1:
        """ State 7 """
        if GetEventStatus(1201) == 1 or GetEventStatus(1203) == 1 or GetEventStatus(1206) == 1:
            """ State 12 """
            SetEventState(70000402, 1)
            # talk:30002700:Ahh, I see you've met Greirat.
            assert t400301_x5(text3=30002700, flag5=0, mode1=1)
        else:
            """ State 13 """
            Label('L0')
            # talk:30002650:We're just a couple of outcasts, let's make the best of it!
            assert t400301_x5(text3=30002650, flag5=0, mode1=1)
    else:
        Goto('L0')
    """ State 14 """
    return 0

def t400301_x25():
    """ State 0,5 """
    while True:
        call = t400301_x0(z5=6000, flag8=1375, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
        if call.Done():
            """ State 3 """
            call = t400301_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t400301_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t400301_x9()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1376) == 1 and not GetEventStatus(74000949)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1377) == 1 and not GetEventStatus(74000949)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400301_x11()

def t400301_x26(text1=_, z1=_, text2=_, flag3=74000919):
    """ State 0,1 """
    if not GetEventStatus(flag3):
        """ State 2 """
        assert t400301_x3(text1=text1, z1=z1, flag7=0, mode3=1)
    else:
        """ State 3 """
        assert t400301_x3(text1=text2, z1=z1, flag7=0, mode3=1)
    """ State 4 """
    return 0

def t400301_x27():
    """ State 0,4 """
    if GetEventStatus(74000920) == 1 and GetEventStatus(1204) == 1:
        """ State 9 """
        # talk:30003000:The old rat, he's gone off the deep end this time...
        assert t400301_x5(text3=30003000, flag5=0, mode1=1)
    else:
        """ State 5 """
        if GetEventStatus(74000921) == 1 and GetEventStatus(1207) == 1 and not GetEventStatus(74000925):
            """ State 10 """
            # talk:30003200:That old thief, he's really lost it this time...
            assert t400301_x5(text3=30003200, flag5=0, mode1=1)
        else:
            """ State 1 """
            if GetEventStatus(74000922) == 1 and GetEventStatus(1204) == 1:
                """ State 3 """
                Label('L0')
                """ State 8 """
                # talk:30003400:Well? Happen to recall anything important?
                assert t400301_x5(text3=30003400, flag5=0, mode1=1)
            else:
                """ State 2 """
                if GetEventStatus(74000923) == 1 and GetEventStatus(1207) == 1 and not GetEventStatus(74000925):
                    Goto('L0')
                else:
                    """ State 7 """
                    # talk:30002800:Hey, what happened to Greirat, anyhow?
                    assert t400301_x5(text3=30002800, flag5=0, mode1=1)
            """ State 6 """
            assert t400301_x23()
    """ State 11 """
    return 0

