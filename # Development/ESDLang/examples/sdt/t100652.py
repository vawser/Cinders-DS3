# -*- coding: utf-8 -*-
def t100652_1():
    """ State 0,1 """
    assert DoesSelfHaveSpEffect(200004) == 1 and not GetEventStatus(71008505)
    """ State 3 """
    # talk:65001200:... Oh?  You're supposed to be dead...
    assert t100652_x1(text1=65001200, z1=71008505, flag1=1, mode1=1)
    """ State 2 """

def t100652_x0():
    """ State 0,1 """
    ClearTalkProgressData()
    StopEventAnimWithoutForcingConversationEnd(0)
    ForceCloseGenericDialog()
    ForceCloseMenu()
    ReportConversationEndToHavokBehavior()
    """ State 2 """
    return 0

def t100652_x1(text1=65001200, z1=71008505, flag1=1, mode1=1):
    """ State 0,7 """
    assert t100652_x0() and CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 2 """
    SetEventState(z1, 1)
    """ State 6 """
    if not flag1:
        """ State 1 """
        # talk:65001200:... Oh?  You're supposed to be dead...
        TalkToPlayer(text1, -1, -1, flag1, 0)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    else:
        """ State 5 """
        # talk:65001200:... Oh?  You're supposed to be dead...
        TalkToPlayer(text1, -1, -1, flag1, 1)
        def WhilePaused():
            GiveSpEffectToPlayer(30700)
        assert CheckSpecificPersonTalkHasEnded(0) == 1
    """ State 4 """
    if not mode1:
        pass
    else:
        """ State 3 """
        ReportConversationEndToHavokBehavior()
    """ State 8 """
    return 0

