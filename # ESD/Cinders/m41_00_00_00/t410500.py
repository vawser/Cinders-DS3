# -*- coding: utf-8 -*-
def t410500_1():
    """State 0,1"""
    assert GetCurrentStateElapsedTime() > 1
    while True:
        """State 2"""
        call = t410500_x0()
        assert IsClientPlayer() == 1
        """State 3"""
        call = t410500_x1()
        assert not IsClientPlayer()

def t410500_x0():
    """State 0,1"""
    t410500_x3()
    Quit()

def t410500_x1():
    """State 0,1"""
    assert t410500_x2()
    """State 2"""
    return 0

def t410500_x2():
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

def t410500_x3():
    """State 0,1"""
    call = t410500_x4()
    assert CheckSelfDeath() == 1
    """State 2"""
    return 0

def t410500_x4():
    """State 0"""
    while True:
        """State 5"""
        call = t410500_x5()
        if call.Done():
            """State 3"""
            call = t410500_x8()
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """State 1"""
                Label('L0')
                call = t410500_x6()
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 2 or GetPlayerYDistance() > 0.25:
                """State 4"""
                call = t410500_x7()
                if call.Done() and (GetDistanceToPlayer() < 1.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """State 2"""
    t410500_x2()
    Quit()

def t410500_x5():
    """State 0"""
    while True:
        """State 1"""
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """State 2"""
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6120):
            break
    """State 4"""
    return 0

def t410500_x6():
    """State 0,6"""
    assert t410500_x2()
    """State 3"""
    assert GetCurrentStateElapsedFrames() > 1
    """State 2"""
    if GetDistanceToPlayer() > 3:
        """State 7"""
        assert t410500_x2()
    else:
        """State 5"""
        pass
    """State 9"""
    return 0

def t410500_x7():
    """State 0,1"""
    if CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0):
        """State 2,5"""
        assert GetDistanceToPlayer() > 3
        assert t410500_x10(text1=10030200, flag1=0, mode1=0)
    else:
        """State 3"""
        pass
    """State 4"""
    assert t410500_x2()
    """State 6"""
    return 0

def t410500_x8():
    """State 0,1"""
    assert t410500_x9()
    """State 24"""
    return 0

# Main Menu
def t410500_x9():
    while True:
        """State 0"""
        MainBonfireMenuFlag()
        ClearTalkListData()
        
        # Purchase Item
        AddTalkListData(1, 15011020, -1)
        
        # Sell Item
        AddTalkListData(2, 15000012, -1)
        
        # Talk
        AddTalkListData(3, 15000000, -1)
        
        # Gavlan need?
        AddTalkListData(4, 99110000, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        """State 1"""
        ShowShopMessage(1)
        
        # Purchase Item
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(340000, 340099)
            assert not (CheckSpecificPersonMenuIsOpen(5, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
        # Sell Item
        elif GetTalkListEntryResult() == 2:
            OpenSellShop(-1, -1)
            assert not (CheckSpecificPersonMenuIsOpen(6, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))
            continue
        # Talk
        elif GetTalkListEntryResult() == 3:
            if GetEventStatus(74100500) == 0:
                SetEventState(74100500, 1)
                assert t410500_x10(text1=10030000, flag1=0, mode1=0)
            else:
                assert t410500_x10(text1=10030010, flag1=0, mode1=0)
        # Gavlan need?
        elif GetTalkListEntryResult() == 4:
            # Mossfruit
            if GetEventStatus(74100510) == 1:
                assert t410500_x12(10031010, 99110001, 452, 260310000)
            # Young White Branch
            elif GetEventStatus(74100511) == 1:
                assert t410500_x12(10031020, 99110002, 454, 260310005)
            # Rusted Gold Coin
            elif GetEventStatus(74100512) == 1:
                assert t410500_x12(10031030, 99110003, 457, 260310004)
            # Elizabeth Mushroom
            elif GetEventStatus(74100513) == 1:
                assert t410500_x12(10031040, 99110004, 803, 260310003)
            # Crimson Water
            elif GetEventStatus(74100514) == 1:
                assert t410500_x12(10031050, 99110005, 806, 260310002)
            # Purging Stone
            elif GetEventStatus(74100515) == 1:
                assert t410500_x12(10031060, 99110006, 274, 260310002)
            # Rubbish
            elif GetEventStatus(74100516) == 1:
                assert t410500_x12(10031070, 99110007, 380, 260310000)
            # Seed of a Giant Tree
            elif GetEventStatus(74100517) == 1:
                assert t410500_x12(10031080, 99110008, 440, 260310004)
            # Siegbräu
            elif GetEventStatus(74100518) == 1:
                assert t410500_x12(10031090, 99110009, 456, 260310003)
            # Ember
            elif GetEventStatus(74100519) == 1:
                assert t410500_x12(10031100, 99110010, 500, 260310005)
            # None
            else:
                assert t410500_x10(text1=10031000, flag1=0, mode1=0)
        # Leave
        elif GetTalkListEntryResult() == 99:
            """State 15"""
            assert t410500_x10(text1=10030100, flag1=0, mode1=0)
            ReportConversationEndToHavokBehavior()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            """State 16"""
            return 0

def t410500_x12(initialTalk=_, itemText=_, goods1=_, soulSpEffect=_):
    assert t410500_x10(text1=initialTalk, flag1=0, mode1=0)
    
    if ComparePlayerInventoryNumber(3, goods1, 2, 0, 0) == 0:
        assert t410500_x10(text1=10031510, flag1=0, mode1=0)
        return 0
    else:
        # Give X
        call = t410500_x13(action2=itemText)
        
        if call.Get() == 0:
            # Take Goods
            PlayerEquipmentQuantityChange(3, goods1, -1)
            
            GiveSpEffectToPlayer(soulSpEffect)
            
            assert t410500_x10(text1=10031500, flag1=0, mode1=0)
        elif call.Done():
            pass
            
    return 0
    
def t410500_x13(action2=_):
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
        
def t410500_x10(text1=_, flag1=0, mode1=0):
    """State 0,4"""
    assert t410500_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
    """State 1"""
    TalkToPlayer(text1, -1, -1, flag1)
    assert CheckSpecificPersonTalkHasEnded(0) == 1
    """State 3"""
    if not mode1:
        pass
    else:
        """State 2"""
        ReportConversationEndToHavokBehavior()
    """State 5"""
    return 0

def t410500_x11():
    """State 0,1"""
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """State 2"""
    return 0
