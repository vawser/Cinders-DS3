# -*- coding: utf-8 -*-
def t400170_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t400170_x13()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t400170_x14()
        assert not IsClientPlayer()

def t400170_x0(actionbutton1=6000, flag8=1115, flag9=6000, flag10=6000, flag11=6000, flag12=6000):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 3"""
        assert (GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10) ==
                1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1)
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag8) and not GetEventStatus(flag9) and not GetEventStatus(flag10)
              and not GetEventStatus(flag11) and not GetEventStatus(flag12)):
            pass
        elif CheckActionButtonArea(actionbutton1):
            break
    """State 4"""
    return 0

def t400170_x1():
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

def t400170_x2():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

def t400170_x3(text1=_, z2=_, flag7=0, mode3=1):
    """State 0,5"""
    assert t400170_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 2"""
    SetEventState(z2, 1)
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode3:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

def t400170_x4(text3=_, flag3=_, flag6=0, mode2=1):
    """State 0,5"""
    assert t400170_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text3, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not mode2:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 2"""
    SetEventState(flag3, 1)
    """State 6"""
    return 0

def t400170_x5(text5=_, flag5=0, mode1=1):
    """State 0,4"""
    assert t400170_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text5, -1, -1, flag5)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t400170_x6(lot1=_):
    """State 0,1"""
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 2"""
    return 0

def t400170_x7(gesture2=25, z6=9026, flag4=6075):
    """State 0,1"""
    if GetEventStatus(flag4) == 1:
        """State 2"""
        pass
    else:
        """State 3,4"""
        AcquireGesture(gesture2)
        OpenItemAcquisitionMenu(3, z6, 1)
        SetEventState(flag4, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """State 5"""
    return 0

def t400170_x8():
    """State 0,13"""
    MainBonfireMenuFlag()
    while True:
        """State 1"""
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 2"""
        
        # Dragon Remnants
        AddTalkListData(1, 99062025, -1)
        
        # Learn Gesture
        AddTalkListDataIf(not GetEventStatus(25000302), 2, 99000960, -1)
        
        # Talk
        AddTalkListData(3, 15000000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        """State 11"""
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        """State 3"""
        # Dragon Remnants
        if GetTalkListEntryResult() == 1:
            """State 4"""
            assert t400170_x50()
        # Learn Gesture
        elif GetTalkListEntryResult() == 2:
            """State 5"""
            assert t400170_x26(gesture1=29, z1=9030, flag1=25000302)
            """State 6"""
            return 0
        # Talk
        elif GetTalkListEntryResult() == 3:
            """State 20,21"""
            if GetEventStatus(132) == 1 and GetEventStatus(74000801) == 1:
                """State 22"""
                if GetEventStatus(74000803) == 1 and (GetEventStatus(9303) == 1 or GetEventStatus(9306) == 1):
                    """State 23"""
                    if GetEventStatus(74000806) == 1 and GetEventStatus(9307) == 1:
                        """State 25"""
                        assert t400170_x23()
                    else:
                        """State 24"""
                        assert t400170_x18(z4=17000410)
                else:
                    """State 26"""
                    # talk:17000200:"Oooh, yet to give in, eh?", talk:17000300:"At the foot of Lothric Castle, an old path still runs below the tower in the Undead Settlement."
                    assert t400170_x17(text3=17000200, text4=17000300, flag3=74000802, z5=74000803)
            else:
                """State 27"""
                assert t400170_x24()
        else:
            """State 28"""
            return 0

def t400170_x9():
    """State 0,16"""
    assert t400170_x1() and GetCurrentStateElapsedFrames() > 1
    """State 1,8"""
    if not GetEventStatus(1116) and not GetEventStatus(1117):
        """State 9"""
        if GetDistanceToPlayer() < 10:
            """State 2"""
            if not GetEventStatus(74000842):
                """State 11,19"""
                # talk:17001320:"What is it, now!", talk:17002000:"What is it, now!"
                call = t400170_x19(text1=17001320, z2=74000842, z3=1116, flag2=1117, text2=17002000)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    """State 10"""
                    Label('L0')
                    """State 21"""
                    call = t400170_x20()
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 10:
                        """State 22"""
                        assert t400170_x1()
            else:
                """State 7,4"""
                SetEventState(74000840, 0)
                SetEventState(74000841, 0)
                SetEventState(74000842, 0)
                """State 20"""
                # talk:17001330:"Enough, you fool!", talk:17002100:"Are you mad?"
                call = t400170_x19(text1=17001330, z2=74000843, z3=1116, flag2=1117, text2=17002100)
                if call.Get() == 0:
                    pass
                elif call.Get() == 1:
                    Goto('L0')
        else:
            """State 3"""
            pass
    else:
        """State 12"""
        if GetDistanceToPlayer() < 10:
            """State 13"""
            if not GetEventStatus(74000848):
                Goto('L0')
            else:
                """State 15"""
                pass
        elif not GetEventStatus(1116) and not GetEventStatus(1117):
            """State 14"""
            pass
    """State 23"""
    return 0

def t400170_x10():
    """State 0,1"""
    if GetEventStatus(1118) == 1:
        """State 2"""
        pass
    else:
        """State 3"""
        if GetDistanceToPlayer() < 10:
            """State 4,7"""
            call = t400170_x21()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 6"""
                assert t400170_x1()
        else:
            """State 5"""
            pass
    """State 8"""
    return 0

def t400170_x11():
    """State 0,3"""
    if GetEventStatus(1116) == 1 or GetEventStatus(1117) == 1:
        """State 1"""
        if GetDistanceToPlayer() < 10:
            """State 4,6"""
            call = t400170_x22()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """State 7"""
                t400170_x1()
                Quit()
        else:
            """State 5"""
            pass
    else:
        """State 2"""
        pass
    """State 8"""
    return 0

def t400170_x12():
    """State 0,1,3,4"""
    assert t400170_x1()
    """State 6"""
    return 0

def t400170_x13():
    """State 0"""
    while True:
        """State 1"""
        call = t400170_x15()
        assert not GetEventStatus(1100) and not GetEventStatus(1101) and not GetEventStatus(1102)
        """State 2"""
        call = t400170_x16()
        assert GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1 or GetEventStatus(1102) == 1

def t400170_x14():
    """State 0,1"""
    assert t400170_x1()
    """State 2"""
    return 0

def t400170_x15():
    """State 0,2"""
    call = t400170_x25()
    assert CheckSelfDeath() == 1
    """State 1"""
    t400170_x10()
    Quit()

def t400170_x16():
    """State 0"""
    Quit()

def t400170_x17(text3=17000200, text4=17000300, flag3=74000802, z5=74000803):
    """State 0,1"""
    if not GetEventStatus(flag3):
        """State 2"""
        assert t400170_x4(text3=text3, flag3=flag3, flag6=0, mode2=1)
    else:
        """State 3"""
        assert t400170_x4(text3=text4, flag3=z5, flag6=0, mode2=1)
    """State 4"""
    return 0

def t400170_x18(z4=17000410):
    """State 0,2"""
    if not GetEventStatus(74000805):
        """State 1"""
        if not GetEventStatus(74000804):
            """State 3"""
            if not GetEventStatus(50006070):
                """State 8"""
                # talk:17000400:"You haven't given up yet? Then you're a brasher lad than I thought."
                assert t400170_x5(text5=17000400, flag5=0, mode1=1)
                """State 6"""
                # lot:60700:Heavy Gem
                assert t400170_x6(lot1=60700)
            else:
                """State 4"""
                pass
            """State 9"""
            # talk:17000410:"I don't need it. Not now I've flown the coop."
            assert t400170_x4(text3=17000410, flag3=74000804, flag6=0, mode2=1)
        else:
            """State 5"""
            # talk:17000500:"The Undead Legion of Farron is a caravan of Undead."
            assert t400170_x4(text3=17000500, flag3=74000805, flag6=0, mode2=1)
    else:
        """State 7"""
        # talk:17000600:"Gaining admission to the Legion is a matter of some ceremony."
        assert t400170_x4(text3=17000600, flag3=74000806, flag6=0, mode2=1)
    """State 10"""
    return 0

def t400170_x19(text1=_, z2=_, z3=1116, flag2=1117, text2=_):
    """State 0,1"""
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """State 3"""
        call = t400170_x3(text1=text1, z2=z2, flag7=0, mode3=1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 2"""
            Label('L0')
            assert t400170_x1()
        elif GetEventStatus(74000830) == 1 or GetEventStatus(flag2) == 1:
            """State 6"""
            Label('L1')
            return 1
    else:
        """State 4"""
        call = t400170_x3(text1=text2, z2=z2, flag7=0, mode3=1)
        if call.Done():
            pass
        elif GetEventStatus(74000830) == 1 or GetEventStatus(flag2) == 1:
            Goto('L1')
        elif GetDistanceToPlayer() > 12:
            Goto('L0')
    """State 5"""
    return 0

def t400170_x20():
    """State 0,1"""
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """State 2"""
        # talk:17001400:"What in bloody hell is wrong with you!"
        assert t400170_x3(text1=17001400, z2=74000848, flag7=0, mode3=1)
    else:
        """State 3"""
        # talk:17002200:"Lost your head, have you?"
        assert t400170_x3(text1=17002200, z2=74000848, flag7=0, mode3=1)
    """State 4"""
    return 0

def t400170_x21():
    """State 0,1"""
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """State 2"""
        # talk:17001500:" "
        assert t400170_x5(text5=17001500, flag5=0, mode1=1)
    else:
        """State 3"""
        # talk:17002400:"Go on, be as bloody mad as you like."
        assert t400170_x5(text5=17002400, flag5=0, mode1=1)
    """State 4"""
    return 0

def t400170_x22():
    """State 0,1"""
    if GetEventStatus(1100) == 1 or GetEventStatus(1101) == 1:
        """State 2"""
        # talk:17001600:"We'll never amount to anything, not you, not I..."
        assert t400170_x5(text5=17001600, flag5=0, mode1=1)
    else:
        """State 3"""
        # talk:17002500:"Who can deny the curse? You poor bastard."
        assert t400170_x5(text5=17002500, flag5=0, mode1=1)
    """State 4"""
    return 0

def t400170_x23():
    """State 0,2"""
    if not GetEventStatus(74000808):
        """State 1"""
        if not GetEventStatus(74000807):
            """State 3"""
            # talk:17000700:"You offed the Lords of Cinder, the Undead Legion..."
            assert t400170_x4(text3=17000700, flag3=74000807, flag6=0, mode2=1)
        else:
            """State 5"""
            # talk:17001000:"Ah, I failed to thank you."
            assert t400170_x4(text3=17001000, flag3=74000808, flag6=0, mode2=1)
            """State 6"""
            # lot:60720:Farron Ring
            assert t400170_x6(lot1=60720)
    else:
        """State 4"""
        # talk:17000800:" "
        assert t400170_x5(text5=17000800, flag5=0, mode1=1)
    """State 7"""
    return 0

def t400170_x24():
    """State 0,1"""
    if not GetEventStatus(74000800):
        """State 2"""
        if not GetEventStatus(6075):
            """State 6"""
            # talk:17000000:"Ahhh, another one, roused from the sleep of death?"
            assert t400170_x5(text5=17000000, flag5=0, mode1=1)
            """State 4"""
            assert t400170_x7(gesture2=25, z6=9026, flag4=6075)
            """State 5"""
            # talk:17000010:"Don't you think?"
            assert t400170_x4(text3=17000010, flag3=74000800, flag6=0, mode2=1)
        else:
            """State 7"""
            # talk:17000020:"Ahhh, another one, roused from the sleep of death?"
            assert t400170_x4(text3=17000020, flag3=74000800, flag6=0, mode2=1)
    else:
        """State 3"""
        # talk:17000100:"What a sick joke."
        assert t400170_x4(text3=17000100, flag3=74000801, flag6=0, mode2=1)
    """State 8"""
    return 0

def t400170_x25():
    """State 0"""
    while True:
        """State 5"""
        call = t400170_x0(actionbutton1=6000, flag8=1115, flag9=6000, flag10=6000, flag11=6000, flag12=6000)
        if call.Done():
            """State 3"""
            call = t400170_x8()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                """State 4"""
                call = t400170_x12()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    """State 1"""
                    Label('L0')
                    call = t400170_x9()
                    def ExitPause():
                        RemoveMyAggro()
                    if call.Done():
                        pass
                    elif IsPlayerDead() == 1:
                        break
            elif (IsAttackedBySomeone() == 1 or (GetEventStatus(1116) == 1 and not GetEventStatus(74000848)
                  and not GetEventStatus(74000849))):
                Goto('L0')
        elif (IsAttackedBySomeone() == 1 or (GetEventStatus(1116) == 1 and not GetEventStatus(74000848)
              and not GetEventStatus(74000849))):
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t400170_x11()
    Quit()

def t400170_x26(gesture1=29, z1=9030, flag1=25000302):
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

def t400170_x50():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Form Covenant
        AddTalkListDataIf(not IsEquipmentIDObtained(2, 10130) and not IsEquipmentIDObtained(2, 10131) and not IsEquipmentIDObtained(2, 10132) and not IsEquipmentIDObtained(2, 10133) and not IsEquipmentIDObtained(2, 10134),
                          1, 15003019, -1)
                          
        # View Inventory
        AddTalkListData(2, 99062003, -1)
        
        # aLeave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Form Covenant
        if GetTalkListEntryResult() == 1:
            GetItemFromItemLot(800001100)
            return 0
        # View Inventory
        elif GetTalkListEntryResult() == 2:
            """State 3"""
            OpenTranspositionShop(22700, 22799)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 14"""
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 15"""
            return 0

def t400170_x51(action2=99062004):
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

def t400170_x52(action1=_):
    """State 0,1"""
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

