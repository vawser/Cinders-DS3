# -*- coding: utf-8 -*-
def t181645_1():
    """ State 0,2 """
    while True:
        DebugEvent('待機')
        if (not GetEventStatus(71810093) and GetDistanceToPlayer() <= 5 and GetEventStatus(11815102)
            == 1 and GetEventStatus(11815151) == 1):
            """ State 10 """
            # talk:55000300:No, no.
            TalkToPlayer(55000300, -1, -1)
            ForceCloseMenu()
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 10):
                pass
            elif HasTalkEnded() == 1:
                """ State 11 """
                SetEventState(71810093, 1)
                continue
        elif (not GetEventStatus(71810092) and GetDistanceToPlayer() <= 5 and GetEventStatus(11815101)
              == 1 and GetEventStatus(11815151) == 1):
            """ State 1 """
            # talk:55000200:No, no.
            TalkToPlayer(55000200, -1, -1)
            ForceCloseMenu()
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 10):
                pass
            elif HasTalkEnded() == 1:
                """ State 9 """
                SetEventState(71810092, 1)
                continue
        elif (not GetEventStatus(71810091) and GetDistanceToPlayer() <= 5 and not GetEventStatus(11816100)
              and GetEventStatus(71810090) == 1 and GetEventStatus(11815151) == 1):
            """ State 5 """
            # talk:55000100:You! You!
            TalkToPlayer(55000100, -1, -1)
            ForceCloseMenu()
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 10):
                pass
            elif HasTalkEnded() == 1:
                """ State 6 """
                SetEventState(71810091, 1)
                SetEventState(11816100, 1)
                SetEventState(71810090, 0)
                continue
        elif (not GetEventStatus(71810090) and GetDistanceToPlayer() <= 5 and not GetEventStatus(11816100)
              and GetEventStatus(11815151) == 1):
            """ State 7 """
            # talk:55000000:You, you.
            TalkToPlayer(55000000, -1, -1)
            ForceCloseMenu()
            if (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 10):
                pass
            elif HasTalkEnded() == 1:
                """ State 8 """
                SetEventState(71810090, 1)
                SetEventState(11816100, 1)
                SetEventState(71810091, 0)
                continue
        """ State 3 """
        ClearTalkProgressData()
        """ State 4 """
        ForceEndTalk(0)

