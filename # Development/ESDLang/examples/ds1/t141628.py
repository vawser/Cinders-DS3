# -*- coding: utf-8 -*-
def t141628_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        SetUpdateDistance(25)
        if (CheckSelfDeath() == 1 and not GetEventStatus(1513) and not GetEventStatus(1506) and not GetEventStatus(1508)
            and GetDistanceToPlayer() <= 5):
            """ State 17 """
            Label('L0')
            # talk:38060800:Heavens, me...
            TalkToPlayer(38060800, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71410009) and GetEventStatus(1506)
              == 1):
            """ State 30 """
            DisplayOneLineHelp(-1)
            # talk:38060400:Hng...hng...
            TalkToPlayer(38060400, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 20 """
                    # talk:38060800:Heavens, me...
                    TalkToPlayer(38060800, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L5')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71410004)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:38060700:That's your game, is it?
                    TalkToPlayer(38060700, -1, -1)
                    SetEventState(71410004, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 21 """
                        Label('L2')
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71410004, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(1512) == 1:
                    """ State 10 """
                    Label('L3')
                    ForceEndTalk(3)
                elif (not GetEventStatus(71410003) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410002) == 1):
                    """ State 27 """
                    # talk:38060630:Why, are you...!
                    TalkToPlayer(38060630, -1, -1)
                    SetEventState(71410003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 28 """
                        SetEventState(71410003, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71410002) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410001) == 1):
                    """ State 25 """
                    # talk:38060620:Wha!
                    TalkToPlayer(38060620, -1, -1)
                    SetEventState(71410002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 26 """
                        SetEventState(71410002, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71410001) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71410000) == 1):
                    """ State 23 """
                    # talk:38060610:Whoa!
                    TalkToPlayer(38060610, -1, -1)
                    SetEventState(71410001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 24 """
                        SetEventState(71410001, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71410000) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:38060600:Yeeg!
                    TalkToPlayer(38060600, -1, -1)
                    SetEventState(71410000, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        Goto('L2')
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71410000, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif GetEventStatus(71410003) == 1:
                    Goto('L3')
                else:
                    Goto('L3')
                """ State 11 """
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71410009, 1)
                SetEventState(11410591, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410010) == 1 and GetEventStatus(1507)
              == 1):
            """ State 38 """
            DisplayOneLineHelp(-1)
            # talk:38060000:Sng...sng...
            TalkToPlayer(38060000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(71410010) and GetEventStatus(1507)
              == 1):
            """ State 37 """
            DisplayOneLineHelp(-1)
            # talk:38060500:Hng...hng...
            TalkToPlayer(38060500, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 36 """
                SetEventState(71410010, 1)
                SetEventState(11410593, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410008) == 1 and GetEventStatus(1505)
              == 1):
            """ State 22 """
            Label('L4')
            DisplayOneLineHelp(-1)
            # talk:38060320:I feel like I'm always thanking you...
            TalkToPlayer(38060320, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11410594) and GetEventStatus(1505)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:38060300:...
            TalkToPlayer(38060300, -1, -1)
            SetEventState(814, 0)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(11410594, 1)
                SetEventState(71410008, 1)
                if not IsMenuOpen(63):
                    Goto('L4')
                elif GetDistanceToPlayer() >= 5:
                    continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (not GetEventStatus(71410007) and GetEventStatus(1504) == 1 and GetDistanceToPlayer() <=
              15 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse() and not CheckSelfDeath()
              and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 15):
            """ State 34 """
            DisplayOneLineHelp(-1)
            # talk:38060220:Hrgrraaaaggh!
            TalkToPlayer(38060220, -1, -1)
            SetEventState(71410007, 1)
            ForceCloseMenu()
            if CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 35 """
                SetEventState(71410007, 1)
                continue
            elif GetDistanceToPlayer() >= 23:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71410006) == 1 and GetEventStatus(1503)
              == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:38060200:...
            TalkToPlayer(38060200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 33 """
                SetEventState(11410590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71410006) and GetEventStatus(1503) == 1 and GetOneLineHelpStatus() ==
              1 and IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetEventStatus(71410005) == 1):
            """ State 31 """
            DisplayOneLineHelp(-1)
            # talk:38060100:Mm! Oh-hoh!
            TalkToPlayer(38060100, -1, -1)
            SetEventState(814, 0)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 32 """
                SetEventState(71410006, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71410005) and GetEventStatus(1503) == 1 and IsPlayerTalkingToMe() ==
              1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus()
              == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:38060000:Sng...sng...
            TalkToPlayer(38060000, -1, -1)
            SetEventState(71410005, 1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71410005, 1)
                continue
            elif GetDistanceToPlayer() >= 23:
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1512) and not GetEventStatus(1513)
              and not GetEventStatus(1504) and not GetEventStatus(1508)):
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
        elif (IsAttackedBySomeone() == 1 and not GetEventStatus(1513) and not GetEventStatus(1506) and
              not GetEventStatus(1508) and not GetEventStatus(1504)):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        """ State 3 """
        Label('L5')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

