#-------------------------------------------
#-- Domhnall of Zena
#-------------------------------------------
# -*- coding: utf-8 -*-
def t410503_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t410503_x14()
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t410503_x15()
        assert not IsClientPlayer()

def t410503_x0(action2=_):
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

def t410503_x1(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

def t410503_x2():
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

def t410503_x3():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t410503_x4(text3=12002600, z3=74000115, flag3=0, mode3=1):
    """ State 0,5 """
    assert t410503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z3, 1)
    """ State 1 """
    # talk:12002600: 
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

def t410503_x5(text2=_, z2=_, flag2=0, mode2=0):
    """ State 0,5 """
    assert t410503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t410503_x6(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t410503_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
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

def t410503_x7(action1=_):
    """ State 0,1 """
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t410503_x9():
    """ State 0,1 """
    assert t410503_x8()
    """ State 24 """
    return 0

def t410503_x10():
    """ State 0,6 """
    assert t410503_x2()
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() < 10:
        """ State 4,8 """
        call = t410503_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """ State 7 """
            assert t410503_x2()
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

def t410503_x11():
    """ State 0,1 """
    if GetEventStatus(1018) == 1:
        """ State 2 """
        pass
    else:
        """ State 3 """
        if GetDistanceToPlayer() < 10:
            """ State 4 """
            if GetEventStatus(50006020) == 1:
                """ State 6,9 """
                # talk:12002900: 
                call = t410503_x6(text1=12002900, flag1=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            else:
                """ State 7,10 """
                # talk:12002950: 
                call = t410503_x6(text1=12002950, flag1=0, mode1=1)
                if call.Done():
                    Goto('L0')
                elif GetDistanceToPlayer() > 12:
                    pass
            """ State 8 """
            assert t410503_x2()
        else:
            """ State 5 """
            pass
    """ State 11 """
    Label('L0')
    return 0

def t410503_x12():
    """ State 0,1,2 """
    assert t410503_x2()
    """ State 3 """
    return 0

def t410503_x13():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
       if GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t410503_x2()
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

def t410503_x14():
    """ State 0,1 """
    while True:
        call = t410503_x16()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)
        """ State 2 """
        call = t410503_x17()
        assert GetEventStatus(1000) == 1 or GetEventStatus(1001) == 1 or GetEventStatus(1002) == 1

def t410503_x15():
    """ State 0,1 """
    assert t410503_x2()
    """ State 2 """
    return 0

def t410503_x16():
    """ State 0,1 """
    call = t410503_x26()
    assert CheckSelfDeath() == 1
    """ State 2 """
    t410503_x11()

def t410503_x17():
    """ State 0 """

def t410503_x18():
    """ State 0,1 """
    if not GetEventStatus(74000115):
        """ State 2,5 """
        # talk:12002600: 
        assert t410503_x4(text3=12002600, z3=74000115, flag3=0, mode3=1)
    else:
        """ State 3,6 """
        # talk:12002700: 
        assert t410503_x6(text1=12002700, flag1=0, mode1=1)
        """ State 4 """
        SetEventState(74000115, 0)
    """ State 7 """
    return 0

def t410503_x26():
    """ State 0,5 """
    while True:
        call = t410503_x1(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000)
        if call.Done():
            """ State 3 """
            SetEventState(74000139, 1)
            call = t410503_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t410503_x10()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t410503_x13()
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t410503_x12()

def t410503_x27(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
       
def t410503_x28(action2=_):
    """ State 0,1 """
    OpenGenericDialog(8, action2, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

# Menu
def t410503_x8():
    c1110()
    while True:
        ClearTalkListData()
       
        # Offerings
        AddTalkListData(1, 15003003, -1)

        # Form Covenant
        AddTalkListDataIf(GetEventStatus(25000207) == 0, 6, 15003019, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Offerings
        if GetTalkListEntryResult() == 1:
            c1111(210000, 210999)
            continue
        # Form Covenant
        elif GetTalkListEntryResult() == 6:
            SetEventState(25000207, 1)
            GetItemFromItemLot(800001110)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
