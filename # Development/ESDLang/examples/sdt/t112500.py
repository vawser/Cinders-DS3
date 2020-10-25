# -*- coding: utf-8 -*-
def t112500_1():
    """ State 0,1 """
    # talk:90000050:Eavesdrop dummy text (the Imperial Prince is in the Moon-view tower)
    t112500_x3(text1=90000050, val1=10, z1=962050)

def t112500_x0():
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

def t112500_x1():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t112500_x2(text1=90000050, flag1=0, mode1=1):
    """ State 0,4 """
    assert t112500_x1() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 1 """
    # talk:90000050:Eavesdrop dummy text (the Imperial Prince is in the Moon-view tower)
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

def t112500_x3(text1=90000050, val1=10, z1=962050):
    """ State 0,2 """
    while True:
        call = t112500_x4(text1=text1, val1=val1, z1=z1)
        if CheckSelfDeath() == 1:
            break
        elif DoesSelfHaveSpEffect(4600) == 1:
            """ State 1 """
            assert not DoesSelfHaveSpEffect(4600)
    """ State 3 """
    assert t112500_x5()
    """ State 4 """
    return 0

def t112500_x4(text1=90000050, val1=10, z1=962050):
    """ State 0,5 """
    while Loop('mainloop'):
        if (not GetOneLineHelpStatus() and not IsTalkingToSomeoneElse() and not IsClientPlayer() and
            not IsPlayerDead() and not IsCharacterDisabled()):
            """ State 1 """
            while True:
                if GetDistanceToPlayer() < val1 and not DoesSelfHaveSpEffect(4600):
                    """ State 12 """
                    SetEventState(79625000, 1)
                    def ExitPause():
                        SetEventState(79625000, 0)
                    if DoesPlayerHaveSpEffect(108800) == 1:
                        """ State 3 """
                        ClearPlayerDamageInfo()
                        """ State 4 """
                        RemoveMyAggro()
                        """ State 14 """
                        call = t112500_x2(text1=text1, flag1=0, mode1=1)
                        def ExitPause():
                            GiveSpEffectToPlayer(108801)
                        if call.Done():
                            pass
                        elif IsPlayerDead() == 1:
                            """ State 6,16 """
                            return 0
                        elif IsAttackedBySomeone() == 1:
                            """ State 7,15 """
                            Label('L0')
                            assert t112500_x0()
                        elif GetDistanceToPlayer() > val1:
                            """ State 8 """
                            Goto('L0')
                        elif not DoesPlayerHaveSpEffect(108800):
                            """ State 9 """
                            Goto('L0')
                        elif DoesSelfHaveSpEffect(4600) == 1:
                            """ State 10 """
                            Goto('L0')
                        """ State 2 """
                        assert GetCurrentStateElapsedTime() > 1
                        Continue('mainloop')
                    elif GetDistanceToPlayer() > val1 or DoesSelfHaveSpEffect(4600) == 1:
                        """ State 13 """
                        assert not DoesSelfHaveSpEffect(4600)
                    elif CheckActionButtonArea(z1):
                        Break('mainloop')
                elif CheckActionButtonArea(z1):
                    Break('mainloop')
        elif CheckActionButtonArea(z1):
            break
    """ State 11 """

def t112500_x5():
    """ State 0,1 """
    assert t112500_x0()
    """ State 2 """
    return 0

