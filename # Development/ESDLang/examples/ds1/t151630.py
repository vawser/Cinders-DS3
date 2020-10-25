# -*- coding: utf-8 -*-
def t151630_1():
    """ State 0,3 """
    while True:
        DebugEvent('unknow')
        if (GetEventStatus(8103) == 1 and GetDistanceToPlayer() <= 15 and not GetEventStatus(8104) and
            GetEventStatus(1578) == 1 and GetEventStatus(11510700) == 1):
            """ State 6 """
            DisplayOneLineHelp(-1)
            # talk:40020300:So, here we go again!
            TalkToPlayer(40020300, -1, -1)
            SetEventState(11510598, 1)
            SetEventState(8104, 1)
            ForceCloseMenu()
            if GetDistanceToPlayer() >= 16:
                pass
            elif HasTalkEnded() == 1:
                """ State 7 """
                SetEventState(8104, 1)
                SetEventState(11510598, 1)
                continue
        elif (not GetEventStatus(8103) and GetDistanceToPlayer() <= 15 and GetEventStatus(1578) == 1
              and GetEventStatus(11510700) == 1):
            """ State 4 """
            DisplayOneLineHelp(-1)
            # talk:40020200:Well, look at you.
            TalkToPlayer(40020200, -1, -1)
            SetEventState(11510598, 1)
            SetEventState(8103, 1)
            SetEventState(8104, 1)
            ForceCloseMenu()
            if GetDistanceToPlayer() >= 16:
                pass
            elif HasTalkEnded() == 1:
                """ State 5 """
                SetEventState(8103, 1)
                SetEventState(11510598, 1)
                SetEventState(8104, 1)
                continue
        """ State 2 """
        ClearTalkProgressData()
        """ State 1 """
        ForceEndTalk(0)

