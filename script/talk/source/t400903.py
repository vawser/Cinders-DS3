# -*- coding: utf-8 -*-
def t400903_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400903_x17()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400903_x18()
        assert not IsClientPlayer()

def t400903_x0(action2=_):
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

def t400903_x1(z4=6000, flag5=1121, flag6=6000, flag7=6000, flag8=6000, flag9=6000, flag10=6000, flag11=6000,
               flag12=6000, flag13=6000, flag14=6000, flag15=6000, flag16=6000, flag17=6000, flag18=6000,
               flag19=6000):
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 3 """
        assert (GetEventStatus(flag5) == 1 or GetEventStatus(flag6) == 1 or GetEventStatus(flag7) ==
                1 or GetEventStatus(flag8) == 1 or GetEventStatus(flag9) == 1 or GetEventStatus(flag10)
                == 1 or GetEventStatus(flag11) == 1 or GetEventStatus(flag12) == 1 or GetEventStatus(flag13)
                == 1 or GetEventStatus(flag14) == 1)
        """ State 4 """
        assert (GetEventStatus(flag15) == 1 or GetEventStatus(flag16) == 1 or GetEventStatus(flag17)
                == 1 or GetEventStatus(flag18) == 1 or GetEventStatus(flag19) == 1)
        """ State 2 """
        if (not GetEventStatus(flag5) and not GetEventStatus(flag6) and not GetEventStatus(flag7) and
            not GetEventStatus(flag8) and not GetEventStatus(flag9) and not GetEventStatus(flag10) and
            not GetEventStatus(flag11) and not GetEventStatus(flag12) and not GetEventStatus(flag13)
            and not GetEventStatus(flag14)):
            pass
        elif (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
              and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif (not GetEventStatus(flag15) and not GetEventStatus(flag16) and not GetEventStatus(flag17)
              and not GetEventStatus(flag18) and not GetEventStatus(flag19)):
            pass
        elif CheckActionButtonArea(z4):
            break
    """ State 5 """
    return 0

def t400903_x2():
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
    if not CheckSpecificPersonGenericDialogIsOpen(0):
        """ State 3 """
        ForceCloseGenericDialog()
    else:
        pass
    """ State 4 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 5 """
        ForceCloseMenu()
    else:
        pass
    """ State 8 """
    return 0

def t400903_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t400903_x4(text6=_, z3=_, flag4=0):
    """ State 0,4 """
    assert t400903_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    TalkToPlayer(text6, -1, -1, flag4)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 5 """
    return 0

def t400903_x5(text5=90008000, z2=_, flag3=0):
    """ State 0,4 """
    assert t400903_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text5, -1, -1, flag3)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z2, 1)
    """ State 5 """
    return 0

def t400903_x6(text2=_, flag2=0):
    """ State 0,3 """
    assert t400903_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    TalkToPlayer(text2, -1, -1, flag2)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    ReportConversationEndToHavokBehavior()
    """ State 4 """
    return 0

def t400903_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t400903_x8(text3=90008030, text4=90008040, flag1=9001, z1=9003):
    """ State 0,1 """
    if GetEventStatus(flag1) == 1:
        """ State 2,14 """
        assert t400903_x6(text2=text3, flag2=0)
        """ State 9 """
        SetAquittalCostMessageTag(500, 1)
        """ State 12 """
        call = t400903_x0(action2=10020052)
        if call.Get() == 0:
            """ State 7 """
            if ComparePlayerAcquittalPrice(500, 1, 2) == 1:
                """ State 4,11 """
                # action:10010754:Insufficient souls
                assert t400903_x7(action1=10010754)
            else:
                """ State 10,5 """
                SubtractAcquittalCostFromPlayerSouls(500, 1)
                """ State 6 """
                SetEventState(z1, 1)
                """ State 15 """
                assert t400903_x6(text2=text4, flag2=0)
        elif call.Get() == 1:
            """ State 8 """
            pass
    else:
        """ State 3,13 """
        # action:10010734:
        assert t400903_x7(action1=10010734)
    """ State 16 """
    return 0

def t400903_x9(text1=90008130, text2=90008130):
    """ State 0,1 """
    if ComparePlayerStatus(11, 5, 0) == 1:
        """ State 3,11 """
        assert t400903_x6(text2=text1, flag2=0)
        """ State 8 """
        # action:10010746:
        call = t400903_x0(action2=10010746)
        if call.Get() == 0:
            """ State 4,9 """
            assert t400903_x6(text2=text2, flag2=0)
            """ State 6 """
            ChangePlayerStats(11, 5, 0)
            """ State 10 """
            # action:10010728:
            assert t400903_x7(action1=10010728)
        elif call.Get() == 1:
            """ State 5 """
            pass
    else:
        """ State 2,7 """
        # action:10010727:No Covenants to abandon
        assert t400903_x7(action1=10010727)
    """ State 12 """
    return 0

def t400903_x10():
    """ State 0,1,2 """
    if not GetEventStatus(74009080):
        """ State 3,7 """
        assert t400903_x5(text5=90008000, z2=74009080, flag3=0)
    elif GetEventStatus(74009081) == 1:
        """ State 5,6 """
        SetEventState(74009081, 0)
        """ State 9 """
        assert t400903_x6(text2=90008020, flag2=0)
        """ State 10 """
        Label('L0')
        assert t400903_x16()
    else:
        """ State 4,8 """
        assert t400903_x6(text2=90008010, flag2=0)
        Goto('L0')
    """ State 11 """
    return 0

def t400903_x11():
    """ State 0,9 """
    SetEventState(74009085, 1)
    """ State 14 """
    assert t400903_x2()
    """ State 10 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    if GetEventStatus(1136) == 1 or GetEventStatus(1137) == 1:
        """ State 3 """
        if not GetEventStatus(74009083):
            """ State 6 """
            Label('L0')
            """ State 12 """
            assert t400903_x4(text6=90008080, z3=74009083, flag4=0)
        elif not GetEventStatus(74009084) and GetSelfHP() < 50:
            """ State 7,13 """
            assert t400903_x4(text6=90008090, z3=74009084, flag4=0)
        else:
            """ State 8 """
            pass
    else:
        """ State 2 """
        if not GetEventStatus(74009082):
            """ State 4,11 """
            call = t400903_x4(text6=90008070, z3=74009082, flag4=0)
            if call.Done():
                pass
            elif GetEventStatus(1136) == 1 or GetEventStatus(1137) == 1:
                Goto('L0')
        else:
            """ State 5 """
            pass
    """ State 15 """
    return 0

def t400903_x12():
    """ State 0,1 """
    if GetEventStatus(1138) == 1:
        """ State 2 """
        pass
    else:
        """ State 3,5 """
        call = t400903_x6(text2=90008100, flag2=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 4 """
            assert t400903_x2()
    """ State 6 """
    return 0

def t400903_x13():
    """ State 0,5 """
    call = t400903_x2()
    if call.Done() and (not GetEventStatus(1136) and not GetEventStatus(1137)):
        """ State 2 """
        pass
    elif call.Done():
        """ State 1,4 """
        call = t400903_x6(text2=90008110, flag2=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 3 """
            assert t400903_x2()
    """ State 6 """
    return 0

def t400903_x14():
    """ State 0,1 """
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1:
        """ State 2,4 """
        SetEventState(74009081, 1)
        """ State 6 """
        call = t400903_x6(text2=90008060, flag2=0)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 5 """
            Label('L0')
            assert t400903_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 7 """
    return 0

def t400903_x15():
    """ State 0,4 """
    assert t400903_x3() and (GetEventStatus(1136) == 1 or GetEventStatus(1137) == 1)
    """ State 2,7 """
    call = t400903_x4(text6=90008120, z3=74009085, flag4=0)
    if call.Done():
        pass
    elif GetDistanceToPlayer() > 12:
        """ State 5 """
        assert t400903_x2()
    """ State 8 """
    return 0

def t400903_x16():
    """ State 0,1 """
    while True:
        ClearTalkListData()
        """ State 2 """
        AddTalkListData(1, 15000165, -1)
        AddTalkListData(2, 15000210, -1)
        # action:15000005:Leave
        AddTalkListData(99, 15000005, -1)
        """ State 3 """
        ShowShopMessage(1)
        if GetTalkListEntryResult() == 1:
            """ State 9 """
            assert t400903_x8(text3=90008030, text4=90008040, flag1=9001, z1=9003)
        elif not CheckSpecificPersonMenuIsOpen(1, 0):
            """ State 4,5,7 """
            assert t400903_x6(text2=90008050, flag2=0)
            break
        elif GetTalkListEntryResult() == 2:
            """ State 10 """
            assert t400903_x9(text1=90008130, text2=90008130)
    """ State 11 """
    return 0

def t400903_x17():
    """ State 0,7 """
    while True:
        call = t400903_x1(z4=6000, flag5=1121, flag6=6000, flag7=6000, flag8=6000, flag9=6000, flag10=6000,
                          flag11=6000, flag12=6000, flag13=6000, flag14=6000, flag15=6000, flag16=6000,
                          flag17=6000, flag18=6000, flag19=6000)
        if call.Done():
            """ State 4 """
            call = t400903_x10()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400903_x11()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif CheckSelfDeath() == 1:
                    """ State 2 """
                    t400903_x12()
                    Quit()
                elif IsPlayerDead() == 1:
                    break
                elif GetDistanceToPlayer() > 12:
                    """ State 5 """
                    Label('L1')
                    assert t400903_x14() and GetDistanceToPlayer() < 4.9
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 5:
                Goto('L1')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
        elif (GetDistanceToPlayer() < 10 and not GetEventStatus(74009085) and (GetEventStatus(1136) ==
              1 or GetEventStatus(1137) == 1)):
            """ State 6 """
            call = t400903_x15()
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
            elif IsAttackedBySomeone() == 1:
                Goto('L0')
            elif GetDistanceToPlayer() > 12:
                Goto('L1')
    """ State 3 """
    t400903_x13()

def t400903_x18():
    """ State 0,1 """
    assert t400903_x2()
    """ State 2 """
    return 0

