#------------------------------
# Last Pilgrim
#------------------------------
def t511502_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t511502_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t511502_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t511502_x0():
    """ State 0,1 """
    while True:
        call = t511502_x3()

# Client Player
def t511502_x1():
    """ State 0,1 """
    assert t511502_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t511502_x2():
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
def t511502_x3():
    """ State 0,1 """
    call = t511502_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t511502_x4():
    """ State 0,5 """
    while True:
        call = t511502_x5() # Interaction State
        if call.Done():
            """ State 3 """
            call = t511502_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t511502_x6() # Attack Check
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
                call = t511502_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 7.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t511502_x2() # Clear Talk State
    
# Interaction State
def t511502_x5():
    """ State 0,1 """
    while True:
        assert (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
                and not IsPlayerDead() and not IsCharacterDisabled())
        """ State 2 """
        if (not (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer()
            and not IsPlayerDead() and not IsCharacterDisabled())):
            pass
        elif CheckActionButtonArea(6051):
            break
    """ State 4 """
    return 0

# Attack Check
def t511502_x6():
    """ State 0,6 """
    assert t511502_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 2 """
    if GetDistanceToPlayer() > 3:
        """ State 7 """
        assert t511502_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t511502_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 3:
            """ State 4 """
            Label('L0')
            assert t511502_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t511502_x8():
    """ State 0,1 """
    assert t511502_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t511502_x9():
    c1110()
    while True:
        ClearTalkListData()
       
        # Castigations: Player
        AddTalkListData(1, 80020000, -1)
        
        # Castigations: Enemy
        AddTalkListData(2, 80020001, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Player Castigations
        if GetTalkListEntryResult() == 1:
            assert t511502_x100()
            continue
        # Enemy Castigations
        elif GetTalkListEntryResult() == 2:
            assert t511502_x101()
            continue
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0

# Talk Function
def t511502_x10(text1=_, flag1=0, mode1=_):
    """ State 0,4 """
    assert t511502_x11() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t511502_x11():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0
    
#----------------------------------------------------
# Castigations (Player)
#----------------------------------------------------
def t511502_x100():
    c1110()
     
    while True:
        ClearTalkListData()
        
        # Abyssal Maw
        AddTalkListDataIf(GetEventStatus(25000900) == 0, 100, 80020100, -1)
        
        # Abyssal Maw (selected)
        AddTalkListDataIf(GetEventStatus(25000900) == 1, 200, 80020200, -1)

        # Brittle Bones
        AddTalkListDataIf(GetEventStatus(25000901) == 0, 103, 80020101, -1)
        
        # Brittle Bones (selected)
        AddTalkListDataIf(GetEventStatus(25000901) == 1, 203, 80020201, -1)
        
        # Fresh Meat
        AddTalkListDataIf(GetEventStatus(25000902) == 0, 101, 80020102, -1)
        
        # Fresh Meat (selected)
        AddTalkListDataIf(GetEventStatus(25000902) == 1, 201, 80020202, -1)
        
        # Fading Flasks
        AddTalkListDataIf(GetEventStatus(25000903) == 0, 102, 80020103, -1)
        
        # Fading Flasks (selected)
        AddTalkListDataIf(GetEventStatus(25000903) == 1, 202, 80020203, -1)
        
        # Lethargic Mind
        AddTalkListDataIf(GetEventStatus(25000904) == 0, 104, 80020104, -1)
        
        # Lethargic Mind (selected)
        AddTalkListDataIf(GetEventStatus(25000904) == 1, 204, 80020204, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)

        # Abyssal Maw
        if GetTalkListEntryResult() == 100:
            assert t511502_x110(25000900, 1, 80020300)
            continue
        # Abyssal Maw (enabled)
        elif GetTalkListEntryResult() == 200:
            assert t511502_x110(25000900, 0, 80020400)
            continue
        # Fresh Meat
        elif GetTalkListEntryResult() == 101:
            assert t511502_x110(25000902, 1, 80020302)
            continue
        # Fresh Meat (enabled)
        elif GetTalkListEntryResult() == 201:
            assert t511502_x110(25000902, 0, 80020402)
            continue
        # Fading Flasks
        elif GetTalkListEntryResult() == 102:
            assert t511502_x110(25000903, 1, 80020303)
            continue
        # Fading Flasks
        elif GetTalkListEntryResult() == 202:
            assert t511502_x110(25000903, 0, 80020403)
            continue
        # Brittle Bones
        elif GetTalkListEntryResult() == 103:
            assert t511502_x110(25000901, 1, 80020301)
            continue
        # Brittle Bones (enabled)
        elif GetTalkListEntryResult() == 203:
            assert t511502_x110(25000901, 0, 80020401)
            continue
        # Lethargic Mind
        elif GetTalkListEntryResult() == 104:
            assert t511502_x110(25000904, 1, 80020304)
            continue
        # Lethargic Mind (enabled)
        elif GetTalkListEntryResult() == 204:
            assert t511502_x110(25000904, 0, 80020404)
            continue
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Castigations (Enemy)
#----------------------------------------------------
def t511502_x101():
    c1110()
     
    while True:
        ClearTalkListData()
        
        # Stout Hearts
        AddTalkListDataIf(GetEventStatus(25000907) == 0, 100, 80020107, -1)
        
        # Stout Hearts (selected)
        AddTalkListDataIf(GetEventStatus(25000907) == 1, 200, 80020207, -1)
        
        # Regenerative Skin
        AddTalkListDataIf(GetEventStatus(25000908) == 0, 101, 80020108, -1)
        
        # Regenerative Skin (selected)
        AddTalkListDataIf(GetEventStatus(25000908) == 1, 201, 80020208, -1)
        
        # Wounded Fury
        AddTalkListDataIf(GetEventStatus(25000905) == 0, 102, 80020105, -1)
        
        # Wounded Fury (selected)
        AddTalkListDataIf(GetEventStatus(25000905) == 1, 202, 80020205, -1)
        
        # Thick Hides
        AddTalkListDataIf(GetEventStatus(25000906) == 0, 103, 80020106, -1)
        
        # Thick Hides (selected)
        AddTalkListDataIf(GetEventStatus(25000906) == 1, 203, 80020206, -1)
        
        # Spectral Shift
        AddTalkListDataIf(GetEventStatus(25000909) == 0, 104, 80020109, -1)
        
        # Spectral Shift (selected)
        AddTalkListDataIf(GetEventStatus(25000909) == 1, 204, 80020209, -1)
        
        # Relentlessness
        AddTalkListDataIf(GetEventStatus(25000910) == 0, 105, 80020110, -1)
        
        # Relentlessness (selected)
        AddTalkListDataIf(GetEventStatus(25000910) == 1, 205, 80020210, -1)
        
        # Alacrity
        AddTalkListDataIf(GetEventStatus(25000911) == 0, 106, 80020111, -1)
        
        # Alacrity (selected)
        AddTalkListDataIf(GetEventStatus(25000911) == 1, 206, 80020211, -1)
        
        # Feeding Frenzy
        AddTalkListDataIf(GetEventStatus(25000912) == 0, 107, 80020112, -1)
        
        # Feeding Frenzy
        AddTalkListDataIf(GetEventStatus(25000912) == 1, 207, 80020212, -1)
        
        # Leave
        AddTalkListData(99, 80000999, -1)
        
        ShowShopMessage(1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1, 2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Stout Hearts
        if GetTalkListEntryResult() == 100:
            assert t511502_x110(25000907, 1, 80020307)
            continue
        # Stout Hearts (enabled)
        elif GetTalkListEntryResult() == 200:
            assert t511502_x110(25000907, 0, 80020407)
            continue
        # Regenerative Skin
        elif GetTalkListEntryResult() == 101:
            assert t511502_x110(25000908, 1, 80020308)
            continue
        # Regenerative Skin (enabled)
        elif GetTalkListEntryResult() == 201:
            assert t511502_x110(25000908, 0, 80020408)
            continue
        # Wounded Fury
        elif GetTalkListEntryResult() == 102:
            assert t511502_x110(25000905, 1, 80020305)
            continue
        # Wounded Fury (enabled)
        elif GetTalkListEntryResult() == 202:
            assert t511502_x110(25000905, 0, 80020405)
            continue
        # Thick Hides
        elif GetTalkListEntryResult() == 103:
            assert t511502_x110(25000906, 1, 80020306)
            continue
        # Thick Hides (enabled)
        elif GetTalkListEntryResult() == 203:
            assert t511502_x110(25000906, 0, 80020406)
        # Spectral Shift
        elif GetTalkListEntryResult() == 104:
            assert t511502_x110(25000909, 1, 80020309)
            continue
        # Spectral Shift (enabled)
        elif GetTalkListEntryResult() == 204:
            assert t511502_x110(25000909, 0, 80020409)
        # Relentlessness
        elif GetTalkListEntryResult() == 105:
            assert t511502_x110(25000910, 1, 80020310)
            continue
        # Relentlessness (enabled)
        elif GetTalkListEntryResult() == 205:
            assert t511502_x110(25000910, 0, 80020410)
        # Alacrity
        elif GetTalkListEntryResult() == 106:
            assert t511502_x110(25000911, 1, 80020311)
            continue
        # Alacrity (enabled)
        elif GetTalkListEntryResult() == 206:
            assert t511502_x110(25000911, 0, 80020411)
        # Feeding Frenzy
        elif GetTalkListEntryResult() == 107:
            assert t511502_x110(25000912, 1, 80020312)
            continue
        # Feeding Frenzy (enabled)
        elif GetTalkListEntryResult() == 207:
            assert t511502_x110(25000912, 0, 80020412)
        # Leave
        elif not (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
# Castigation prompt
def t511502_x110(flag=_, value=_, text=_):
    assert t511502_x150(text)
            
    c1_110()

    ClearTalkListData()
    
    # Yes
    AddTalkListData(1, 80000103, -1)
    
    # No
    AddTalkListData(2, 80000104, -1)
    
    OpenConversationChoicesMenu(0)
    
    assert not (CheckSpecificPersonMenuIsOpen(12, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0))

    # Yes
    if GetTalkListEntryResult() == 1:
        SetEventState(flag, value)
        
        return 0
    # Cancel
    elif GetTalkListEntryResult() == 2:
        return 1
    else:
        return 2
        
# Description Prompt
def t511502_x150(action1=_):
    """State 0,1"""
    OpenGenericDialog(8, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """State 2"""
    return 0
    