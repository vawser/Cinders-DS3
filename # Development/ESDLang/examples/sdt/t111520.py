# -*- coding: utf-8 -*-
def t111520_1():
    """ State 0,1,2 """
    while True:
        # talk:60002900:Masanari...
        call = t111520_x8(val1=7009112, z1=71110551, text1=60002900)
        assert DoesSelfHaveSpEffect(200004) == 1 and not GetEventStatus(71110550)
        """ State 3 """
        # talk:65001100:...Oh?  It's you...
        assert t111520_x3(text2=65001100, z2=71110550, flag8=1, mode3=1)

def t111520_x0(val1=7009112, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000,
               val2=-1, val3=-1, val4=-1, val5=-1, val6=-1):
    """ State 0,3 """
    while Loop('mainloop'):
        call = t111520_x11(val1=val1, flag1=flag1, flag2=flag2, flag3=flag3, flag4=flag4, flag5=flag5,
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

def t111520_x1():
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

def t111520_x2():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t111520_x3(text2=65001100, z2=71110550, flag8=1, mode3=1):
    """ State 0,7 """
    assert t111520_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z2, 1)
    """ State 6 """
    if not flag8:
        """ State 1 """
        # talk:65001100:...Oh?  It's you...
        TalkToPlayer(text2, -1, -1, flag8, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:65001100:...Oh?  It's you...
        TalkToPlayer(text2, -1, -1, flag8, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode3:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

def t111520_x4(text1=60002900, z1=71110551, flag7=0, mode2=1):
    """ State 0,7 """
    assert t111520_x2() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 5 """
    if not flag7:
        """ State 1 """
        # talk:60002900:Masanari...
        TalkToPlayer(text1, -1, -1, flag7, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 6 """
        # talk:60002900:Masanari...
        TalkToPlayer(text1, -1, -1, flag7, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode2:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 2 """
    SetEventState(z1, 1)
    """ State 8 """
    return 0

def t111520_x5():
    """ State 0,2 """
    assert t111520_x1()
    """ State 1 """
    ClearTalkProgressData()
    """ State 3 """
    return 0

def t111520_x6(val1=7009112, z1=71110551, text1=60002900):
    """ State 0,1 """
    while True:
        call = t111520_x7(val1=val1, z1=z1, text1=text1)
        assert not f114(2)
        """ State 2 """
        assert t111520_x9() and f114(2) == 1

def t111520_x7(val1=7009112, z1=71110551, text1=60002900):
    """ State 0,1 """
    while True:
        """ State 3 """
        assert (t111520_x0(val1=val1, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0,
                flag6=6000, val2=-1, val3=-1, val4=-1, val5=-1, val6=-1))
        """ State 2 """
        ClearPlayerDamageInfo()
        """ State 4 """
        call = t111520_x10(text1=text1, z1=z1)
        def WhilePaused():
            c1117(10, 10000)
        if call.Done():
            pass
        elif (HasPlayerBeenAttacked() == 1 or (GetTalkInterruptReason() == 5 and IsTalkInProgress() ==
              1) or IsPlayerDead() == 1):
            """ State 5 """
            assert t111520_x5()

def t111520_x8(val1=7009112, z1=71110551, text1=60002900):
    """ State 0,3 """
    while True:
        assert t111520_x9() and (f113() < 0.5 and f116(-1) == 1000000)
        """ State 1 """
        if GetCurrentStateElapsedTime() > 1:
            """ State 2 """
            call = t111520_x6(val1=val1, z1=z1, text1=text1)
            def WhilePaused():
                c1116()
            assert f113() > 1 or not f116(-1) == 1000000
        elif f113() > 1 or not f116(-1) == 1000000:
            pass

def t111520_x9():
    """ State 0,1 """
    assert t111520_x1()
    """ State 2 """
    return 0

def t111520_x10(text1=60002900, z1=71110551):
    """ State 0,1 """
    if f116(10000) == 10:
        """ State 3 """
        call = t111520_x4(text1=text1, z1=z1, flag7=0, mode2=1)
        if call.Done():
            pass
        elif not f116(10000) == 10:
            pass
    elif not f116(10000) == 10 and GetCurrentStateElapsedTime() > 0.5:
        """ State 2 """
        pass
    """ State 4 """
    return 0

def t111520_x11(val1=7009112, flag1=6001, flag2=6001, flag3=6001, flag4=6001, flag5=6001, mode1=0, flag6=6000):
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

