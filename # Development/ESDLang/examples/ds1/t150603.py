# -*- coding: utf-8 -*-
def t150603_1():
    """ State 0,6 """
    while True:
        DebugEvent('unknow')
        if CheckSelfDeath() == 1 and not GetEventStatus(1097) and GetDistanceToPlayer() <= 5:
            """ State 16 """
            Label('L0')
            # talk:13000500:Heavens...the folly of youth...
            TalkToPlayer(13000500, -1, -1)
            DisplayOneLineHelp(-1)
            ForceCloseMenu()
            if HasTalkEnded() == 1:
                continue
            elif GetDistanceToPlayer() >= 5:
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1090) == 1 and not GetEventStatus(71500021)):
            """ State 12 """
            DisplayOneLineHelp(-1)
            # talk:13000000:Mm, you seem quite lucid! A rare thing in these times.
            TalkToPlayer(13000000, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                """ State 7 """
                Label('L1')
                ClearTalkProgressData()
                def ExitPause():
                    RemoveMyAggro()
                if CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5:
                    """ State 17 """
                    # talk:13000500:Heavens...the folly of youth...
                    TalkToPlayer(13000500, -1, -1)
                    DisplayOneLineHelp(-1)
                    ForceCloseMenu()
                    if HasTalkEnded() == 1:
                        continue
                    elif GetDistanceToPlayer() >= 5:
                        Goto('L3')
                elif (IsPlayerAttacking() == 1 and GetDistanceToPlayer() <= 5 and not GetEventStatus(71500019)
                      and GetSelfHP() <= 90):
                    """ State 10 """
                    # talk:13000400:I fail to see your design,
                    TalkToPlayer(13000400, -1, -1)
                    SetEventState(71500019, 1)
                    ForceCloseMenu()
                    if CheckSelfDeath() == 1:
                        """ State 18 """
                        ClearTalkProgressData()
                        def ExitPause():
                            RemoveMyAggro()
                        assert CheckSelfDeath() == 1 and GetDistanceToPlayer() <= 5
                        Goto('L0')
                    elif HasTalkEnded() == 1:
                        """ State 11 """
                        SetEventState(71500019, 1)
                    elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                          == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer()
                          > 10):
                        Goto('L3')
                elif GetEventStatus(1096) == 1:
                    """ State 8 """
                    Label('L2')
                    ForceEndTalk(3)
                elif GetEventStatus(71500015) == 1:
                    Goto('L2')
                else:
                    Goto('L2')
                """ State 9 """
                ClearTalkDisabledState()
                RemoveMyAggro()
                continue
            elif HasTalkEnded() == 1:
                """ State 19 """
                SetEventState(71500021, 1)
                SetEventState(11500593, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1091) == 1 and not GetEventStatus(71500020)):
            """ State 13 """
            DisplayOneLineHelp(-1)
            # talk:13000100:Oh, heavens, thank you. I'm saved.
            TalkToPlayer(13000100, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                """ State 14 """
                SetEventState(71500020, 1)
                SetEventState(11500594, 1)
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        elif (not GetOneLineHelpStatus() and HasDisableTalkPeriodElapsed() == 1 and not IsTalkingToSomeoneElse()
              and not CheckSelfDeath() and not IsCharacterDisabled() and not IsClientPlayer() and GetRelativeAngleBetweenPlayerAndSelf()
              <= 45 and GetDistanceToPlayer() <= 2.5 and not GetEventStatus(1096) and not GetEventStatus(1097)
              and not GetEventStatus(71500021)):
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
        elif IsAttackedBySomeone() == 1 and not GetEventStatus(1097):
            """ State 1 """
            DisplayOneLineHelp(-1)
            Goto('L1')
        elif (IsPlayerTalkingToMe() == 1 and GetRelativeAngleBetweenPlayerAndSelf() <= 45 and GetDistanceToPlayer()
              <= 2.5 and GetOneLineHelpStatus() == 1 and GetEventStatus(1091) == 1 and GetEventStatus(71500020)
              == 1):
            """ State 15 """
            DisplayOneLineHelp(-1)
            # talk:13000200:Oh, hello. Don't mind me. Go on ahead.
            TalkToPlayer(13000200, -1, -1)
            if IsAttackedBySomeone() == 1 or CheckSelfDeath() == 1:
                Goto('L1')
            elif HasTalkEnded() == 1:
                continue
            elif (IsTalkingToSomeoneElse() or CheckSelfDeath() or IsCharacterDisabled() or IsClientPlayer()
                  == 1 or GetRelativeAngleBetweenPlayerAndSelf() > 120 or GetDistanceToPlayer() > 5):
                pass
        """ State 3 """
        Label('L3')
        ClearTalkProgressData()
        """ State 2 """
        ForceEndTalk(0)

