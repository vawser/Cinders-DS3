#------------------------------
# The Rock
#------------------------------
def t511507_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t511507_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t511507_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t511507_x0():
    """ State 0,1 """
    while True:
        call = t511507_x3()

# Client Player
def t511507_x1():
    """ State 0,1 """
    assert t511507_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t511507_x2():
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
    
# Check Death
def t511507_x3():
    """ State 0,1 """
    call = t511507_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t511507_x4():
    """ State 0,5 """
    while True:
        call = t511507_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t511507_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t511507_x6() # Attack Check
                def ExitPause():
                    RemoveMyAggro()
                if call.Done():
                    pass
                elif IsPlayerDead() == 1:
                    break
            elif IsPlayerDead() == 1:
                break
            elif GetDistanceToPlayer() > 8 or GetPlayerYDistance() > 0.25:
                """ State 4 """
                call = t511507_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 7.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t511507_x2() # Clear Talk State
    
# Interaction State
def t511507_x5():
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6055):
            break
    """ State 4 """
    return 0

# Attack Check
def t511507_x6():
    """ State 0,6 """
    assert t511507_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t511507_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t511507_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t511507_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t511507_x8():
    """ State 0,1 """
    assert t511507_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t511507_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Configure Training Arena
        AddTalkListData(1, 80054100, -1)
        
        # Spawn Enemy
        AddTalkListData(2, 80054101, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Configure Training Arena
        if GetTalkListEntryResult() == 1:
            assert t511507_x20()
            return 0
        # Spawn Enemy
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000500, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Talk Function
def t511507_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t511507_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
    
# Talk Cleanup
def t511507_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
# Training Menu
def t511507_x20():
    while True:
        ClearTalkListData()
        
        # Player Status
        AddTalkListData(1, 80054110, -1)
        # Enemy Status
        AddTalkListData(2, 80054510, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
         
        # Player Status
        if GetTalkListEntryResult() == 1:
            assert t511507_x21()
            return 0
        # Enemy Status
        elif GetTalkListEntryResult() == 2:
            assert t511507_x22()
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

    return 0
    
# Player Status
def t511507_x21():
    while True:
        ClearTalkListData()
        
        # Invulerability (off)
        AddTalkListDataIf(GetEventStatus(25000510) == 1, 10, 80054111, -1)
        # Invulerability (on)
        AddTalkListDataIf(GetEventStatus(25000510) == 0, 11, 80054111, -1)
        
        # Endless Stamina (off)
        AddTalkListDataIf(GetEventStatus(25000511) == 1, 12, 80054113, -1)
        # Endless Stamina (on)
        AddTalkListDataIf(GetEventStatus(25000511) == 0, 13, 80054113, -1)
        
        # Endless Focus (off)
        AddTalkListDataIf(GetEventStatus(25000512) == 1, 14, 80054115, -1)
        # Endless Focus (on)
        AddTalkListDataIf(GetEventStatus(25000512) == 0, 15, 80054115, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)

        # Invulerability (off)
        if GetTalkListEntryResult() == 10:
            SetEventState(25000510, 0)
            assert t511507_x30(80054211)
            return 0
        # Invulerability (on)
        elif GetTalkListEntryResult() == 11:
            SetEventState(25000510, 1)
            assert t511507_x30(80054212)
            return 0
        # Endless Stamina (off)
        elif GetTalkListEntryResult() == 12:
            SetEventState(25000511, 0)
            assert t511507_x30(80054213)
            return 0
        # Endless Stamina (on)
        elif GetTalkListEntryResult() == 13:
            SetEventState(25000511, 1)
            assert t511507_x30(80054214)
            return 0
        # Endless Focus (off)
        elif GetTalkListEntryResult() == 14:
            SetEventState(25000512, 0)
            assert t511507_x30(80054215)
            return 0
        # Endless Focus (on)
        elif GetTalkListEntryResult() == 15:
            SetEventState(25000512, 1)
            assert t511507_x30(80054216)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

    return 0
    
# Enemy Status
def t511507_x22():
    while True:
        ClearTalkListData()
        
        # Enemy Type
        AddTalkListData(1, 80054511, -1)
        
        # Hostility (off)
        #AddTalkListDataIf(GetEventStatus(25000520) == 1, 10, 80054512, -1)
        # Hostility (on)
        #AddTalkListDataIf(GetEventStatus(25000520) == 0, 11, 80054512, -1)
        
        # Endless Regeneration (off)
        AddTalkListDataIf(GetEventStatus(25000521) == 1, 12, 80054514, -1)
        # Endless Regeneration (on)
        AddTalkListDataIf(GetEventStatus(25000521) == 0, 13, 80054514, -1)
        
        # Invulerability (off)
        AddTalkListDataIf(GetEventStatus(25000522) == 1, 14, 80054516, -1)
        # Invulerability (on)
        AddTalkListDataIf(GetEventStatus(25000522) == 0, 15, 80054516, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
         
        # Enemy Type
        if GetTalkListEntryResult() == 1:
            assert t511507_x23()
            return 0
        # Hostility (off)
        elif GetTalkListEntryResult() == 10:
            SetEventState(25000520, 0)
            assert t511507_x30(80054612)
            return 0
        # Hostility (on)
        elif GetTalkListEntryResult() == 11:
            SetEventState(25000520, 1)
            assert t511507_x30(80054613)
            return 0
        # Endless Regeneration (off)
        elif GetTalkListEntryResult() == 12:
            SetEventState(25000521, 0)
            assert t511507_x30(80054615)
            return 0
        # Endless Regeneration (on)
        elif GetTalkListEntryResult() == 13:
            SetEventState(25000521, 1)
            assert t511507_x30(80054614)
            return 0
        # Invulerability (off)
        elif GetTalkListEntryResult() == 14:
            SetEventState(25000522, 0)
            assert t511507_x30(80054617)
            return 0
        # Invulerability (on)
        elif GetTalkListEntryResult() == 15:
            SetEventState(25000522, 1)
            assert t511507_x30(80054616)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

    return 0
    
# Enemy Type
def t511507_x23():
    while True:
        ClearTalkListData()
        
        # Soldier
        AddTalkListDataIf(GetEventStatus(25000550) == 0, 1, 80054520, -1)
        # Soldier
        AddTalkListDataIf(GetEventStatus(25000550) == 1, 1, 80054530, -1)
        
        # Knight
        AddTalkListDataIf(GetEventStatus(25000551) == 0, 2, 80054521, -1)
        # Knight
        AddTalkListDataIf(GetEventStatus(25000551) == 1, 2, 80054531, -1)
        
        # Dog
        AddTalkListDataIf(GetEventStatus(25000552) == 0, 3, 80054522, -1)
        # Dog
        AddTalkListDataIf(GetEventStatus(25000552) == 1, 3, 80054532, -1)
        
        # Elder Ghru
        AddTalkListDataIf(GetEventStatus(25000553) == 0, 4, 80054523, -1)
        # Elder Ghru
        AddTalkListDataIf(GetEventStatus(25000553) == 1, 4, 80054533, -1)
        
        # Skeleton
        AddTalkListDataIf(GetEventStatus(25000554) == 0, 5, 80054524, -1)
        # Skeleton
        AddTalkListDataIf(GetEventStatus(25000554) == 1, 5, 80054534, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
    
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
         
        # Soldier
        if GetTalkListEntryResult() == 1:
            SetEventState(25000550, 1)
            SetEventState(25000551, 0)
            SetEventState(25000552, 0)
            SetEventState(25000553, 0)
            SetEventState(25000554, 0)
            assert t511507_x30(80054550)
            return 0
        # Soldier
        elif GetTalkListEntryResult() == 2:
            SetEventState(25000550, 0)
            SetEventState(25000551, 1)
            SetEventState(25000552, 0)
            SetEventState(25000553, 0)
            SetEventState(25000554, 0)
            assert t511507_x30(80054551)
            return 0
        # Soldier
        elif GetTalkListEntryResult() == 3:
            SetEventState(25000550, 0)
            SetEventState(25000551, 0)
            SetEventState(25000552, 1)
            SetEventState(25000553, 0)
            SetEventState(25000554, 0)
            assert t511507_x30(80054552)
            return 0
        # Soldier
        elif GetTalkListEntryResult() == 4:
            SetEventState(25000550, 0)
            SetEventState(25000551, 0)
            SetEventState(25000552, 0)
            SetEventState(25000553, 1)
            SetEventState(25000554, 0)
            assert t511507_x30(80054553)
            return 0
        # Soldier
        elif GetTalkListEntryResult() == 5:
            SetEventState(25000550, 0)
            SetEventState(25000551, 0)
            SetEventState(25000552, 0)
            SetEventState(25000553, 0)
            SetEventState(25000554, 1)
            assert t511507_x30(80054554)
            return 0
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

    return 0
    
def t511507_x30(action=_):
    OpenGenericDialog(8, action, 1, 0, 1)
    
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    
    if GetGenericDialogButtonResult() == 1:
        return 0
    else:
        return 1