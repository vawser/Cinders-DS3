# -*- coding: utf-8 -*-
def t510740_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t510740_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t510740_x13()
        assert not IsClientPlayer()

def t510740_x0(z4=6000, flag4=1835, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t510740_x1():
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

def t510740_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t510740_x3(text3=_, z3=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t510740_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t510740_x4(text2=_, z2=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t510740_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t510740_x5(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t510740_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t510740_x6(lot1=_):
    """ State 0,1 """
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t510740_x7():
    """ State 0,5 """
    if not GetEventStatus(75100150):
        """ State 32 """
        assert t510740_x4(text2=84000000, z2=75100150, flag2=0, mode2=1)
    else:
        """ State 6 """
        if not GetEventStatus(75100152):
            """ State 7 """
            if not GetEventStatus(75100151):
                """ State 33 """
                assert t510740_x5(text1=84000100, flag1=0, mode1=1)
            else:
                """ State 34 """
                assert t510740_x5(text1=84000800, flag1=0, mode1=1)
            """ State 8 """
            ClearTalkListData()
            assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                    and not CheckSpecificPersonGenericDialogIsOpen(2))
            """ State 9 """
            AddTalkListData(1, 14074000, -1)
            AddTalkListData(2, 14074001, -1)
            """ State 10 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 11 """
            if GetTalkListEntryResult() == 1:
                """ State 12,35 """
                assert t510740_x4(text2=84000200, z2=75100152, flag2=0, mode2=1)
                """ State 14 """
                Label('L0')
                SetEventState(75100151, 1)
            elif GetTalkListEntryResult() == 2:
                """ State 13,36 """
                assert t510740_x5(text1=84000700, flag1=0, mode1=1)
                Goto('L0')
            else:
                pass
        else:
            """ State 31 """
            if not GetEventStatus(75100153):
                """ State 55 """
                assert t510740_x4(text2=84000300, z2=75100153, flag2=0, mode2=1)
            else:
                """ State 3 """
                if GetEventStatus(9326) == 1:
                    """ State 27 """
                    if not GetEventStatus(50006630) or not GetEventStatus(50006631):
                        """ State 47 """
                        assert t510740_x5(text1=84001400, flag1=0, mode1=1)
                        """ State 48 """
                        # lot:66310:Titanite Slab
                        assert t510740_x6(lot1=66310)
                    else:
                        """ State 28 """
                        if not GetEventStatus(75100158):
                            pass
                        else:
                            """ State 1 """
                            if GetEventStatus(15100724) == 1:
                                """ State 30 """
                                if not GetEventStatus(75100160):
                                    """ State 53 """
                                    assert t510740_x4(text2=84001800, z2=75100160, flag2=0, mode2=1)
                                    Goto('L2')
                                else:
                                    """ State 54 """
                                    assert t510740_x5(text1=84001900, flag1=0, mode1=1)
                                    Goto('L2')
                            else:
                                """ State 2 """
                                if GetEventStatus(15100723) == 1:
                                    """ State 29 """
                                    if not GetEventStatus(75100159):
                                        """ State 51 """
                                        assert t510740_x4(text2=84001600, z2=75100159, flag2=0, mode2=1)
                                        Goto('L2')
                                    else:
                                        """ State 52 """
                                        assert t510740_x5(text1=84001700, flag1=0, mode1=1)
                                        Goto('L2')
                                else:
                                    """ State 50 """
                                    assert t510740_x5(text1=84001500, flag1=0, mode1=1)
                                    Goto('L2')
                    """ State 49 """
                    assert t510740_x4(text2=84001450, z2=75100158, flag2=0, mode2=1)
                else:
                    """ State 15 """
                    if not GetEventStatus(50006630):
                        """ State 16 """
                        if not GetEventStatus(75100154):
                            """ State 37 """
                            assert t510740_x5(text1=84000400, flag1=0, mode1=1)
                        else:
                            """ State 38 """
                            assert t510740_x5(text1=84001000, flag1=0, mode1=1)
                        """ State 17 """
                        ClearTalkListData()
                        assert (not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2))
                                and not CheckSpecificPersonGenericDialogIsOpen(2))
                        """ State 18 """
                        AddTalkListData(1, 14074010, -1)
                        AddTalkListDataIf(not GetEventStatus(75100154), 2, 14074011, -1)
                        AddTalkListDataIf(GetEventStatus(75100154) == 1, 2, 14074012, -1)
                        """ State 20 """
                        OpenConversationChoicesMenu(0)
                        assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
                        """ State 19 """
                        if GetTalkListEntryResult() == 1:
                            """ State 21,39 """
                            assert t510740_x5(text1=84000500, flag1=0, mode1=1)
                            """ State 41 """
                            assert t510740_x6(lot1=66300)
                            """ State 42 """
                            Label('L1')
                            assert t510740_x4(text2=84000550, z2=75100155, flag2=0, mode2=1)
                        elif GetTalkListEntryResult() == 2:
                            """ State 22,40 """
                            assert t510740_x5(text1=84000900, flag1=0, mode1=1)
                        else:
                            Goto('L2')
                    else:
                        """ State 24 """
                        if not GetEventStatus(75100155):
                            Goto('L1')
                        else:
                            """ State 4 """
                            if GetEventStatus(15100200) == 1:
                                """ State 25 """
                                if not GetEventStatus(75100156):
                                    """ State 44 """
                                    assert t510740_x4(text2=84001100, z2=75100156, flag2=0, mode2=1)
                                    Goto('L2')
                                else:
                                    """ State 26 """
                                    if not GetEventStatus(75100157):
                                        """ State 45 """
                                        assert t510740_x4(text2=84001200, z2=75100157, flag2=0, mode2=1)
                                        Goto('L2')
                                    else:
                                        """ State 46 """
                                        assert t510740_x5(text1=84001300, flag1=0, mode1=1)
                                        Goto('L2')
                            else:
                                """ State 43 """
                                assert t510740_x5(text1=84000600, flag1=0, mode1=1)
                                Goto('L2')
                    """ State 23 """
                    SetEventState(75100154, 1)
    """ State 56 """
    Label('L2')
    return 0

def t510740_x8():
    """ State 0,6 """
    assert t510740_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t510740_x16()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t510740_x1()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t510740_x9():
    """ State 0,1 """
    if GetEventStatus(1838) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t510740_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t510740_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t510740_x10():
    """ State 0,3 """
    if GetEventStatus(1836) == 1 or GetEventStatus(1837) == 1:
        """ State 1 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            pass
        else:
            """ State 5 """
            pass
    else:
        """ State 2 """
        pass
    """ State 7 """
    return 0

def t510740_x11():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t510740_x1()
    """ State 5 """
    return 0

def t510740_x12():
    """ State 0,1 """
    while True:
        call = t510740_x14()
        assert not GetEventStatus(1820) and not GetEventStatus(1822)
        """ State 2 """
        call = t510740_x15()
        assert GetEventStatus(1820) == 1 or GetEventStatus(1822) == 1

def t510740_x13():
    """ State 0,1 """
    assert t510740_x1()
    """ State 2 """
    return 0

def t510740_x14():
    """ State 0,2 """
    call = t510740_x17(z1=-1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t510740_x9()

def t510740_x15():
    """ State 0,1 """
    assert t510740_x1()
    """ State 2 """
    return 0

def t510740_x16():
    """ State 0,1 """
    if not GetEventStatus(75100171):
        """ State 3 """
        assert t510740_x3(text3=84002300, z3=75100171, flag3=0, mode3=1)
    elif not GetEventStatus(75100172):
        """ State 4 """
        assert t510740_x3(text3=84002310, z3=75100172, flag3=0, mode3=1)
    elif not GetEventStatus(75100173):
        """ State 5 """
        assert t510740_x3(text3=84002320, z3=75100173, flag3=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(75100171, 0)
        SetEventState(75100172, 0)
        SetEventState(75100173, 0)
        """ State 6 """
        assert t510740_x5(text1=84002330, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t510740_x17(z1=-1):
    """ State 0,5 """
    while True:
        call = t510740_x0(z4=6000, flag4=1835, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t510740_x7()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t510740_x8()
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
                call = t510740_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t510740_x10()

def t510740_x18():
    """ State 0,1 """
    assert t510740_x5(text1=84002500, flag1=0, mode1=1)
    """ State 2 """
    return 0

