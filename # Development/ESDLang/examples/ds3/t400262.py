# -*- coding: utf-8 -*-
def t400262_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400262_x12()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400262_x13()
        assert not IsClientPlayer()

def t400262_x0(z5=6260, flag3=1295, flag4=6000, flag5=6000, flag6=6000, flag7=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag3) == 1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) ==
                1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) == 1)
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag3) and not GetEventStatus(flag4) and not GetEventStatus(flag5) and
              not GetEventStatus(flag6) and not GetEventStatus(flag7)):
            pass
        elif CheckActionButtonArea(z5):
            break
    """ State 4 """
    return 0

def t400262_x1():
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

def t400262_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400262_x3(text2=_, z4=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400262_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z4, 1)
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 6 """
    return 0

def t400262_x4(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400262_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t400262_x5(action1=13016000):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400262_x6(z1=2119, z2=2120, z3=2121):
    """ State 0,10 """
    c1110()
    """ State 1 """
    while True:
        ClearTalkListData()
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """ State 2 """
        # action:15002000:Level Up
        AddTalkListData(1, 15002000, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        """ State 7 """
        if GetTalkListEntryResult() == 1:
            """ State 4 """
            if GetEventStatus(2051) == 1 or IsMultiplayerInProgress() == 1:
                """ State 16,20 """
                assert t400262_x5(action1=13016000)
            else:
                """ State 15 """
                assert not GetEventStatus(74000391) and not GetEventStatus(74000392)
                """ State 19 """
                SetEventState(74000389, 1)
                call = t400262_x20()
                def ExitPause():
                    SetEventState(74000389, 0)
                    SetEventState(74000390, 0)
                if call.Get() == 1:
                    """ State 14 """
                    break
                elif call.Done():
                    pass
        elif GetTalkListEntryResult() == 2:
            """ State 12,13 """
            OpenRegularShop(160000, 169999)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 3:
            """ State 5,9 """
            CombineMenuFlagAndEventFlag(6001, 234)
            CombineMenuFlagAndEventFlag(6001, 235)
            """ State 8 """
            OpenEnhanceShop(0)
            assert not (CheckSpecificPersonMenuIsOpen(9, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        elif GetTalkListEntryResult() == 4:
            """ State 11,18 """
            assert t400262_x14()
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """ State 6 """
            break
    """ State 21 """
    return 0

def t400262_x7():
    """ State 0,1,2,3,4 """
    # talk:26003100:Ohh, sweet Champion of Ash.
    assert t400262_x4(text1=26003100, flag1=0, mode1=1)
    """ State 5 """
    assert t400262_x6(z1=2119, z2=2120, z3=2121)
    """ State 6 """
    return 0

def t400262_x8():
    """ State 0,6 """
    assert t400262_x1()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1,2 """
    if GetDistanceToPlayer() < 10:
        """ State 5,8 """
        call = t400262_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t400262_x1()
    else:
        """ State 4 """
        pass
    """ State 9 """
    return 0

def t400262_x9():
    """ State 0,1 """
    if GetEventStatus(1298) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4,7 """
            call = t400262_x18()
            if call.Done():
                pass
            elif GetDistanceToPlayer() > 12:
                """ State 6 """
                assert t400262_x1()
        else:
            """ State 5 """
            pass
    """ State 8 """
    return 0

def t400262_x10():
    """ State 0,2,1,3 """
    return 0

def t400262_x11():
    """ State 0,1,3,4 """
    assert t400262_x1()
    """ State 6 """
    return 0

def t400262_x12():
    """ State 0,1 """
    while True:
        call = t400262_x15()
        assert not GetEventStatus(1286)
        """ State 2 """
        call = t400262_x16()
        assert GetEventStatus(1286) == 1

def t400262_x13():
    """ State 0,1 """
    assert t400262_x1()
    """ State 2 """
    return 0

def t400262_x14():
    """ State 0,1 """
    # talk:26003101:Let souls be your strength...
    assert t400262_x4(text1=26003101, flag1=0, mode1=1)
    """ State 2 """
    return 0

def t400262_x15():
    """ State 0,2 """
    call = t400262_x21()
    assert CheckSelfDeath() == 1
    """ State 1 """
    t400262_x9()

def t400262_x16():
    """ State 0 """

def t400262_x17():
    """ State 0,1,2 """
    if GetEventStatus(9210) == 1:
        """ State 3 """
        # talk:26002800:Godspeed, Champion of Ash.
        assert t400262_x4(text1=26002800, flag1=0, mode1=1)
    else:
        """ State 4 """
        # talk:26002700:Thank you ever so much, sweet Champion.
        assert t400262_x4(text1=26002700, flag1=0, mode1=1)
    """ State 5 """
    return 0

def t400262_x18():
    """ State 0,1,2,3 """
    # talk:26003400: 
    assert t400262_x4(text1=26003400, flag1=0, mode1=1)
    """ State 4 """
    return 0

def t400262_x19():
    """ State 0,1 """
    if not GetEventStatus(74000371):
        """ State 4 """
        # talk:26000600: 
        assert t400262_x3(text2=26000600, z4=74000371, flag2=0, mode2=1)
    else:
        """ State 3 """
        SetEventState(74000371, 0)
        SetEventState(74000372, 0)
        SetEventState(74000373, 0)
        """ State 5 """
        # talk:26000700: 
        assert t400262_x3(text2=26000700, z4=74000372, flag2=0, mode2=1)
    """ State 8 """
    return 0

def t400262_x20():
    """ State 0,3 """
    def WhilePaused():
        SetTalkTime(0.1)
    if not GetEventStatus(74000389):
        pass
    elif DoesSelfHaveSpEffect(150) == 1:
        """ State 4 """
        SetEventState(74000390, 1)
        """ State 2 """
        if GetEventStatus(74000391) == 1 and GetEventStatus(74000392) == 1:
            """ State 1 """
            OpenSoul()
            assert not (CheckSpecificPersonMenuIsOpen(10, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            """ State 5 """
            return 0
        elif not GetEventStatus(74000389):
            pass
    """ State 6 """
    return 1

def t400262_x21():
    """ State 0,6 """
    while True:
        call = t400262_x0(z5=6260, flag3=1295, flag4=6000, flag5=6000, flag6=6000, flag7=6000)
        if call.Done():
            """ State 4 """
            call = t400262_x7()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 2 """
                Label('L0')
                call = t400262_x8()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or not GetEventStatus(74000393):
                """ State 5 """
                call = t400262_x11()
                if call.Done() and GetDistanceToPlayer() < 4.9:
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif not GetEventStatus(74000393):
            """ State 1 """
            if GetEventStatus(74000393) == 1:
                pass
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
    """ State 3 """
    t400262_x10()

