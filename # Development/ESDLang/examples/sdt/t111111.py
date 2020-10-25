# -*- coding: utf-8 -*-
def t111111_1():
    """ State 0,1 """
    t111111_x11()
    def WhilePaused():
        c1116()

def t111111_x0(val1=_, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000,
               val2=-1, val3=-1, val4=-1, val5=-1, val6=-1):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111111_x8(val1=val1, flag1=flag1, flag2=flag2, flag3=flag3, flag4=flag4, flag5=flag5,
                          mode1=mode1, flag6=flag6)
        if call.Done():
            break
        elif (not f116(-1) == val2 and not f116(-1) == val3 and not f116(-1) == val4 and not DoesSelfHaveSpEffect(4510)
              and not val2 == -1 and not f116(-1) == val5 and not f116(-1) == val6):
            pass
        """ State 1 """
        while True:
            assert (f116(-1) == val2 or f116(-1) == val3 or f116(-1) == val4 or (DoesSelfHaveSpEffect(4510)
                    == 1 and f116(-1) == val5 and f116(-1) == val6))
            """ State 2 """
            if GetCurrentStateElapsedTime() > 0.5:
                Continue('mainloop')
            elif (not f116(-1) == val2 and not f116(-1) == val3 and not f116(-1) == val4 and not DoesSelfHaveSpEffect(4510)
                  and not f116(-1) == val5 and not f116(-1) == val6):
                pass
    """ State 4 """
    SetTalkTime(0.1)
    return 0

def t111111_x1():
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

def t111111_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111111_x3(text2=11102400, z3=71110057, flag8=0, mode4=1):
    """ State 0,7 """
    assert t111111_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag8:
        """ State 1 """
        # talk:11102400:Is there something special about it...?
        TalkToPlayer(text2, -1, -1, flag8, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:11102400:Is there something special about it...?
        TalkToPlayer(text2, -1, -1, flag8, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode4:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z3, 1)
    """ State 8 """
    return 0

def t111111_x4(text1=_, flag7=0, mode3=1):
    """ State 0,6 """
    assert t111111_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not flag7:
        """ State 1 """
        TalkToPlayer(text1, -1, -1, flag7, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        TalkToPlayer(text1, -1, -1, flag7, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 3 """
    if not mode3:
        pass
    else:
        """ State 2 """
        ReportConversationEndToHavokBehavior()
    """ State 7 """
    return 0

def t111111_x5(action1=13011011):
    """ State 0,1 """
    # action:13011011:The burner smells faintly of sakura flowers.
    OpenGenericDialog(7, action1, 1, 0, 1)
    assert not CheckSpecificPersonGenericDialogIsOpen(0)
    """ State 2 """
    return 0

def t111111_x6():
    """ State 0,2 """
    assert t111111_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111111_x7(z1=10000, z2=_, val7=_, mode2=1, val8=5):
    """ State 0,1 """
    def WhilePaused():
        c1117(z2, z1)
    if f116(z1) == val7 and mode2 == 1:
        """ State 2 """
        return 0
    elif GetCurrentStateElapsedTime() > val8:
        """ State 3 """
        return 1

def t111111_x8(val1=_, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000):
    """ State 0,1 """
    while Loop('mainloop'):
        assert not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not IsCharacterDisabled()
        """ State 3 """
        assert (GetEventStatus(flag1) == 1 or GetEventStatus(flag2) == 1 or GetEventStatus(flag3) ==
                1 or GetEventStatus(flag4) == 1 or GetEventStatus(flag5) == 1)
        """ State 4 """
        while True:
            assert not GetEventStatus(flag6)
            """ State 2 """
            if (not (not GetOneLineHelpStatus() and not IsClientPlayer() and not IsPlayerDead() and not
                IsCharacterDisabled())):
                Continue('mainloop')
            elif (not GetEventStatus(flag1) and not GetEventStatus(flag2) and not GetEventStatus(flag3)
                  and not GetEventStatus(flag4) and not GetEventStatus(flag5)):
                Continue('mainloop')
            elif GetEventStatus(flag6) == 1:
                pass
            elif CheckActionButtonArea(val1 + mode1) and not f116(10000) == 90:
                Break('mainloop')
    """ State 5 """
    SetTalkTime(0.1)
    return 0

def t111111_x9():
    """ State 0,5 """
    if not GetEventStatus(71120137):
        """ State 3,7 """
        # talk:11104700:My Lord...
        assert t111111_x4(text1=11104700, flag7=0, mode3=1)
        """ State 9 """
        assert t111111_x7(z1=10000, z2=4, val7=4, mode2=1, val8=5) and not DoesPlayerHaveSpEffect(31102)
        """ State 1 """
        SetEventState(71110099, 1)
        assert GetCurrentStateElapsedTime() > 1
        """ State 6 """
        SetEventState(71120137, 1)
    else:
        """ State 4 """
        pass
    """ State 8 """
    # talk:11104750:...how is the wound?
    assert t111111_x4(text1=11104750, flag7=0, mode3=1)
    """ State 2 """
    SetEventState(8415, 1)
    SetEventState(71120149, 1)
    """ State 10 """
    return 0

def t111111_x10():
    """ State 0,2,1,4 """
    # action:13011011:The burner smells faintly of sakura flowers.
    assert t111111_x5(action1=13011011)
    """ State 3 """
    SetEventState(71110064, 1)
    """ State 5 """
    return 0

def t111111_x11():
    """ State 0,3 """
    while True:
        if GetEventStatus(71110072) == 1 and not GetEventStatus(8415):
            """ State 2,6 """
            Label('L0')
            assert (t111111_x0(val1=9861, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                    mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1))
            """ State 11 """
            ClearPlayerDamageInfo()
            call = t111111_x15()
            if call.Done():
                continue
            elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                  == 1) or IsPlayerDead() == 1 or f116(10000) == 90):
                pass
        elif GetEventStatus(71110056) == 1 and not GetEventStatus(71110057):
            """ State 4,8 """
            assert (t111111_x0(val1=9860, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                    mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1))
            """ State 9 """
            TurnCharacterToFaceEntity(-1, 10000, -1)
            ClearPlayerDamageInfo()
            call = t111111_x12()
            def WhilePaused():
                c1117(1, 10000)
                SetTalkTime(0.01)
                c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
            if call.Done():
                continue
            elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                  == 1) or IsPlayerDead() == 1 or f116(10000) == 90):
                pass
        elif not GetEventStatus(71110064) and GetEventStatus(8400) == 1:
            """ State 1,5 """
            call = t111111_x0(val1=9860, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001,
                              mode1=0, flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1)
            if call.Done():
                """ State 7 """
                TurnCharacterToFaceEntity(-1, 10000, -1)
                ClearPlayerDamageInfo()
                call = t111111_x10()
                def WhilePaused():
                    c1117(1, 10000)
                    SetTalkTime(0.01)
                    c1120(10, 0, 9, 9, 9, 9, 9, 9, 9)
                if call.Done():
                    continue
                elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress()
                      == 1) or IsPlayerDead() == 1 or f116(10000) == 90):
                    pass
            elif GetEventStatus(71110072) == 1:
                Goto('L0')
        """ State 10 """
        assert t111111_x6()

def t111111_x12():
    """ State 0,3 """
    if GetEventStatus(71110056) == 1 and not GetEventStatus(71110057):
        """ State 2,7 """
        assert t111111_x14()
        """ State 6 """
        # talk:11102400:Is there something special about it...?
        assert t111111_x3(text2=11102400, z3=71110057, flag8=0, mode4=1)
    else:
        """ State 1,5 """
        # action:13011011:The burner smells faintly of sakura flowers.
        assert t111111_x5(action1=13011011)
        """ State 4 """
        SetEventState(71110064, 1)
    """ State 8 """
    return 0

def t111111_x13():
    """ State 0 """
    assert GetCurrentStateElapsedFrames() > 5
    """ State 1 """
    assert not DoesPlayerHaveSpEffect(4511)
    """ State 2 """
    def WhilePaused():
        c1120(1, 0, 9, 9, 9, 9, 9, 9, 9)
    assert t111111_x9()
    """ State 3 """
    return 0

def t111111_x14():
    """ State 0,1 """
    SetEventState(71110695, 1)
    """ State 2 """
    assert GetCurrentStateElapsedFrames() > 10 and f116(-1) == 1000000
    """ State 3 """
    return 0

def t111111_x15():
    """ State 0,1 """
    SetEventState(71110097, 1)
    """ State 2 """
    if GetEventStatus(71110050) == 1:
        """ State 3 """
        pass
    else:
        """ State 5 """
        def WhilePaused():
            SetTalkTime(0.01)
        assert t111111_x7(z1=10000, z2=720000, val7=720000, mode2=1, val8=5)
        """ State 4 """
        SetEventState(71110050, 1)
        assert not f116(10000) == 720000
    """ State 6 """
    TurnCharacterToFaceEntity(-1, 10000, 1110701)
    def WhilePaused():
        c1117(720001, 10000)
        SetTalkTime(0.01)
    assert t111111_x13()
    """ State 7 """
    return 0

