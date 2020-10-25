# -*- coding: utf-8 -*-
def t350301_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t350301_x13()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t350301_x14()
        assert not IsClientPlayer()

def t350301_x0(z5=6000, flag8=1375, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
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

def t350301_x1():
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

def t350301_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t350301_x3(text1=_, z1=_, flag7=0, mode3=1):
    """ State 0,5 """
    assert t350301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350301_x4(text4=_, z4=_, flag6=0, mode2=1):
    """ State 0,5 """
    assert t350301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350301_x5(text3=_, flag5=0, mode1=1):
    """ State 0,4 """
    assert t350301_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t350301_x6(lot1=62000):
    """ State 0,1 """
    # lot:62000:Rusted Coin
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t350301_x7(z2=7, z3=9012, flag4=6057):
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

def t350301_x8():
    """ State 0,1 """
    if not GetEventStatus(73500264):
        """ State 2 """
        if not GetEventStatus(73500262) and not GetEventStatus(73500263):
            """ State 3 """
            if not GetEventStatus(73500260):
                """ State 12 """
                # talk:30000500:Oh, yes, oh, hello, I don't believe we've met.
                assert t350301_x5(text3=30000500, flag5=0, mode1=1)
                """ State 4 """
                ClearTalkListData()
                """ State 5 """
                # action:14020000:You know who I am.
                AddTalkListData(1, 14020000, -1)
                # action:14020001:No
                AddTalkListData(2, 14020001, -1)
                """ State 6 """
                OpenConversationChoicesMenu(0)
                if not GetTalkListEntryResult():
                    pass
                elif GetTalkListEntryResult() == 1:
                    """ State 13 """
                    # talk:30000600:Ah, oh, yes, of course...It's coming back to me, now.
                    assert t350301_x4(text4=30000600, z4=73500260, flag6=0, mode2=1)
                    """ State 11 """
                    SetEventState(73500267, 1)
                    """ State 22 """
                    assert t350301_x7(z2=7, z3=9012, flag4=6057)
                elif GetTalkListEntryResult() == 2:
                    """ State 14 """
                    # talk:30001200:Of course not, we have just met, after all.
                    assert t350301_x4(text4=30001200, z4=73500263, flag6=0, mode2=1)
                    """ State 10 """
                    SetEventState(73500265, 1)
                    """ State 15 """
                    Label('L0')
                    ClearTalkActionState()
                    assert t350301_x21()
                    """ State 21 """
                    assert t350301_x22()
            else:
                """ State 7 """
                if not GetEventStatus(73500261):
                    """ State 16 """
                    # talk:30000700:Oh, ahh, yes, now, it wasn't me, but you still deserve an apology.
                    assert t350301_x4(text4=30000700, z4=73500261, flag6=0, mode2=1)
                    """ State 18 """
                    # lot:62000:Rusted Coin
                    assert t350301_x6(lot1=62000)
                else:
                    """ State 8 """
                    pass
                """ State 17 """
                # talk:30000750: 
                assert t350301_x4(text4=30000750, z4=73500262, flag6=0, mode2=1)
                """ State 9 """
                SetEventState(73500265, 1)
                Goto('L0')
        else:
            """ State 19 """
            # talk:30000800:Oh, yes, yes, what can I do?
            assert t350301_x5(text3=30000800, flag5=0, mode1=1)
            Goto('L0')
    else:
        """ State 20 """
        # talk:30000900:Oh, hello again. Welcome to Patches' boutique of wonders.
        assert t350301_x5(text3=30000900, flag5=0, mode1=1)
        Goto('L0')
    """ State 23 """
    return 0

def t350301_x9():
    """ State 0,16 """
    assert t350301_x1() and GetCurrentStateElapsedFrames() > 1
    """ State 1,8 """
    if not GetEventStatus(1376) and not GetEventStatus(1377):
        """ State 9 """
        if GetDistanceToPlayer() < 10:
            """ State 2 """
            if not GetEventStatus(73500297):
                """ State 11,19 """
                # talk:30004600:What's happened, friend?, talk:30003800:Oi, calm down, please!
                call = t350301_x17(text1=30004600, z1=73500297, flag1=1376, flag2=1377, text2=30003800)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """ State 10 """
                    Label('L0')
                    """ State 21 """
                    call = t350301_x18()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """ State 22 """
                        assert t350301_x1()
            else:
                """ State 7,4 """
                SetEventState(73500295, 0)
                SetEventState(73500296, 0)
                SetEventState(73500297, 0)
                """ State 20 """
                # talk:30004700:Stop this! Stop this at once!, talk:30003900:Forgive me! I'm on my hands and knees!
                call = t350301_x17(text1=30004700, z1=73500298, flag1=1376, flag2=1377, text2=30003900)
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
            if not GetEventStatus(73500299):
                Goto('L0')
            else:
                """ State 15 """
                pass
        elif not GetEventStatus(1376) and not GetEventStatus(1377):
            """ State 14 """
            pass
    """ State 23 """
    return 0

def t350301_x10():
    """ State 0,1 """
    if GetEventStatus(1378) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t350301_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t350301_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t350301_x11():
    """ State 0,3 """
    if GetEventStatus(1376) == 1 or GetEventStatus(1377) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,6 """
            call = t350301_x20()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 7 """
                t350301_x1()
                Quit()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t350301_x12():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t350301_x22()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t350301_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t350301_x13():
    """ State 0,1 """
    while True:
        call = t350301_x15()
        assert not GetEventStatus(1362)
        """ State 2 """
        call = t350301_x16()
        assert GetEventStatus(1362) == 1

def t350301_x14():
    """ State 0,1 """
    assert t350301_x1()
    """ State 2 """
    return 0

def t350301_x15():
    """ State 0,2 """
    call = t350301_x23()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t350301_x10()

def t350301_x16():
    """ State 0 """

def t350301_x17(text1=_, z1=_, flag1=1376, flag2=1377, text2=_):
    """ State 0,2 """
    call = t350301_x24(text1=text1, text2=text2, z1=z1, flag3=73500267)
    if call.Done():
        pass
    elif GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1:
        """ State 4 """
        return 1
    elif GetDistanceToPlayer() > 12:
        """ State 1 """
        assert t350301_x1()
    """ State 3 """
    return 0

def t350301_x18():
    """ State 0,1 """
    if not GetEventStatus(73500267):
        """ State 2 """
        # talk:30004800:Gods' spit, I knew something was wrong!
        assert t350301_x3(text1=30004800, z1=73500299, flag7=0, mode3=1)
    else:
        """ State 3 """
        # talk:30004000:Damn, you heartless, good-for-nothing oaf!
        assert t350301_x3(text1=30004000, z1=73500299, flag7=0, mode3=1)
    """ State 4 """
    return 0

def t350301_x19():
    """ State 0,1 """
    if not GetEventStatus(73500267):
        """ State 2 """
        # talk:30004900: 
        assert t350301_x5(text3=30004900, flag5=0, mode1=1)
    else:
        """ State 3 """
        # talk:30004100:What did I ever do, anyway?
        assert t350301_x5(text3=30004100, flag5=0, mode1=1)
    """ State 4 """
    return 0

def t350301_x20():
    """ State 0,1 """
    if not GetEventStatus(73500267):
        """ State 2 """
        # talk:30005000:Close call, blimey...
        assert t350301_x5(text3=30005000, flag5=0, mode1=1)
    else:
        """ State 3 """
        # talk:30004200:Cough 'em up, every last one of 'em.
        assert t350301_x5(text3=30004200, flag5=0, mode1=1)
    """ State 4 """
    return 0

def t350301_x21():
    """ State 0,1 """
    while True:
        """ State 2 """
        ClearTalkListData()
        """ State 3 """
        # action:15010004:Purchase Item
        AddTalkListData(1, 15010004, -1)
        # action:15000012:Sell Item
        AddTalkListData(2, 15000012, -1)
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
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 8 """
            return 0

def t350301_x22():
    """ State 0,1 """
    if DidYouDoSomethingInTheMenu(11) == 1:
        """ State 2 """
        # talk:30001000:Thanks, good compeer.
        assert t350301_x5(text3=30001000, flag5=0, mode1=1)
    else:
        """ State 3 """
        # talk:30001100:Can't find anything you like?
        assert t350301_x5(text3=30001100, flag5=0, mode1=1)
    """ State 4 """
    return 0

def t350301_x23():
    """ State 0,5 """
    while True:
        call = t350301_x0(z5=6000, flag8=1375, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
        if call.Done():
            """ State 3 """
            call = t350301_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """ State 4 """
                call = t350301_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """ State 1 """
                    Label('L0')
                    call = t350301_x9()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif IsAttackedBySomeone() == 1 or (GetEventStatus(1376) == 1 and not GetEventStatus(73500299)):
                Goto('L0')
        elif IsAttackedBySomeone() == 1 or (GetEventStatus(1376) == 1 and not GetEventStatus(73500299)):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t350301_x11()

def t350301_x24(text1=_, text2=_, z1=_, flag3=73500267):
    """ State 0,1 """
    if not GetEventStatus(flag3):
        """ State 2 """
        assert t350301_x3(text1=text1, z1=z1, flag7=0, mode3=1)
    else:
        """ State 3 """
        assert t350301_x3(text1=text2, z1=z1, flag7=0, mode3=1)
    """ State 4 """
    return 0

