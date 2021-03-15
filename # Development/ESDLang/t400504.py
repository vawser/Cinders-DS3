#-------------------------------------------
#-- Magnum Ursus
#-------------------------------------------
# -*- coding: utf-8 -*-

#----------------------------------------------------
# Main Loop
#----------------------------------------------------
def t400504_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t400504_x0() # Host Player
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400504_x1() # Client Player
        assert not IsClientPlayer()

# Host Player
def t400504_x0():
    """ State 0,1 """
    while True:
        call = t400504_x3()
        assert not GetEventStatus(1000) and not GetEventStatus(1001) and not GetEventStatus(1002)

# Client Player
def t400504_x1():
    """ State 0,1 """
    assert t400504_x2() # Clear Talk State
    """ State 2 """
    return 0

# Clear Talk State
def t400504_x2():
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
def t400504_x3():
    """ State 0,1 """
    call = t400504_x4() # NPC Loop
    assert CheckSelfDeath() == 1
    return 0

# NPC Loop
def t400504_x4():
    """ State 0,5 """
    while True:
        call = t400504_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000) # Interaction State
        if call.Done():
            """ State 3 """
            call = t400504_x8() # Menu Pre-loop
            if call.Done():
                pass
            elif IsAttackedBySomeone() == 1:
                """ State 1 """
                Label('L0')
                call = t400504_x6() # Attack Check
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
                call = t400504_x7() # Distance Check
                if call.Done() and (GetDistanceToPlayer() < 2.5 and GetPlayerYDistance() < 0.249):
                    pass
                elif IsAttackedBySomeone() == 1:
                    Goto('L0')
        elif IsAttackedBySomeone() == 1:
            Goto('L0')
        elif IsPlayerDead() == 1:
            break
    """ State 2 """
    t400504_x2() # Clear Talk State
    
# Interaction State
def t400504_x5(z4=6120, flag4=1015, flag5=6000, flag6=6000, flag7=6000, flag8=6000):
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

# Attack Check
def t400504_x6():
    """ State 0,6 """
    assert t400504_x2() # Clear Talk State
    """ State 3 """
    assert GetCurrentStateElapsedFrames() > 1
    """ State 1 """
    assert not GetEventStatus(1016) and not GetEventStatus(1017)
    """ State 2 """
    if GetDistanceToPlayer() > 12:
        """ State 7 """
        assert t400504_x2() # Clear Talk State
    else:
        """ State 5 """
        pass
    """ State 9 """
    return 0

# Distance Check
def t400504_x7():
    """ State 0,1 """
    if (CheckSpecificPersonMenuIsOpen(-1, 0) == 1 and not CheckSpecificPersonMenuIsOpen(12, 0) and not
        CheckSpecificPersonGenericDialogIsOpen(0)):
        """ State 2,5 """
        if GetDistanceToPlayer() > 12:
            """ State 4 """
            Label('L0')
            assert t400504_x2() # Clear Talk State
    else:
        """ State 3 """
        Goto('L0')
    """ State 6 """
    return 0

# Menu Pre-loop
def t400504_x8():
    """ State 0,1 """
    assert t400504_x9()
    """ State 24 """
    return 0
    
# Menu Loop
def t400504_x9():
    c1110()
    
    
    
    while True:
        ClearTalkListData()
        
        # Purchase Item
        AddTalkListDataIf(GetEventStatus(25009520) == 1, 1, 15010004, -1)
        
        # Tomes
        # AddTalkListData(3, 99002532, -1)
        
        # Relics
        AddTalkListData(7, 99003501, -1)
        
        # Bestow the Lordvessel
        AddTalkListDataIf(GetEventStatus(25009520) == 0 and ComparePlayerInventoryNumber(3, 2002, 2, 0, 0) == 1, 5, 99003500, -1)
        
        # Form Betrothal
        AddTalkListDataIf(GetEventStatus(25008190) == 0 and ComparePlayerInventoryNumber(3, 2000, 2, 0, 0) == 1, 10, 15015040, -1)
        
        # Flirt
        AddTalkListDataIf(GetEventStatus(25008190) == 1, 11, 15015041, -1)
        # Divorce
        AddTalkListDataIf(GetEventStatus(25008190) == 1, 12, 15015042, -1)
        
        # Talk
        AddTalkListData(2, 99010001, -1) 
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Offerings
        if GetTalkListEntryResult() == 1:
            OpenRegularShop(260000, 260899)
            continue
        elif GetTalkListEntryResult() == 2:
            OpenGenericDialog(1, 99010002, 0, 0, 0)
            continue
        # Form Betrothal
        elif GetTalkListEntryResult() == 10:
            SetEventState(25008190, 1)
            PlayerEquipmentQuantityChange(3, 2000, -1)
            OpenGenericDialog(1, 99012185, 0, 0, 0)
            return 0
        # Flirt
        elif GetTalkListEntryResult() == 11:
            # Good
            if GetEventStatus(25008900):
                OpenGenericDialog(1, 99012180, 0, 0, 0)
                GetItemFromItemLot(90180)
            # Neutral
            elif GetEventStatus(25008901):
                OpenGenericDialog(1, 99012181, 0, 0, 0)
            # Bad
            elif GetEventStatus(25008902):
                OpenGenericDialog(1, 99012182, 0, 0, 0)
            continue
        # Divorce
        elif GetTalkListEntryResult() == 12:
            SetEventState(25008190, 0)
            GetItemFromItemLot(800001300)
            OpenGenericDialog(1, 99012182, 0, 0, 0)
            return 0
        # Bestow the Lordvessel
        elif GetTalkListEntryResult() == 5:
            SetEventState(25009520, 1)
            PlayerEquipmentQuantityChange(3, 2002, -1)
            OpenGenericDialog(1, 99010003, 0, 0, 0)
            continue
        # Relics
        elif GetTalkListEntryResult() == 7:
            assert t400504_x11()
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
# Relics
def t400504_x11():
    c1110()
    
    while True:
        ClearTalkListData()
        
        AddTalkListDataIf(GetEventStatus(25000055) == 0 and GetEventStatus(25000050) == 0, 1, 99003506, -1) # Relic of Power
        AddTalkListDataIf(GetEventStatus(25000055) == 0 and GetEventStatus(25000051) == 0, 2, 99003507, -1) # Relic of Insanity
        AddTalkListDataIf(GetEventStatus(25000055) == 1 and GetEventStatus(25000052) == 0, 3, 99003508, -1) # Relic of Legends
        AddTalkListDataIf(GetEventStatus(25000055) == 1 and GetEventStatus(25000053) == 0, 4, 99003509, -1) # Relic of Myths
        
        # Claim Relic of Power
        AddTalkListDataIf(GetEventStatus(25000055) == 0 and GetEventStatus(25000030) == 1 and GetEventStatus(25001019) == 1 and GetEventStatus(25000050) == 0, 10, 99003502, -1)
        
        # Claim Relic of Insanity
        AddTalkListDataIf(GetEventStatus(25000055) == 0 and GetEventStatus(25000031) == 1 and GetEventStatus(25001019) == 1 and GetEventStatus(25000051) == 0, 11, 99003503, -1)
        
        # Claim Relic of Legends
        AddTalkListDataIf(GetEventStatus(25000055) == 1 and GetEventStatus(25000030) == 1 and GetEventStatus(25001019) == 1 and GetEventStatus(25000052) == 0, 12, 99003504, -1)
        
        # Claim Relic of Myths
        AddTalkListDataIf(GetEventStatus(25000055) == 1 and GetEventStatus(25000031) == 1 and GetEventStatus(25001019) == 1 and GetEventStatus(25000053) == 0, 13, 99003505, -1)
        
        # Leave
        AddTalkListData(99, 15000005, -1)
        
        assert (not CheckSpecificPersonGenericDialogIsOpen(2) and not (CheckSpecificPersonMenuIsOpen(-1,
                2) == 1 and not CheckSpecificPersonGenericDialogIsOpen(2)))
        ShowShopMessage(1)
        
        # Relic of Power
        if GetTalkListEntryResult() == 1:
            # Succeeded
            if GetEventStatus(25000030) == 1 and GetEventStatus(25001019) == 1:
                OpenGenericDialog(1, 99003511, 0, 0, 0)
            # Eligible
            elif GetEventStatus(25000030) == 1:
                OpenGenericDialog(1, 99003510, 0, 0, 0)
            # Failed
            elif GetEventStatus(25000030) == 0:
                OpenGenericDialog(1, 99003512, 0, 0, 0)
            return 0
        # Relic of Insanity
        elif GetTalkListEntryResult() == 2:
            # Succeeded
            if GetEventStatus(25000031) == 1 and GetEventStatus(25001019) == 1:
                OpenGenericDialog(1, 99003521, 0, 0, 0)
            # Eligible
            elif GetEventStatus(25000031) == 1:
                OpenGenericDialog(1, 99003520, 0, 0, 0)
            # Failed
            elif GetEventStatus(25000031) == 0:
                OpenGenericDialog(1, 99003522, 0, 0, 0)
            return 0
        # Relic of Legends
        elif GetTalkListEntryResult() == 3:
            # Succeeded
            if GetEventStatus(25000030) == 1 and GetEventStatus(25001019) == 1:
                OpenGenericDialog(1, 99003531, 0, 0, 0)
            # Eligible
            elif GetEventStatus(25000030) == 1:
                OpenGenericDialog(1, 99003530, 0, 0, 0)
            # Failed
            elif GetEventStatus(25000030) == 0:
                OpenGenericDialog(1, 99003532, 0, 0, 0)
            return 0
        # Relic of Myths
        elif GetTalkListEntryResult() == 4:
            # Succeeded
            if GetEventStatus(25000031) == 1 and GetEventStatus(25001019) == 1:
                OpenGenericDialog(1, 99003541, 0, 0, 0)
            # Eligible
            elif GetEventStatus(25000031) == 1:
                OpenGenericDialog(1, 99003540, 0, 0, 0)
            # Failed
            elif GetEventStatus(25000031) == 0:
                OpenGenericDialog(1, 99003542, 0, 0, 0)
            return 0
        # Claim Relic of Power
        elif GetTalkListEntryResult() == 10:
            GetItemFromItemLot(80400)
            SetEventState(25000050, 1)
            return 0
        # Claim Relic of Insanity
        elif GetTalkListEntryResult() == 11:
            GetItemFromItemLot(80410)
            SetEventState(25000051, 1)
            return 0
        # Claim Relic of Legends
        elif GetTalkListEntryResult() == 12:
            GetItemFromItemLot(80420)
            SetEventState(25000052, 1)
            return 0
        # Claim Relic of Myths
        elif GetTalkListEntryResult() == 13:
            GetItemFromItemLot(80430)
            SetEventState(25000053, 1)
            return 0
        elif not (CheckSpecificPersonMenuIsOpen(1, 0) == 1 and not CheckSpecificPersonGenericDialogIsOpen(0)):
            return 0
            
#----------------------------------------------------
# Utility
#----------------------------------------------------
def t400504_x50(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 3, 4, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1

def t400504_x51(action1=_):
    """ State 0,1 """
    OpenGenericDialog(8, action1, 0, 3, 2)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    if GetGenericDialogButtonResult() == 1:
        """ State 3 """
        return 0
    else:
        """ State 4 """
        return 1
        
