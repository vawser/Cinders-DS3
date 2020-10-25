# -*- coding: utf-8 -*-
def t131607_1():
    """ State 0,26 """
    SetEventState(71310008, 0)
    """ State 6 """
    while True:
        DebugEvent('unknow')
        if (CheckSelfDeath() == 1 and not GetEventStatus(1177) and GetDistanceToPlayer() <= 5 and not
            GetEventStatus(1180)):
            """ State 27 """
            Label('L0')
            if GetEventStatus(1180) == 1:
                """ State 17 """
                Label('L1')
                # talk:17010700:Dear Vince, dear Nico...
                TalkToPlayer(17010700, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
            elif GetEventStatus(1177) == 1:
                """ State 16 """
                Label('L2')
                # talk:17010400:Hrgkt! Eeg...
                TalkToPlayer(17010400, -1, -1)
                DisplayOneLineHelp(-1)
                ForceCloseMenu()
                if HasTalkEnded() == 1:
                    continue
                elif GetDistanceToPlayer() >= 5:
                    pass
        elif (GetEventStatus(1176) == 1 and IsPlayerDead() == 1 and not GetEventStatus(71310008) and
              GetDistanceToPlayer() <= 5 and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 180 and GetDistanceToPlayer() <= 5):
            """ State 21 """
            # talk:17010500:O piteous soul...
            TalkToPlayer(17010500, -1, -1)
            DisplayOneLineHelp(-1)
            SetEventState(71310008, 1)
            assert HasTalkEnded() == 1
            continue
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1174) == 1 and GetEventStatus(71310000)
              == 1):
            """ State 20 """
            DisplayOneLineHelp(-1)
            # talk:17010110:I am certain that both Vince and Nico are grateful to you.
            TalkToPlayer(17010110, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L3')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 29 """
                    if GetEventStatus(1180) == 1:
                        Goto('L1')
                    elif GetEventStatus(1177) == 1:
                        Goto('L2')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310007)
                      and GetSelfHP() <= 90 and GetEventStatus(1179) == 1):
                    """ State 28 """
                    # talk:17010600:Why on earth would you...
                    TalkToPlayer(17010600, -1, -1)
                    SetEventState(71310007, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 13 """
                        Label('L4')
                        SetEventState(71310007, 1)
                        """ State 11 """
                        Label('L5')
                        ClearTalkDisabledState()
                        RemoveMyAggro()
                        continue
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L7')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71310007)
                      and GetSelfHP() <= 90 and GetEventStatus(1176) == 1):
                    """ State 12 """
                    # talk:17010300:Are you a heretic, or just plain Hollow?
                    TalkToPlayer(17010300, -1, -1)
                    SetEventState(71310007, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        Goto('L4')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L7')
                elif GetEventStatus(1179) == 1:
                    """ State 10 """
                    Label('L6')
                    ForceEndTalk(3)
                    Goto('L5')
                elif GetEventStatus(1176) == 1:
                    Goto('L6')
                elif (not GetEventStatus(71310003) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71310002) == 1 and GetEventStatus(1173) == 1):
                    """ State 24 """
                    # talk:17010220:The nerve!
                    TalkToPlayer(17010220, -1, -1)
                    SetEventState(71310003, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 25 """
                        SetEventState(71310003, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L7')
                elif (not GetEventStatus(71310002) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(71310001) == 1 and GetEventStatus(1173) == 1):
                    """ State 22 """
                    # talk:17010210:Horrors!
                    TalkToPlayer(17010210, -1, -1)
                    SetEventState(71310002, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 23 """
                        SetEventState(71310002, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L7')
                elif (not GetEventStatus(71310001) and IsPlayerAttacking() == 1 and GetDistanceToPlayer()
                      <= 5 and GetEventStatus(1173) == 1):
                    """ State 8 """
                    # talk:17010200:Ow!
                    TalkToPlayer(17010200, -1, -1)
                    SetEventState(71310001, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        pass
                    elif HasTalkEnded() == 1:
                        """ State 9 """
                        SetEventState(71310001, 1)
                        Goto('L5')
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 5):
                        Goto('L7')
                elif GetEventStatus(71310003) == 1:
                    Goto('L6')
                else:
                    Goto('L6')
                """ State 18 """
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                Goto('L0')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1174) == 1 and not GetEventStatus(71310000)):
            """ State 15 """
            DisplayOneLineHelp(-1)
            # talk:17010100:You banished those two Hollows, did you?
            TalkToPlayer(17010100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L3')
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71310000, 1)
                SetEventState(11310590, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5 or
                  IsPlayerDead() == 1):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1173) == 1):
            """ State 14 """
            DisplayOneLineHelp(-1)
            # talk:17010000:You're no Hollow, are you?
            TalkToPlayer(17010000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L3')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2.5 and not GetEventStatus(1176) and not GetEventStatus(1177)
              and not GetEventStatus(1179) and not GetEventStatus(1180)):
            """ State 5 """
            # action:10010200:Talk
            DisplayOneLineHelp(10010200)
            continue
        elif (GetOneLineHelpStatus() == 1 and (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled()
              or IsClientPlayer() == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 45 or GetDistanceToPlayer()
              > 2.5)):
            """ State 4 """
            DisplayOneLineHelp(-1)
            continue
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1177) and not GetEventStatus(1180):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L3')
        """ State 3 """
        Label('L7')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

