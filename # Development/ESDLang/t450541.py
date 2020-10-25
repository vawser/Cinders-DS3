# -*- coding: utf-8 -*-
def t450541_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t450541_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t450541_x18()
        assert not IsClientPlayer()

def t450541_x0():
    """ State 0,13 """
    if GetEventStatus(9322) == 1:
        """ State 14 """
        if not GetEventStatus(74500203):
            """ State 21 """
            assert t450541_x14(text2=64000600, z3=74500203, flag2=0, mode2=1)
            """ State 23 """
            # lot:65400:Titanite Slab
            assert t450541_x16(lot1=65400)
        else:
            """ State 22 """
            assert t450541_x15(text1=64000700, flag1=0, mode1=1)
    else:
        """ State 1 """
        if not GetEventStatus(74500201):
            """ State 2 """
            if GetEventStatus(74500200) == 1:
                """ State 16 """
                assert t450541_x15(text1=64000500, flag1=0, mode1=1)
            else:
                """ State 15 """
                assert t450541_x15(text1=64000000, flag1=0, mode1=1)
            """ State 4 """
            ClearTalkListData()
            """ State 5 """
            AddTalkListDataIf(not GetEventStatus(74500200), 1, 14054000, -1)
            AddTalkListDataIf(not GetEventStatus(74500200), 2, 14054001, -1)
            AddTalkListDataIf(GetEventStatus(74500200) == 1, 1, 14054002, -1)
            AddTalkListDataIf(GetEventStatus(74500200) == 1, 4, 14054003, -1)
            """ State 3 """
            OpenConversationChoicesMenu(0)
            assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 6 """
            if GetTalkListEntryResult() == 1:
                """ State 7,17 """
                assert t450541_x15(text1=64000100, flag1=0, mode1=1)
                """ State 11 """
                SetEventState(74500201, 1)
            elif GetTalkListEntryResult() == 2:
                """ State 8,18 """
                assert t450541_x15(text1=64000400, flag1=0, mode1=1)
            else:
                """ State 9 """
                Goto('L0')
            """ State 10 """
            SetEventState(74500200, 1)
        else:
            """ State 12 """
            if not GetEventStatus(74500202):
                """ State 19 """
                assert t450541_x14(text2=64000200, z3=74500202, flag2=0, mode2=1)
            else:
                """ State 20 """
                assert t450541_x15(text1=64000300, flag1=0, mode1=1)
    """ State 24 """
    Label('L0')
    return 0

def t450541_x1():
    """ State 0,6 """
    assert t450541_x11()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t450541_x7()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t450541_x11()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t450541_x2():
    """ State 0,1 """
    if GetEventStatus(1698) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t450541_x9()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t450541_x11()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t450541_x3():
    """ State 0,3 """
    if GetEventStatus(1696) == 1 or GetEventStatus(1697) == 1:
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

def t450541_x4():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2 """
        pass
    else:
        """ State 3,4 """
        assert t450541_x11()
    """ State 5 """
    return 0

def t450541_x5(z1=6641):
    """ State 0,2 """
    call = t450541_x8(z2=-1, z1=z1)
    assert CheckSelfDeath() == 1
    """ State 1 """
    t450541_x2()

def t450541_x6():
    """ State 0,1 """
    assert t450541_x11()
    """ State 2 """
    return 0

def t450541_x7():
    """ State 0,1 """
    if not GetEventStatus(74500221):
        """ State 4 """
        assert t450541_x13(text3=64000810, z4=74500221, flag3=0, mode3=1)
    elif not GetEventStatus(74500222):
        """ State 5 """
        assert t450541_x13(text3=64000820, z4=74500222, flag3=0, mode3=1)
    elif not GetEventStatus(74500223):
        """ State 6 """
        assert t450541_x13(text3=64000830, z4=74500223, flag3=0, mode3=1)
    else:
        """ State 2 """
        SetEventState(74500221, 0)
        SetEventState(74500222, 0)
        SetEventState(74500223, 0)
        """ State 3 """
        assert t450541_x15(text1=64000840, flag1=0, mode1=1)
    """ State 7 """
    return 0

def t450541_x8(z2=-1, z1=6641):
    """ State 0,5 """
    while True:
        call = t450541_x10(z1=z1, flag4=1695, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            call = t450541_x0()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t450541_x1()
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
                call = t450541_x4()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t450541_x3()

def t450541_x9():
    """ State 0,1 """
    assert t450541_x15(text1=64001000, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t450541_x10(z1=6641, flag4=1695, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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
        elif CheckActionButtonArea(z1):
            break
    """ State 4 """
    return 0

def t450541_x11():
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

def t450541_x12():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t450541_x13(text3=_, z4=_, flag3=0, mode3=1):
    """ State 0,5 """
    assert t450541_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450541_x14(text2=_, z3=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t450541_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450541_x15(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t450541_x12() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t450541_x16(lot1=65400):
    """ State 0,1 """
    # lot:65400:Titanite Slab
    GetItemFromItemLot(lot1)
    assert not IsMenuOpen(63) and GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    return 0

def t450541_x17():
    """ State 0,1 """
    while True:
        call = t450541_x5(z1=6641)
        assert not GetEventStatus(1681)
        """ State 2 """
        call = t450541_x6()
        assert GetEventStatus(1681) == 1

def t450541_x18():
    """ State 0,1 """
    assert t450541_x11()
    """ State 2 """
    return 0

