# -*- coding: utf-8 -*-
def t151628_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1513) and GetDistanceToPlayer() <= 5:
            """ State 17 """
            Label('L0')
            # talk:38010600:Heavens, me...
            TalkToPlayer(38010600, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510067) == 1 and GetEventStatus(1494)
              == 1):
            """ State 30 """
            Label('L1')
            DisplayOneLineHelp(-1)
            # talk:38010320:But be warned, gallantry entails great risks.
            TalkToPlayer(38010320, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L2')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 20 """
                    # talk:38010600:Heavens, me...
                    TalkToPlayer(38010600, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L5')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71510064)
                      and GetSelfHP() <= 90):
                    """ State 12 """
                    # talk:38010500:That's your game, is it?
                    TalkToPlayer(38010500, -1, -1)
                    SetEventState(71510064, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        SetEventState(71510064, 1)
                        """ State 11 """
                        Label('L3')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L5')
                elif GetEventStatus(1512) == 1:
                    """ State 10 """
                    Label('L4')
                    ForceEndTalk(3)
                    Goto('L3')
                elif (not GetEventStatus(71510063) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510062) == 1):
                    """ State 27 """
                    # talk:38010430:Why, are you...!
                    TalkToPlayer(38010430, -1, -1)
                    SetEventState(71510063, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 28 """
                        SetEventState(71510063, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71510062) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510061) == 1):
                    """ State 25 """
                    # talk:38010420:Wha!
                    TalkToPlayer(38010420, -1, -1)
                    SetEventState(71510062, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 26 """
                        SetEventState(71510062, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71510061) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71510060) == 1):
                    """ State 23 """
                    # talk:38010410:Whoa!
                    TalkToPlayer(38010410, -1, -1)
                    SetEventState(71510061, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 24 """
                        SetEventState(71510061, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif (not GetEventStatus(71510060) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5):
                    """ State 8 """
                    # talk:38010400:Yeeg!
                    TalkToPlayer(38010400, -1, -1)
                    SetEventState(71510060, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71510060, 1)
                        Goto('L3')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L5')
                elif GetEventStatus(71510063) == 1:
                    Goto('L4')
                else:
                    Goto('L4')
                """ State 21 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and not GetEventStatus(11510590) and GetEventStatus(1494)
              == 1):
            """ State 22 """
            DisplayOneLineHelp(-1)
            # talk:38010300:Mmm...mmm...
            TalkToPlayer(38010300, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 29 """
                SetEventState(71510067, 1)
                SetEventState(11510590, 1)
                if GetDistanceToPlayer() >= 5:
                    continue
                elif not IsMenuOpen(63):
                    Goto('L1')
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510066) == 1 and GetEventStatus(1493)
              == 1):
            """ State 16 """
            DisplayOneLineHelp(-1)
            # talk:38010200:This is quite a fix...
            TalkToPlayer(38010200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2 and GetOneLineHelpStatus() == 1 and GetEventStatus(71510065) == 1 and not GetEventStatus(71510066)
              and GetEventStatus(1493) == 1):
            """ State 18 """
            DisplayOneLineHelp(-1)
            # talk:38010100:Ah, you again!
            TalkToPlayer(38010100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71510066, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetEventStatus(71510065) and GetEventStatus(1493) == 1 and IsPlayerTalkingToMe() ==
              1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer() <= 2 and GetOneLineHelpStatus()
              == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:38010000:Mmm...
            TalkToPlayer(38010000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L2')
            elif HasTalkEnded() == 1:
                """ State 15 """
                SetEventState(71510065, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 180 or GetDistanceToPlayer() > 15):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2 and not GetEventStatus(1512) and not GetEventStatus(1513)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1513):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L2')
        """ State 3 """
        Label('L5')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

