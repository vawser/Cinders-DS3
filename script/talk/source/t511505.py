#------------------------------
# Fallen Pygmy - Transposition Menu / Infusion
#------------------------------
# -*- coding: utf-8 -*-
def t511505_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t511505_x14()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t511505_x15()
        assert not IsClientPlayer()

def t511505_x0(action=_):
    """State 0,1"""
    OpenGenericDialog(8, action, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    if GetGenericDialogButtonResult() == 1:
        """State 3"""
        return 0
    else:
        """State 4"""
        return 1

def t511505_x1(action_button=_, flag=_):
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(action_button):
            break
    """State 4"""
    return 0

def t511505_x2():
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

def t511505_x3():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0

# Talk to Player
def t511505_x4(text=_, end_mode=_):
    """State 0,5"""
    assert t511505_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511505_x5(text=_, end_mode=_):
    """State 0,5"""
    assert t511505_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 4"""
    if not end_mode:
        pass
    else:
        """State 3"""
        ReportConversationEndToHavokBehavior()
    """State 6"""
    return 0

# Talk to Player
def t511505_x6(text=_, end_mode=_):
    """State 0,4"""
    assert t511505_x3() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text, -1, -1, 0)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not end_mode:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

# Dialog
def t511505_x7(action=_):
    """State 0,1"""
    OpenGenericDialog(7, action, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0

def t511505_x9():
    assert t511505_x50()
    """State 24"""
    return 0

def t511505_x10():
    """State 0,6"""
    assert t511505_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 1"""
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """State 2"""
    if GetDistanceToPlayer() < 10:
        """State 4,8"""
        call = t511505_x18()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 7"""
            assert t511505_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t511505_x12():
    """State 0,1,2"""
    assert t511505_x2()
    """State 3"""
    return 0

def t511505_x13():
    """State 0,1"""
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """State 2,5"""
        call = t511505_x19()
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 12:
            """State 4"""
            Label('L0')
            assert t511505_x2()
    else:
        """State 3"""
        Goto('L0')
    """State 6"""
    return 0

def t511505_x14():
    """State 0"""
    while True:
        """State 1"""
        call = t511505_x16()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)
        """State 2"""
        call = t511505_x17()
        assert GetEventStatus(1000) == 1 or GetEventStatus(1001) == 1 or GetEventStatus(1002) == 1
    """Unused"""
    """State 3"""
    return 0

def t511505_x15():
    """State 0,1"""
    assert t511505_x2()
    """State 2"""
    return 0

def t511505_x16():
    """State 0,1"""
    call = t511505_x26()
    assert CheckSelfDeath() == 1
    """State 2"""
    Quit()
    """Unused"""
    """State 3"""
    return 0

def t511505_x17():
    """State 0"""
    Quit()
    """Unused"""
    """State 1"""
    return 0

def t511505_x18():
    return 0

def t511505_x19():
    return 0

def t511505_x26():
    """State 0"""
    while True:
        """State 5"""
        call = t511505_x1(6000, 6000)
        
        if call.Done():
            """State 3"""
            call = t511505_x9()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t511505_x10()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 3 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t511505_x13()
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t511505_x12()
    Quit()
    """Unused"""
    """State 6"""
    return 0

#-------------------------------------
# Menu
#-------------------------------------
def t511505_x50():
    MainBonfireMenuFlag()
    
    while True:
        ClearTalkListData()
        
        # Begin Transposition
        AddTalkListData(1, 15003000, -1)
        
        # Infuse Weapon
        AddTalkListData(2, 15010001, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        assert not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        
        # Begin Transposition
        if GetTalkListEntryResult() == 1:
            OpenTranspositionShop(30000, 30999)
            assert not (CheckSpecificPersonMenuIsOpen(18, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Infuse Weapon
        elif GetTalkListEntryResult() == 2:
            CombineMenuFlagAndEventFlag(6001, 344)
            CombineMenuFlagAndEventFlag(6001, 337)
            CombineMenuFlagAndEventFlag(6001, 334)
            CombineMenuFlagAndEventFlag(300, 332)
            CombineMenuFlagAndEventFlag(300, 333)
            CombineMenuFlagAndEventFlag(300, 342)
            CombineMenuFlagAndEventFlag(301, 335)
            CombineMenuFlagAndEventFlag(301, 345)
            CombineMenuFlagAndEventFlag(301, 340)
            CombineMenuFlagAndEventFlag(302, 336)
            CombineMenuFlagAndEventFlag(302, 338)
            CombineMenuFlagAndEventFlag(302, 339)
            CombineMenuFlagAndEventFlag(303, 341)
            CombineMenuFlagAndEventFlag(303, 343)
            CombineMenuFlagAndEventFlag(303, 346)
            CombineMenuFlagAndEventFlag(6000, 347)
            CombineMenuFlagAndEventFlag(6001, 331)
            OpenEquipmentChangeOfPurposeShop()
            assert not (CheckSpecificPersonMenuIsOpen(7, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        else:
            return 0
            
        assert CheckSpecificPersonTalkHasEnded(0) == 1
        
# Description Prompt
def t511505_x60(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
    
