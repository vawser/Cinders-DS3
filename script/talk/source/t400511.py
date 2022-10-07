# -*- coding: utf-8 -*-
# Talk Start
def t400511_1():
    """ State 0,1 """
    assert GetCurrentStateElapsedTime() > 1
    
    SetEventState(74000920, 0)
    SetEventState(74000925, 0)
    
    """ State 2 """
    while True:
        call = t400511_x7() # Player Loop
        assert IsClientPlayer() == 1
        """ State 3 """
        call = t400511_x8() # Client Loop
        assert not IsClientPlayer()

# Client Loop
def t400511_x8():
    """ State 0,1 """
    assert t400511_x0()
    """ State 2 """
    return 0
    
# Dialogue Handling
def t400511_x0():
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
def t400511_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

# Common Function - Play Talk + Set Flag
def t400511_x2(text2=_, z1=_, flag2=0, mode2=1):
    """ State 0,5 """
    assert t400511_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400511_x3(text1=_, flag1=0, mode1=1):
    """ State 0,4 """
    assert t400511_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
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
def t400511_x7():
    """ State 0,1 """
    while True:
        call = t400511_x9()
        
# Start Dialogue Loop + Clear Dialogue after player is dead
def t400511_x9():
    """ State 0,2 """
    call = t400511_x12()
    assert CheckSelfDeath() == 1
    """ State 1 """
    
# Dialogue Loop
def t400511_x12():
    """ State 0,3 """
    while True:
        call = t400511_x4()
        if GetSelfHP() < 99:
            call = t400511_x13(10131000, 74000920)
            if call.Done():
                pass
            elif IsPlayerDead() == 1:
                break
        elif IsPlayerDead() == 1:
            break
    """ State 1 """
    t400511_x13(10131010, 74000925)

# Empty Function
def t400511_x4():
    """ State 0,1 """
    
# Trigger - Talk
def t400511_x13(text2=_, z1=_):
    """ State 0,2,3 """
    if GetDistanceToPlayer() < 72 and not GetEventStatus(z1):
        """ State 4,7 """
        call = t400511_x2(text2, z1, flag2=0, mode2=1)
        # 88001000
        if call.Done():
            pass
        elif GetDistanceToPlayer() > 72:
            """ State 6 """
            assert t400511_x0()
    else:
        """ State 5 """
        pass
    """ State 8 """
    return 0
    