# -*- coding: utf-8 -*-
def t120631_1():
    """ State 0,31 """
    SetEventState(71200029, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if IsClientPlayer() == 1:
            """ State 32 """
            DebugEvent('クライアント用待機')
            assert not IsClientPlayer()
            continue
        elif CheckSelfDeath() == 1 and not GetEventStatus(1604) and GetDistanceToPlayer() <= 5:
            """ State 17 """
            Label('L0')
            # talk:41000600:You poor fool...
            TalkToPlayer(41000600, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (GetEventStatus(1603) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71200029) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 30 """
            # talk:41000700:You sick Hollow...
            TalkToPlayer(41000700, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71200029, 1)
            assert HasTalkEnded() == 1
            continue
        elif (GetEventStatus(1603) == 1 and not GetEventStatus(71200025) and GetDistanceToPlayer() <=
              10 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 10 and GetSelfHP() <= 40 and not GetEventStatus(71200029)):
            """ State 24 """
            DisplayOneLineHelp(-1)
            # talk:41000500:Hiyaah!
            TalkToPlayer(41000500, -1, -1)
            SetEventState(71200025, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                """ State 27 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                """ State 25 """
                SetEventState(71200025, 1)
                continue
            elif GetDistanceToPlayer() >= 15:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1600) == 1 and not GetEventStatus(71200027)
              and GetEventStatus(71200026) == 1 and GetEventStatus(11200597) == 1):
            """ State 28 """
            DisplayOneLineHelp(-1)
            # talk:41000100:Ah, did you notice that one? Sharp eyes!
            TalkToPlayer(41000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 26 """
                    # talk:41000600:You poor fool...
                    TalkToPlayer(41000600, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L4')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71200024)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:41000400:Turning on us from the very start?
                    TalkToPlayer(41000400, -1, -1)
                    SetEventState(71200024, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71200024, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L4')
                elif GetEventStatus(1603) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                elif (not GetEventStatus(71200020) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:41000300:Hrg!
                    TalkToPlayer(41000300, -1, -1)
                    SetEventState(71200020, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71200020, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71200020) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71200021)):
                    """ State 18 """
                    # talk:41000310:Mnph!
                    TalkToPlayer(41000310, -1, -1)
                    SetEventState(71200021, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 19 """
                        SetEventState(71200021, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71200021) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71200022)):
                    """ State 20 """
                    # talk:41000320:Why, you dirty...!
                    TalkToPlayer(41000320, -1, -1)
                    SetEventState(71200022, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 21 """
                        SetEventState(71200022, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif (GetEventStatus(71200022) == 1 and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and not GetEventStatus(71200023)):
                    """ State 22 """
                    # talk:41000330:Have you lost it?
                    TalkToPlayer(41000330, -1, -1)
                    SetEventState(71200023, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L1')
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71200023, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L4')
                elif GetEventStatus(71200023) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 11 """
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71200027, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1600) == 1 and GetEventStatus(71200026)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:41000200:Don't worry, now.
            TalkToPlayer(41000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(1600) == 1 and not GetEventStatus(71200026)):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:41000000:I've heard all about you.
            TalkToPlayer(41000000, -1, -1)
            SetEventState(11400582, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71200026, 1)
                SetEventState(11200595, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1603) and not GetEventStatus(1604)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1604):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        Label('L4')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

