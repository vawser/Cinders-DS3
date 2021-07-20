# -*- coding: utf-8 -*-
# Talk Start
def t470000_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    """ State 2 """
    while True:
        call = t470000_x7() # Player Loop
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t470000_x8() # Client Loop
        assert not IsClientPlayer()

# Client Loop
def t470000_x8():
    """ State 0,1 """
    assert t470000_x0()
    """ State 2 """
    return 0
    
# Dialogue Handling
def t470000_x0():
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

# Dialogue Cleanup
def t470000_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

# Common Function - Play Talk + Set Flag
def t470000_x2(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t470000_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
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

# Common Function - Play Talk
def t470000_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t470000_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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

# Player Loop
def t470000_x7():
    """ State 0,1 """
    while True:
        call = t470000_x9()
        
# Start Dialogue Loop + Clear Dialogue after player is dead
def t470000_x9():
    """ State 0,2 """
    call = t470000_x12()
    
# Dialogue Loop
def t470000_x12():
    """ State 0,3 """
    while True:
        call = t470000_x4()
        
        # Survive!
        if GetEventStatus(25009680) == 1:
            SetEventState(25009680, 0)
            call = t470000_x13(88003000)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Round 1
        elif GetEventStatus(25009681) == 1:
            SetEventState(25009681, 0)
            call = t470000_x13(88003010)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Round 2
        elif GetEventStatus(25009682) == 1:
            SetEventState(25009682, 0)
            call = t470000_x13(88003020)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Round 3
        elif GetEventStatus(25009683) == 1:
            SetEventState(25009683, 0)
            call = t470000_x13(88003030)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Round 4
        elif GetEventStatus(25009684) == 1:
            SetEventState(25009684, 0)
            call = t470000_x13(88003040)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Round 5
        elif GetEventStatus(25009685) == 1:
            SetEventState(25009685, 0)
            call = t470000_x13(88003050)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        # Cycle Complete
        elif GetEventStatus(25009686) == 1:
            SetEventState(25009686, 0)
            call = t470000_x13(88003060)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        
        elif IsPlayerDead() == 1:
            break
    """ State 1 """
    t470000_x13(88002010)

# Empty Function
def t470000_x4():
    """ State 0,1 """
    
# Trigger - Talk
def t470000_x13(text2=_):
    """ State 0,2,3 """
    if GetDistanceToPlayer() < 9999:
        """ State 4,7 """
        call = t470000_x3(text2, 0, 1)
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 9999:
            """ State 6 """
            assert t470000_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0
    