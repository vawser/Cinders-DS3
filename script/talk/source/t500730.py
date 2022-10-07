# -*- coding: utf-8 -*-
def t500730_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t500730_x28()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t500730_x29()
        assert not IsClientPlayer()

def t500730_x0(flag3=1810):
    """ State 0,1 """
    if GetEventStatus(1800) == 1:
        """ State 2 """
        assert t500730_x14()
    elif (GetEventStatus(1801) == 1 or GetEventStatus(1802) == 1 or GetEventStatus(1805) == 1 or GetEventStatus(1806)
          == 1):
        """ State 3 """
        assert t500730_x15()
    elif GetEventStatus(1807) == 1:
        """ State 4 """
        assert t500730_x16()
    elif GetEventStatus(1808) == 1:
        """ State 5 """
        assert t500730_x17()
    elif GetEventStatus(flag3) == 1:
        """ State 6 """
        assert t500730_x18()
    else:
        pass
    """ State 7 """
    return 0

def t500730_x1(flag1=75000120, flag2=75000121, z1=75000121, z2=75000121, flag3=1810):
    """ State 0,9 """
    assert t500730_x21()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if not GetEventStatus(1816) and not GetEventStatus(1817):
        """ State 2 """
        if GetDistanceToPlayer() < 10:
            """ State 5,11 """
            call = t500730_x11(flag2=flag2, z1=z1, z2=z2, flag3=flag3)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 10 """
                Label('L0')
                assert t500730_x21()
            elif GetEventStatus(1816) == 1 or GetEventStatus(1817) == 1:
                """ State 6 """
                Label('L1')
                if GetDistanceToPlayer() < 10 and GetPlayerYDistance() < 4.9:
                    """ State 7,12 """
                    call = t500730_x12(flag1=flag1, flag3=flag3)
                    if call.Done():
                        pass
                    elif GetDistanceToPlayer() > 12 or GetPlayerYDistance() > 5:
                        Goto('L0')
                elif not GetEventStatus(1816) and not GetEventStatus(1817):
                    """ State 8 """
                    pass
        else:
            """ State 4 """
            pass
    else:
        Goto('L1')
    """ State 13 """
    return 0

def t500730_x2(flag5=1810):
    """ State 0,1 """
    if GetEventStatus(1818) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t500730_x10(flag5=flag5)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t500730_x21()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t500730_x3(flag3=1810):
    """ State 0,3 """
    if GetEventStatus(1816) == 1 or GetEventStatus(1817) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t500730_x13(flag3=flag3)
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t500730_x21()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t500730_x4():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t500730_x21()
    """ State 5 """
    return 0

def t500730_x5(flag1=75000120, flag2=75000121, z1=75000121, z2=75000121):
    """ State 0,2 """
    call = t500730_x9(flag1=flag1, flag2=flag2, z1=z1, z2=z2, flag3=1810)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t500730_x2(flag5=1810)

def t500730_x6():
    """ State 0,1 """
    assert t500730_x21()
    """ State 2 """
    return 0

def t500730_x7(flag2=75000121, z1=75000121, z2=75000121, text2=_, text3=_):
    """ State 0,1 """
    if not GetEventStatus(flag2):
        """ State 3 """
        assert t500730_x23(text5=text2, flag1=flag2, flag8=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(flag2, 0)
        """ State 4 """
        assert t500730_x25(text1=text3, flag6=0, mode1=1)
    """ State 5 """
    return 0

def t500730_x8(flag1=75000120, text5=_):
    """ State 0,3 """
    if not GetEventStatus(flag1):
        """ State 1,4 """
        assert t500730_x23(text5=text5, flag1=flag1, flag8=0, mode3=1)
    else:
        """ State 2 """
        pass
    """ State 5 """
    return 0

def t500730_x9(flag1=75000120, flag2=75000121, z1=75000121, z2=75000121, flag3=1810):
    """ State 0,5 """
    while True:
        call = t500730_x20(z7=6830, flag9=1815, flag10=6000, flag11=6000, flag12=6000, flag13=6000)
        if call.Done():
            """ State 3 """
            call = t500730_x0(flag3=flag3)
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t500730_x1(flag1=flag1, flag2=flag2, z1=z1, z2=z2, flag3=flag3)
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
                call = t500730_x4()
                if call.Done():
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
                elif GetEventStatus(1816) == 1 and not GetEventStatus(flag1):
                    Goto('L0')
            elif GetEventStatus(1816) == 1 and not GetEventStatus(flag1):
                Goto('L0')
            elif GetEventStatus(1807) == 1 and GetEventStatus(1815) == 1 and GetEventStatus(75100234) == 1:
                """ State 6 """
                Label('L1')
                call = t500730_x21()
                if call.Done() and (not GetEventStatus(1807) or not GetEventStatus(1815) or not GetEventStatus(75100234)):
                    pass
                elif (call.Done() and (IsAttackedBySomeone() == 1 or (GetEventStatus(1816) == 1 and not
                      GetEventStatus(flag1)))):
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif GetEventStatus(1816) == 1 and not GetEventStatus(flag1):
            Goto('L0')
        elif GetEventStatus(1807) == 1 and GetEventStatus(1815) == 1 and GetEventStatus(75100234) == 1:
            Goto('L1')
    """ State 2 """
    t500730_x3(flag3=flag3)

def t500730_x10(flag5=1810):
    """ State 0,1 """
    if GetEventStatus(flag5) == 1:
        """ State 3 """
        assert t500730_x25(text1=83002800, flag6=0, mode1=1)
    else:
        """ State 2 """
        assert t500730_x25(text1=83002400, flag6=0, mode1=1)
    """ State 4 """
    return 0

def t500730_x11(flag2=75000121, z1=75000121, z2=75000121, flag3=1810):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 3 """
        assert t500730_x7(flag2=flag2, z1=z1, z2=z2, text2=83002600, text3=83002610)
    else:
        """ State 2 """
        assert t500730_x7(flag2=flag2, z1=z1, z2=z2, text2=83002200, text3=83002210)
    """ State 4 """
    return 0

def t500730_x12(flag1=75000120, flag3=1810):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 3 """
        assert t500730_x8(flag1=flag1, text5=83002700)
    else:
        """ State 2 """
        assert t500730_x8(flag1=flag1, text5=83002300)
    """ State 4 """
    return 0

def t500730_x13(flag3=1810):
    """ State 0,1 """
    if GetEventStatus(flag3) == 1:
        """ State 3 """
        assert t500730_x25(text1=83002900, flag6=0, mode1=1)
    else:
        """ State 2 """
        assert t500730_x25(text1=83002500, flag6=0, mode1=1)
    """ State 4 """
    return 0

def t500730_x14():
    """ State 0,1 """
    if not GetEventStatus(75000100):
        """ State 3 """
        assert t500730_x24(text4=83000000, z6=75000100, flag7=0, mode2=1)
    else:
        """ State 2 """
        if not GetEventStatus(75000101):
            """ State 4 """
            assert t500730_x24(text4=83000100, z6=75000101, flag7=0, mode2=1)
        else:
            """ State 5 """
            assert t500730_x25(text1=83000200, flag6=0, mode1=1)
    """ State 6 """
    return 0

def t500730_x15():
    """ State 0,1 """
    if GetEventStatus(15000703) == 1:
        """ State 7 """
        if not GetEventStatus(50006621):
            """ State 15 """
            assert t500730_x24(text4=83000700, z6=75000104, flag7=0, mode2=1)
        else:
            """ State 14 """
            Label('L0')
            assert t500730_x25(text1=83000800, flag6=0, mode1=1)
    else:
        """ State 2 """
        if GetEventStatus(55000910) == 1:
            """ State 5 """
            if not GetEventStatus(50006620):
                """ State 11 """
                assert t500730_x25(text1=83000600, flag6=0, mode1=1)
                """ State 12 """
                # lot:66200:Siegbräu
                assert t500730_x26(lot1=66200)
            else:
                """ State 6 """
                if not GetEventStatus(75000104):
                    pass
                else:
                    Goto('L0')
            """ State 13 """
            assert t500730_x24(text4=83000650, z6=75000104, flag7=0, mode2=1)
        else:
            """ State 3 """
            if not GetEventStatus(75000102):
                """ State 8 """
                assert t500730_x24(text4=83000300, z6=75000102, flag7=0, mode2=1)
            else:
                """ State 4 """
                if not GetEventStatus(75000103):
                    """ State 9 """
                    assert t500730_x24(text4=83000400, z6=75000103, flag7=0, mode2=1)
                else:
                    """ State 10 """
                    assert t500730_x25(text1=83000500, flag6=0, mode1=1)
    """ State 17 """
    return 0

def t500730_x16():
    """ State 0,1 """
    if not GetEventStatus(50006622):
        """ State 10 """
        assert t500730_x25(text1=83000900, flag6=0, mode1=1)
        """ State 5 """
        # lot:66220:Siegbräu
        assert t500730_x26(lot1=66220)
        """ State 6 """
        Label('L0')
        assert t500730_x25(text1=83000950, flag6=1, mode1=1)
        """ State 4 """
        SetEventState(75100235, 1)
        def WhilePaused():
            SetTalkTime(0.1)
        assert GetCurrentStateElapsedTime() > 1.4
        """ State 7 """
        assert t500730_x24(text4=83000970, z6=75100200, flag7=1, mode2=1)
        """ State 11 """
        assert t500730_x27(z3=33, z4=9034, flag4=6083)
    else:
        """ State 2 """
        if not GetEventStatus(75100200):
            Goto('L0')
        else:
            """ State 3 """
            if not GetEventStatus(75100201):
                """ State 8 """
                assert t500730_x24(text4=83001000, z6=75100201, flag7=0, mode2=1)
            else:
                """ State 9 """
                assert t500730_x25(text1=83001100, flag6=0, mode1=1)
    """ State 12 """
    return 0

def t500730_x17():
    """ State 0,1 """
    if not GetEventStatus(75100205):
        """ State 2 """
        if GetEventStatus(75100232) == 1:
            """ State 11 """
            assert t500730_x19(text1=83001500, z5=75100204)
        else:
            """ State 3 """
            if GetEventStatus(75100231) == 1:
                """ State 10 """
                assert t500730_x19(text1=83001400, z5=75100203)
            else:
                """ State 4 """
                if not GetEventStatus(75100202):
                    """ State 8 """
                    assert t500730_x19(text1=83001200, z5=75100202)
                else:
                    """ State 9 """
                    assert t500730_x19(text1=83001300, z5=75100202)
    else:
        """ State 5 """
        if not GetEventStatus(75100206):
            """ State 6 """
            assert t500730_x24(text4=83001700, z6=75100206, flag7=0, mode2=1)
        else:
            """ State 7 """
            assert t500730_x25(text1=83001800, flag6=0, mode1=1)
    """ State 12 """
    return 0

def t500730_x18():
    """ State 0,2 """
    if DoesSelfHaveSpEffect(159) == 1:
        """ State 5 """
        assert t500730_x27(z3=27, z4=9028, flag4=6077)
    else:
        pass
    """ State 1 """
    if not GetEventStatus(75100207):
        """ State 3 """
        assert t500730_x24(text4=83001900, z6=75100207, flag7=0, mode2=1)
    else:
        """ State 4 """
        assert t500730_x25(text1=83002000, flag6=0, mode1=1)
    """ State 6 """
    return 0

def t500730_x19(text1=_, z5=_):
    """ State 0,8 """
    assert t500730_x25(text1=text1, flag6=0, mode1=1)
    """ State 1 """
    ClearTalkListData()
    assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
            and not CheckSpecificPersonGenericDialogIsOpen(2))
    """ State 2 """
    AddTalkListDataIf(GetEventStatus(75100233) == 1, 1, 14073000, -1)
    AddTalkListDataIf(not GetEventStatus(75100202), 2, 14073001, -1)
    AddTalkListDataIf(GetEventStatus(75100202) == 1, 2, 14073002, -1)
    """ State 3 """
    OpenConversationChoicesMenu(0)
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
    """ State 4 """
    if GetTalkListEntryResult() == 1:
        """ State 7 """
        assert t500730_x24(text4=83001600, z6=75100205, flag7=0, mode2=1)
        """ State 5 """
        Label('L0')
        SetEventState(z5, 1)
    elif GetTalkListEntryResult() == 2:
        """ State 6 """
        if not GetEventStatus(75100202):
            """ State 9 """
            assert t500730_x25(text1=83001300, flag6=0, mode1=1)
            Goto('L0')
        else:
            Goto('L0')
    else:
        pass
    """ State 10 """
    return 0

def t500730_x20(z7=6830, flag9=1815, flag10=6000, flag11=6000, flag12=6000, flag13=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag9) == 1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) ==
                1 or GetEventStatus(flag12) == 1 or GetEventStatus(flag13) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag9) and not GetEventStatus(flag10) and not GetEventStatus(flag11)
              and not GetEventStatus(flag12) and not GetEventStatus(flag13)):
            pass
        elif CheckActionButtonArea(z7):
            break
    """ State 4 """
    return 0

def t500730_x21():
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

def t500730_x22():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t500730_x23(text5=_, flag1=_, flag8=0, mode3=1):
    """ State 0,5 """
    assert t500730_x22() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag8)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t500730_x24(text4=_, z6=_, flag7=_, mode2=1):
    """ State 0,5 """
    assert t500730_x22() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag7)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z6, 1)
    """ State 6 """
    return 0

def t500730_x25(text1=_, flag6=_, mode1=1):
    """ State 0,4 """
    assert t500730_x22() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t500730_x26(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t500730_x27(z3=_, z4=_, flag4=_):
    """ State 0,1 """
    if GetEventStatus(flag4) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        AcquireGesture(z3)
        OpenItemAcquisitionMenu(3, z4, 1)
        SetEventState(flag4, 1)
        assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 5 """
    return 0

def t500730_x28():
    """ State 0,1 """
    while True:
        call = t500730_x5(flag1=75000120, flag2=75000121, z1=75000121, z2=75000121)
        assert not GetEventStatus(1800)
        """ State 2 """
        call = t500730_x6()
        assert GetEventStatus(1800) == 1

def t500730_x29():
    """ State 0,1 """
    assert t500730_x21()
    """ State 2 """
    return 0

