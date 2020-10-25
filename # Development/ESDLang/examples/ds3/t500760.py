# -*- coding: utf-8 -*-
def t500760_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t500760_x11()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t500760_x12()
        assert not IsClientPlayer()

def t500760_x0(z3=6860, flag7=1875, flag8=6000, flag9=6000, flag10=6000, flag11=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag7) == 1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) ==
                1 or GetEventStatus(flag10) == 1 or GetEventStatus(flag11) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag7) and not GetEventStatus(flag8) and not GetEventStatus(flag9) and
              not GetEventStatus(flag10) and not GetEventStatus(flag11)):
            pass
        elif CheckActionButtonArea(z3):
            break
    """ State 4 """
    return 0

def t500760_x1():
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

def t500760_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t500760_x3(text1=_, flag1=_, flag6=0, mode3=1):
    """ State 0,5 """
    assert t500760_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(flag1, 1)
    """ State 1 """
    TalkToPlayer(text1, -1, -1, flag6)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t500760_x4(text5=_, z2=_, flag5=0, mode2=1):
    """ State 0,5 """
    assert t500760_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag5)
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

def t500760_x5(text4=_, flag4=0, mode1=1):
    """ State 0,4 """
    assert t500760_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text4, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode1:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t500760_x6():
    """ State 0,1 """
    if not GetEventStatus(75000151):
        """ State 2 """
        if not GetEventStatus(75000150):
            """ State 14 """
            assert t500760_x5(text4=86000000, flag4=0, mode1=1)
        else:
            """ State 8 """
            assert t500760_x5(text4=86000010, flag4=0, mode1=1)
        """ State 3 """
        ClearTalkListData()
        assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                and not CheckSpecificPersonGenericDialogIsOpen(2))
        """ State 4 """
        AddTalkListData(1, 14076000, -1)
        AddTalkListData(2, 14076001, -1)
        """ State 6 """
        OpenConversationChoicesMenu(0)
        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 9 """
            assert t500760_x4(text5=86000100, z2=75000151, flag5=0, mode2=1)
            """ State 7 """
            SetEventState(75000150, 1)
            """ State 10 """
            Label('L0')
            assert t500760_x21()
            """ State 11 """
            assert t500760_x16()
        elif GetTalkListEntryResult() == 2:
            """ State 13 """
            assert t500760_x4(text5=86000800, z2=75000150, flag5=0, mode2=1)
        else:
            pass
    else:
        """ State 12 """
        assert t500760_x5(text4=86000200, flag4=0, mode1=1)
        Goto('L0')
    """ State 15 """
    return 0

def t500760_x7(z1=-1, flag1=75000171, flag2=75000172, flag3=75000173, text1=86001100, text2=86001110,
               text3=86001120, text4=86001130):
    """ State 0,6 """
    assert t500760_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1876) and not GetEventStatus(1877)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,8 """
        call = t500760_x15(flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2, text3=text3,
                           text4=text4)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t500760_x1()
    else:
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t500760_x8():
    """ State 0,1 """
    if GetEventStatus(1878) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t500760_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t500760_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t500760_x9():
    """ State 0,3 """
    if GetEventStatus(1876) == 1 or GetEventStatus(1877) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t500760_x19()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t500760_x1()
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 8 """
    return 0

def t500760_x10():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        call = t500760_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t500760_x1()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t500760_x11():
    """ State 0,1 """
    while True:
        call = t500760_x13(z1=-1, flag1=75000171, flag2=75000172, flag3=75000173, text1=86001100, text2=86001110,
                           text3=86001120, text4=86001130)
        assert not GetEventStatus(1860)
        """ State 2 """
        call = t500760_x14()
        assert GetEventStatus(1860) == 1

def t500760_x12():
    """ State 0,1 """
    assert t500760_x1()
    """ State 2 """
    return 0

def t500760_x13(z1=-1, flag1=75000171, flag2=75000172, flag3=75000173, text1=86001100, text2=86001110,
                text3=86001120, text4=86001130):
    """ State 0,2 """
    call = t500760_x17(z1=z1, flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2, text3=text3,
                       text4=text4)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t500760_x8()

def t500760_x14():
    """ State 0,1 """
    assert t500760_x1()
    """ State 2 """
    return 0

def t500760_x15(flag1=75000171, flag2=75000172, flag3=75000173, text1=86001100, text2=86001110, text3=86001120,
                text4=86001130):
    """ State 0,1 """
    if not GetEventStatus(flag1):
        """ State 3 """
        assert t500760_x3(text1=text1, flag1=flag1, flag6=0, mode3=1)
    elif not GetEventStatus(flag2):
        """ State 5 """
        assert t500760_x3(text1=text2, flag1=flag2, flag6=0, mode3=1)
    elif not GetEventStatus(flag3):
        """ State 6 """
        assert t500760_x3(text1=text3, flag1=flag3, flag6=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(flag1, 0)
        SetEventState(flag2, 0)
        SetEventState(flag3, 0)
        """ State 4 """
        assert t500760_x5(text4=text4, flag4=0, mode1=1)
    """ State 7 """
    return 0

def t500760_x16():
    """ State 0,1 """
    if GetEventStatus(75000154) == 1:
        """ State 3 """
        assert t500760_x5(text4=86001000, flag4=0, mode1=1)
    else:
        """ State 2 """
        assert t500760_x5(text4=86000800, flag4=0, mode1=1)
    """ State 4 """
    return 0

def t500760_x17(z1=-1, flag1=75000171, flag2=75000172, flag3=75000173, text1=86001100, text2=86001110,
                text3=86001120, text4=86001130):
    """ State 0,5 """
    while True:
        call = t500760_x0(z3=6860, flag7=1875, flag8=6000, flag9=6000, flag10=6000, flag11=6000)
        if call.Done():
            """ State 3 """
            call = t500760_x6()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t500760_x7(z1=z1, flag1=flag1, flag2=flag2, flag3=flag3, text1=text1, text2=text2,
                                  text3=text3, text4=text4)
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
                call = t500760_x10()
                if call.Done():
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t500760_x9()

def t500760_x18():
    """ State 0,1,2 """
    assert t500760_x5(text4=86001300, flag4=0, mode1=1)
    """ State 3 """
    return 0

def t500760_x19():
    """ State 0,1,2 """
    return 0

def t500760_x20():
    """ State 0,1 """
    if GetEventStatus(75000154) == 1:
        """ State 8 """
        assert t500760_x4(text5=86000700, z2=75000155, flag5=0, mode2=1)
    else:
        """ State 2 """
        if not GetEventStatus(75000152):
            """ State 5 """
            assert t500760_x4(text5=86000300, z2=75000152, flag5=0, mode2=1)
        else:
            """ State 6 """
            assert t500760_x4(text5=86000400, z2=75000153, flag5=0, mode2=1)
            """ State 3 """
            SetEventState(75000152, 0)
    """ State 9 """
    return 0

def t500760_x21():
    """ State 0,1 """
    c1110()
    """ State 2 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 3 """
        AddTalkListData(1, 15076000, -1)
        AddTalkListData(2, 15076001, -1)
        # action:15000000:Talk
        AddTalkListData(3, 15000000, -1)
        AddTalkListDataIf(GetEventStatus(75000101) == 1 and not GetEventStatus(75000154), 4, 15076002,
                          -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 4 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 5 """
        if GetTalkListEntryResult() == 1:
            """ State 6,7 """
            OpenRegularShop(760000, 769999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 2:
            """ State 8,9 """
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 10,11 """
            assert t500760_x20()
        elif GetTalkListEntryResult() == 4:
            """ State 12 """
            assert t500760_x4(text5=86000500, z2=75000154, flag5=0, mode2=1)
        else:
            """ State 13 """
            return 0

